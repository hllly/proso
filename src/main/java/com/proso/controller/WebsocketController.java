package com.proso.controller;


import java.io.IOException;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import com.proso.websocket.MessageUser;
import com.proso.websocket.MyWebSocketHandler;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.socket.TextMessage;
import com.google.gson.GsonBuilder;

@Controller
@RequestMapping("/msg")
public class WebsocketController {
    @Resource
    MyWebSocketHandler handler;
    Map<String, MessageUser> users = new HashMap<String, MessageUser>();

    // 模拟一些数据
    //ModelAttribute注解的方法在Controller执行前被调用
    @ModelAttribute
    public void setReqAndRes(HttpServletRequest request) {
        String to=request.getParameter("to");
        String from=request.getParameter("from");
        MessageUser u1 = new MessageUser();
        u1.setEmail(to);
        users.put(u1.getEmail(), u1);

        MessageUser u2 = new MessageUser();
        u2.setEmail(from);
        users.put(u2.getEmail(), u2);
    }


    // 用户登录
    @RequestMapping(value = "/login",method = RequestMethod.GET)
    public ModelAndView doLogin(HttpServletRequest request) {
        String email=request.getParameter("from");
        String to=request.getParameter("to");
        System.out.println("email:"+email);
        request.getSession().setAttribute("uid", email);
        request.getSession().setAttribute("name", users.get(email).getName());
        request.getSession().setAttribute("to", to);
        return new ModelAndView("redirect:talk");
    }


    // 跳转到交谈聊天页面
    @RequestMapping(value = "talk", method = RequestMethod.GET)
    public ModelAndView talk() {
        return new ModelAndView("talk");
    }

    // 跳转到发布广播页面
    @RequestMapping(value = "broadcast", method = RequestMethod.GET)
    public ModelAndView broadcast() {
        return new ModelAndView("broadcast");
    }

//    // 发布系统广播（群发）
//    @ResponseBody
//    @RequestMapping(value = "broadcast", method = RequestMethod.POST)
//    public void broadcast(String text) throws IOException {
//        InchatMessage msg = new InchatMessage();
//        msg.setDate(new Date());
//        msg.setFrom("");
//        msg.("系统广播");
//        msg.setTo("");
//        msg.setText(text);
//        handler.broadcast(new TextMessage(new GsonBuilder().setDateFormat("yyyy-MM-dd HH:mm:ss").create().toJson(msg)));
//    }
}