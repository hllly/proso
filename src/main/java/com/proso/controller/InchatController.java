package com.proso.controller;

import com.proso.pojo.User;
import com.proso.service.impl.InchatService;
import com.proso.websocket.HailRelation;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/inChat")
public class InchatController {
    @Resource
    private InchatService inchatService;

    private Map<String,User> userList=new HashMap<String, User>();
    private List<String> hailEmailList=new ArrayList<String>();

    @ModelAttribute
    public void setUserList(){
    }
    @ModelAttribute
    public void setHailEmailList(){
    }

    @RequestMapping("/toP_CHF/{email}")
    public String toCHF(@PathVariable("email") String email, ModelMap map, HttpServletRequest request){
        map.addAttribute("email",email);
        map.addAttribute("hailEmailList",inchatService.getHailEmailList(email));
        return "p_chf";
    }

    @RequestMapping("/toU_CHF/{email}")
    public String toUCHF(@PathVariable("email") String email, ModelMap map, HttpServletRequest request){
        map.addAttribute("email",email);
        map.addAttribute("hailEmailList",inchatService.getHailEmailList(email));
        return "p_chf";
    }

    @RequestMapping("/toC_CHF/{email}")
    public String toCCHF(@PathVariable("email") String email, ModelMap map, HttpServletRequest request){
        map.addAttribute("email",email);
        map.addAttribute("hailEmailList",inchatService.getHailEmailList(email));
        return "c_chf";
    }

    @RequestMapping("/addHailRelation")
    public void addHail(HttpServletRequest request,ModelMap map){
        String hailEmail=request.getParameter("hailEmail");
        String selfEmail=request.getParameter("selfEmail");
        System.out.println("hello:"+hailEmail+selfEmail);
        HashMap para=new HashMap();
        para.put("hailEmail",hailEmail);
        para.put("selfEmail",selfEmail);
        inchatService.addHailRelation(para);
    }

    @RequestMapping("/deleteHailRelation")
    public void deleteHail(HttpServletRequest request,ModelMap map){
        String hailEmail=request.getParameter("hailEmail");
        String selfEmail=request.getParameter("selfEmail");
        HashMap<String,String> para=new HashMap<String, String>();
        para.put("hailEmail",hailEmail);
        para.put("selfEmail",selfEmail);
        inchatService.deleteHailRelation(para);
    }
}















