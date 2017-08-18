package com.proso.controller;

import com.proso.service.ResumeService;
import com.proso.service.impl.InchatService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import scala.collection.parallel.immutable.ParRange;
import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

/**
 * Created by Administrator on 2016/2/20.
 */

@Controller
@RequestMapping("/c_user")
public class C_UserController {
    @Resource
    private InchatService inchatService;
    @Resource
    private ResumeService resumeService;

    @RequestMapping("/toC_record")
    public ModelAndView toC_record(HttpServletRequest request){
        String email=request.getParameter("email");
        return new ModelAndView("c_record","email",email);
    }

    @RequestMapping("/toJob")
    public String toJob(HttpServletRequest request, ModelMap map){
        String email=request.getParameter("email");
        map.addAttribute("email",email);
        return "c_job";
    }

    @RequestMapping("/employ")
    public String toEmploy(HttpServletRequest request,ModelMap map){
        return "c_employ";
    }

    @RequestMapping("/toCRecord")
    public String toCRecord(HttpServletRequest request,ModelMap map){
        String email=request.getParameter("email");
        map.addAttribute("email",email);
        map.addAttribute("record",resumeService.selectCRecordDetailByEmail(email));
        return "c_record";
    }

    @RequestMapping("/toCCenter")
    public String toCCenter(HttpServletRequest request,ModelMap map){
        String email=request.getParameter("email");
        map.addAttribute("email",email);
        map.addAttribute("record",resumeService.selectCRecordDetailByEmail(email));
        return "c_center";
    }
}



















