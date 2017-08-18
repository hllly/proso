package com.proso.controller;

import com.proso.pojo.ResumeDoc;
import com.proso.service.RecordDetailService;
import com.proso.service.ResumeService;
import com.proso.service.impl.UserLoginService;
import com.proso.util.FileOper;
import com.sun.javafx.sg.prism.NGShape;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

/**
 * Created by Administrator on 2016/2/20.
 */

@Controller
@RequestMapping("/u_user")
public class U_UserController {
    @Resource
    private RecordDetailService recordDetailService;
    @Resource
    private ResumeService resumeService;
    @Resource
    private UserLoginService userLoginService;

    @RequestMapping("/toU_record")
    public String toP_record(HttpServletRequest request, ModelMap map){
        String email=request.getParameter("email");
        map.addAttribute("recordDetail",resumeService.selectUResumeByEmail(email));
        System.out.println("email:"+email);
        ResumeDoc doc=new ResumeDoc();
        String path="C:\\resume\\"+email+"_resume.doc";
        doc.setDoc(FileOper.readWord(path));
        doc.setEmail(email);
        doc.setU_recordDetail(resumeService.selectUResumeByEmail(email));
        System.out.println("record:"+doc.getU_recordDetail());
        System.out.println("doc:"+doc.getDoc());
        map.addAttribute("doc", doc);
        map.addAttribute("email", email);
        return "u_record";
    }

    @RequestMapping("/abli")
    public String toAd(HttpServletRequest request,ModelMap map){
        String email=request.getParameter("email");
        map.addAttribute("email",email);
        return "u_adBridge";
    }

    @RequestMapping("/abPerson")
    public String toAdPerson(HttpServletRequest request, ModelMap map){
        String email=request.getParameter("email");
        map.addAttribute("email",email);
        return "u_abPerson";
    }

    @RequestMapping("/abJob")
    public String toAdJob(HttpServletRequest request,ModelMap map){
        String email=request.getParameter("email");
        System.out.println("test email:"+email);
        map.addAttribute("email",email);
        return "u_abJobFair";
    }

    @RequestMapping("/toCenter")
    public String toCenter(HttpServletRequest request,ModelMap map){
        String email=request.getParameter("email");
        map.addAttribute("recordDetail",resumeService.selectUResumeByEmail(email));
        map.addAttribute("email", email);
        return "u_center";
    }
}
















