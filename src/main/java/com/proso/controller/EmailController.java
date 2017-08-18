package com.proso.controller;

import com.proso.kafka.ProsoKafkaProducer;
import com.proso.mail.MailCore;
import com.proso.mail.MailShow;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import javax.servlet.http.HttpServletRequest;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Date;

/**
 * Created by Administrator on 2016/4/4.
 */
@Controller
@RequestMapping("/email")
public class EmailController {
    private String email;
    private ArrayList<MailShow> mailList=new ArrayList<MailShow>();
    private ProsoKafkaProducer<String> logProducer=new ProsoKafkaProducer<String>("0.0.0.0:9092","bslog");

    @RequestMapping(value = "/person",method = RequestMethod.GET)
    public String toPEmail(HttpServletRequest request,ModelMap map){

        /*----------------------------------------------------------------------------------------------------------------------------------------------------------------*/
        logProducer.run((new Date()+"------response source:127.0.0.1:8081!request source: 127.0.0.1:8080/email/person!service type:email!\r\n"));
        /*----------------------------------------------------------------------------------------------------------------------------------------------------------------*/

        this.email=request.getParameter("email");
        map.addAttribute("email",email);
        map.addAttribute("flag","0");//表示初次请求
        return "p_email";
    }

    @RequestMapping(value = "/university",method = RequestMethod.GET)
    public String toUEmail(HttpServletRequest request,ModelMap map){

        /*----------------------------------------------------------------------------------------------------------------------------------------------------------------*/
        logProducer.run((new Date()+"------response source:127.0.0.1:8081!request source: 127.0.0.1:8080/email/university!service type:email!\r\n"));
        /*----------------------------------------------------------------------------------------------------------------------------------------------------------------*/

        this.email=request.getParameter("email");
        map.addAttribute("email",email);
        map.addAttribute("flag","0");//表示初次请求
        return "u_email";
    }

    @RequestMapping(value = "/company",method = RequestMethod.GET)
    public String toCEmail(HttpServletRequest request,ModelMap map){

        /*----------------------------------------------------------------------------------------------------------------------------------------------------------------*/
        logProducer.run((new Date()+"------response source:127.0.0.1:8081!request source: 127.0.0.1:8080/email/company!service type:email!\r\n"));
        /*----------------------------------------------------------------------------------------------------------------------------------------------------------------*/

        this.email=request.getParameter("email");
        map.addAttribute("email",email);
        map.addAttribute("flag","0");//表示初次请求
        return "u_email";
    }

    @RequestMapping("/sendEmail")
    public String sendEmail(HttpServletRequest request,ModelMap map) throws Exception{

        /*----------------------------------------------------------------------------------------------------------------------------------------------------------------*/
        logProducer.run((new Date()+"------response source:127.0.0.1:8081!request source: 127.0.0.1:8080/email/sendEmail!service type:email!\r\n"));
        /*----------------------------------------------------------------------------------------------------------------------------------------------------------------*/

        System.out.println("send email.");
        String toEmailList=request.getParameter("toEmail");
        String ccEmailList=request.getParameter("toCC");
        ArrayList<String> toEmails=new ArrayList<String>();
        ArrayList<String> ccEmails=new ArrayList<String>();
        String[] toEmailArray=null;
        String[] ccEmailArray=null;
        if(toEmailList!=null){ toEmailArray=toEmailList.split(";"); }
        if(ccEmailList!=null){ ccEmailArray=ccEmailList.split(";"); }
        for(String toEmail : toEmailArray){ toEmails.add(toEmail); }
        for(String ccEmail : ccEmailArray){ ccEmails.add(ccEmail); }
        String subject=request.getParameter("subject");
        String body=request.getParameter("body");
        String attachPath=request.getParameter("attachPath");
        MailCore mail=new MailCore();
        mail.setToEmail(toEmails);
        mail.setCc(ccEmails);
        mail.setSubject(subject);
        mail.setBody(body);
        mail.sendMail();
        map.addAttribute("result","邮件已发送！");
        map.addAttribute("flag","1");//表示后续请求
        map.addAttribute("email",email);
        System.out.println("send Email success.");
        MailShow mailShow=new MailShow("hlllly@outlook.com","QWE@qwe123");
        mailList=mailShow.getEmailList();
        return "p_email";
    }

    @RequestMapping("/showEmail")
    public String showEmail(ModelMap map) throws Exception{
        System.out.println("showEmail");
        map.addAttribute("email",email);
        ArrayList<MailShow> readMailList=new ArrayList<MailShow>();
        ArrayList<MailShow> noReadMailList=new ArrayList<MailShow>();
        for(MailShow mail:mailList){
            if(mail.isNew()){ noReadMailList.add(mail); }
            else readMailList.add(mail);
        }

        map.addAttribute("readEmailList",readMailList);
        map.addAttribute("noReadEmailList",noReadMailList);
        map.addAttribute("flag","0");
        return "p_emailShow";
    }
}




















