package com.proso.controller;

import com.alibaba.fastjson.JSON;
import com.proso.kafka.ProsoKafkaProducer;
import com.proso.mail.MailCore;
import com.proso.pojo.P_RecordDetail;
import com.proso.pojo.P_Resume;
import com.proso.service.RecordDetailService;
import com.proso.service.ResumeService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import scala.tools.cmd.gen.AnyVals;
import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.*;

/**
 * Created by Administrator on 2016/4/26.
 */
@Controller
@RequestMapping("/user")
public class AjaxController {
    @Resource
    private RecordDetailService recordDetailService;
    @Resource
    private ResumeService resumeService;
    private ProsoKafkaProducer<String> logProducer=new ProsoKafkaProducer<String>("0.0.0.0:9092","bslog");

    @RequestMapping(value = "/info",method = RequestMethod.POST)
    public void ajaxDatas(HttpServletRequest request, HttpServletResponse response) throws Exception{
        response.setContentType("text/html;charset=UTF-8");
        String jsonResult = getJSONString(request);
        System.out.println("json:"+jsonResult);
        renderData(response, jsonResult);
    }

    private String getJSONString(HttpServletRequest request) {
        List<Map<String, Object>> datas = new ArrayList<Map<String, Object>>(5);
        String email=request.getParameter("email");
        Map<String, Object> map2 = new HashMap<String, Object>();
        P_RecordDetail detail=recordDetailService.selectRecordDetailByEmail(email);
        P_Resume resume=resumeService.selectPResumeByEmail(email);
        String name=detail.getP_name();
        String sex=detail.getP_sex();
        String birth=detail.getP_birth();
        String nation=detail.getP_nation();
        String property=detail.getP_property();
        String nickname=detail.getP_nickname();
        String education=resume.getP_education();
        String graduateTime=resume.getP_graduateTime();
        String college=resume.getP_college();
        String major=resume.getP_major();
        String workTime=resume.getP_workTime();
        String skill=resume.getP_skill();
        String employer=resume.getP_employer();
        String other=resume.getP_other();
        map2.put("email", email);
        map2.put("p_name", name);
        map2.put("p_sex", sex);
        map2.put("p_birth", birth);
        map2.put("p_nation", nation);
        map2.put("p_property", property);
        map2.put("p_nickname", nickname);
        map2.put("p_education", education);
        map2.put("p_graduateTime", graduateTime);
        map2.put("p_college", college);
        map2.put("p_major", major);
        map2.put("p_workTime", workTime);
        map2.put("p_skill", skill);
        map2.put("p_employer", employer);
        map2.put("p_other", other);
        datas.add(map2);
        String jsonResult = JSON.toJSONString(datas);
        return jsonResult;
    }

    @RequestMapping(value = "/pJobFair",method = RequestMethod.POST)
    public void jobFair(HttpServletRequest request, HttpServletResponse response,ModelMap map) throws Exception{

        /*----------------------------------------------------------------------------------------------------------------------------------------------------------------*/
        logProducer.run((new Date()+"------response source:127.0.0.1:8081!request source: 127.0.0.1:8080/user/pJobFair!service type:email!\r\n"));
        /*----------------------------------------------------------------------------------------------------------------------------------------------------------------*/

        String email=request.getParameter("email");
        response.setContentType("text/html;charset=UTF-8");
        String college="主办方："+resumeService.selectUResumeByEmail(email).getU_name()+"\r\n";
        String time="时间："+request.getParameter("time")+"\r\n";
        String to="意向招聘方："+request.getParameter("to")+"\r\n";
        String lingyu="招聘领域："+request.getParameter("lingyu")+"\r\n";
        String rencai="转向人才："+request.getParameter("rencai")+"\r\n";
        String shixiang="注意事项："+request.getParameter("shixiang")+"\r\n";
        String content="详细内容："+request.getParameter("content")+"\r\n";
        String zhuti=request.getParameter("zhuti");
        String xuanyan=request.getParameter("xuanyan");
        String body=college+zhuti+xuanyan+time+to+lingyu+rencai+shixiang+content;
        String subject="院校招聘会";
        String emails=request.getParameter("emails");
        String[] emailArr=emails.split(";");
        ArrayList<String> emailList=new ArrayList<String>();
        for(String email1:emailArr)emailList.add(email1);
        MailCore mail=new MailCore();
        mail.setToEmail(emailList);
        mail.setSubject(subject);
        mail.setBody(body);
        mail.sendMail();
        renderData(response, "email:"+email);
        System.out.println("send email success");
    }

    private void renderData(HttpServletResponse response, String data) throws Exception{
        PrintWriter printWriter = null;
        try {
            printWriter = response.getWriter();
            printWriter.print(data);
        } catch (IOException ex) {
        } finally {
            if (null != printWriter) {
                printWriter.flush();
                printWriter.close();
            }
        }
    }
}
