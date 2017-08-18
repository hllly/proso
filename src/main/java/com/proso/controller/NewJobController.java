package com.proso.controller;

import com.proso.pojo.NewJob;
import com.proso.service.NewJobService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by Administrator on 2016/4/9.
 */

@Controller
@RequestMapping("/newJob")
public class NewJobController {
    @Resource
    private NewJobService newJobService;
    private List<NewJob> jobList=new ArrayList();

    @RequestMapping("/select")
    public String selectNewJob(HttpServletRequest request, ModelMap map){
        String email=request.getParameter("email");
        String jobName=request.getParameter("jobName");
        String city=request.getParameter("city");
        String industry=request.getParameter("industry");
        String id=request.getParameter("id");
        Integer IdNumber=-1;
        if(jobName==null || jobName.length()==0) jobName="%";
        if(city==null || city.length()==0) city="%";
        if(industry==null || industry.length()==0) industry="%";
        if(id==null || id.length()==0) IdNumber=-1;
        else IdNumber=Integer.parseInt(request.getParameter("id"));
        System.out.println("job:"+jobName+",city:"+city+",industry:"+industry);
        if(IdNumber != -1 ){
            map.addAttribute("jobList",newJobService.selectJobByJobId(IdNumber));
            map.addAttribute("email",email);
            return "p_newjob";
        }
        else {
            map.addAttribute("jobList",newJobService.selectJobList(industry,jobName,city));
            map.addAttribute("email",email);
            return "p_newjob";
        }
    }
}
