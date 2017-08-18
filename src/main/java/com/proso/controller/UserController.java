package com.proso.controller;

import com.proso.kafka.ProsoKafkaProducer;
import com.proso.pojo.C_User;
import com.proso.pojo.P_User;
import com.proso.pojo.U_User;
import com.proso.redis.C_UserCache;
import com.proso.redis.P_UserCache;
import com.proso.redis.U_UserCache;
import com.proso.service.impl.UserLoginService;
import com.proso.service.impl.UserRegisterService;
import com.proso.util.Assister;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.Date;


@Controller
@RequestMapping("/user")
public class UserController {
    @Resource
    private UserLoginService userLoginService;
    @Resource
    private UserRegisterService userRegisterService;
    @Resource
    private C_UserCache c_userCache;
    @Resource
    private U_UserCache u_userCache;
    @Resource
    private P_UserCache p_userCache;
    private ProsoKafkaProducer prosoKafkaProducer=new ProsoKafkaProducer("localhost:9092","loginLog");
    private ProsoKafkaProducer<String> logProducer=new ProsoKafkaProducer<String>("localhost:9092","bslog");
    private static Logger logger = LogManager.getLogger(UserController.class);

    @RequestMapping("/login")
    public String login(HttpServletRequest request, HttpSession httpSession, ModelMap map){

         /*----------------------------------------------------------------------------------------------------------------------------------------------------------------*/
        logProducer.run((new Date()+"------response source:127.0.0.1:8080!request source: 127.0.0.1:8080/user/login!service type:user login!\r\n"));
        /*----------------------------------------------------------------------------------------------------------------------------------------------------------------*/

        String email=request.getParameter("email");
        String password=request.getParameter("password");

        System.out.println("email:"+email);
        System.out.println("pwd:"+password);

        String type=request.getParameter("type");
        if(type.equals("校方")){
            U_User user;
            u_userCache=new U_UserCache();
            u_userCache.setRedis("localhost",6379);
            user=u_userCache.selectUserByEmail(email);
            if( user == null){
                user=(U_User) userLoginService.getUserByEmail(email,"u_user");
                u_userCache.saveCache(user);
                prosoKafkaProducer.run((new Date()+"------data source:MySQL. user:"+email+".\r\n"));
                prosoKafkaProducer.run((new Date()+"------data cached in Redis. user:"+email+".\r\n"));
            }
            else {
                prosoKafkaProducer.run((new Date()+"------data source:Redis. user:"+email+".\r\n"));
            }
            if(user==null){return "index";}
            if(user.getU_password().equals(password)) {
                httpSession.setAttribute(email,type);
                map.put("email",email);
                return "u_index";
            }
            else {return "index";}
        }
        else if(type.equals("企业")){
            C_User user;
            c_userCache=new C_UserCache();
            c_userCache.setRedis("localhost",6379);
            user=c_userCache.selectUserByEmail(email);
            if( user == null){
                user=(C_User) userLoginService.getUserByEmail(email,"c_user");
                c_userCache.saveCache(user);
                prosoKafkaProducer.run((new Date()+"------data source:MySQL. user:"+email+".\r\n"));
                prosoKafkaProducer.run((new Date()+"------data cached in Redis. user:"+email+".\r\n"));
            }
            else {
                prosoKafkaProducer.run((new Date()+"------data source:Redis. user:"+email+".\r\n"));
            }
            if(user==null){return "index";}
            if(user.getC_password().equals(password)) {
                httpSession.setAttribute(email,type);
                map.put("email",email);
                prosoKafkaProducer.run((new Date()+"------person login successful. user:"+email+".\r\n"));
                return "c_index";
            }
            else {return "index";}
        }
        else {
            P_User user;
            p_userCache=new P_UserCache();
            p_userCache.setRedis("localhost",6379);
            user=p_userCache.selectUserByEmail(email);
            if( user == null){
                System.out.println("cache");
                user=(P_User) userLoginService.getUserByEmail(email,"p_user");
                p_userCache.saveCache(user);
                prosoKafkaProducer.run((new Date()+"------data source:MySQL. user:"+email+".\r\n"));
                prosoKafkaProducer.run((new Date()+"------data cached in Redis. user:"+email+".\r\n"));
            }
            else {
                prosoKafkaProducer.run((new Date()+"------data source:Redis. user:"+email+".\r\n"));
            }
            if(user==null){
                return "index";
            }
            if(user.getP_password().equals(password)) {
                prosoKafkaProducer.run((new Date()+"------person login successful. user:"+email+".\r\n"));
                httpSession.setAttribute(email,type);
                System.out.println("pwd:"+user.getP_password());
                map.addAttribute("email",email);
                return "p_index";
            }
            else {return "index";}
        }
    }

    @RequestMapping("/toRegister")
    public String toRegister(){
        return "register";
    }

    @RequestMapping("/register")
    public String register(HttpServletRequest request){

        /*----------------------------------------------------------------------------------------------------------------------------------------------------------------*/
        logProducer.run((new Date()+"------response source:127.0.0.1:8080!request source: 127.0.0.1:8080/user/register!service type:user register!\r\n"));
        /*----------------------------------------------------------------------------------------------------------------------------------------------------------------*/

        String email=request.getParameter("email");
        String phone=request.getParameter("phone");
        String c_number=request.getParameter("c_number");
        String u_number=request.getParameter("u_number");
        String password=request.getParameter("password");
        String userName=request.getParameter("userName");
        String nickname=request.getParameter("nickname");
        if(Assister.isEmptyOrNull(c_number) && Assister.isEmptyOrNull(u_number)){
            userRegisterService.addUser(new P_User(email,phone,password),"p_user");
            return "p_index";
        }
        else if(!Assister.isEmptyOrNull(c_number)){
            userRegisterService.addUser(new C_User(c_number,email,phone,password),"c_user");
            return "c_index";
        }
        else if(!Assister.isEmptyOrNull(u_number)){
            userRegisterService.addUser(new U_User(u_number,email,phone,password),"u_user");
            return "u_index";
        }
        else return "register";
    }


    @RequestMapping("/index")
    public String toIndex(){
        return "index";
    }

    @RequestMapping("pindex")
    public String toPindex(HttpServletRequest request,ModelMap map){
        String email=request.getParameter("email");
        map.addAttribute("email",email);
        return "p_index";
    }

    @RequestMapping("cindex")
    public String toCindex(HttpServletRequest request,ModelMap map){
        String email=request.getParameter("email");
        map.addAttribute("email",email);
        return "c_index";
    }

    @RequestMapping("uindex")
    public String toUindex(HttpServletRequest request,ModelMap map){
        String email=request.getParameter("email");
        map.addAttribute("email",email);
        return "u_index";
    }
}
