package com.proso.controller;

import com.proso.dao.P_UserDao;
import com.proso.kafka.ProsoKafkaProducer;
import com.proso.mail.MailCore;
import com.proso.mail.MailShow;
import com.proso.pojo.P_RecordDetail;
import com.proso.pojo.P_Resume;
import com.proso.pojo.P_User;
import com.proso.pojo.ResumeDoc;
import com.proso.redis.P_UserCache;
import com.proso.service.PwdService;
import com.proso.service.RecordDetailService;
import com.proso.service.ResumeService;
import com.proso.service.impl.UserLoginService;
import com.proso.util.FileOper;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.net.URL;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 * Created by Administrator on 2016/2/20.
 */

@Controller
@RequestMapping("/p_user")
public class P_UserController {
    @Resource
    private RecordDetailService recordDetailService;
    @Resource
    private ResumeService resumeService;
    @Resource
    private UserLoginService userLoginService;
    @Resource
    private PwdService pwdService;
    private P_UserCache p_userCache=new P_UserCache();
    private ProsoKafkaProducer<String> logProducer=new ProsoKafkaProducer<String>("0.0.0.0:9092","bslog");

    @RequestMapping("/toP_record")
    public String toP_record(HttpServletRequest request, ModelMap map){
        String email=request.getParameter("email");
        map.addAttribute("recordDetail",recordDetailService.selectRecordDetailByEmail(email));
        ResumeDoc doc=new ResumeDoc();
        String path="C:\\resume\\"+email+"_resume.doc";
        doc.setDoc(FileOper.readWord(path));
        System.out.println(doc.getDoc());
        doc.setEmail(email);
        doc.setP_resume(resumeService.selectPResumeByEmail(email));
        map.addAttribute("doc", doc);
        map.addAttribute("email", email);
        return "p_record";
    }

    @RequestMapping("/to_Person")
    public String toP_person(HttpServletRequest request, ModelMap map){
        String email=request.getParameter("email");
        map.addAttribute("recordDetail",recordDetailService.selectRecordDetailByEmail(email));
        map.addAttribute("email",email);
        return "p_person";
    }

    @RequestMapping("/to_SavePerson")
    public String toP_Saveperson(HttpServletRequest request, ModelMap map){
        String email=request.getParameter("email");
        String xingming=request.getParameter("xingming");
        String xingbie=request.getParameter("xingbie");
        String chushengriqi=request.getParameter("chushengriqi");
        String minzhu=request.getParameter("minzhu");
        String xingzhi=request.getParameter("xingzhi");
        String shenfenzheng=request.getParameter("shenfenzheng");
        String tongxindizhi=request.getParameter("tongxindizhi");
        P_RecordDetail record=new P_RecordDetail();
        record.setEmail(email);
        record.setP_IDCard(shenfenzheng);
        record.setP_address(tongxindizhi);
        record.setP_birth(chushengriqi);
        record.setP_sex(xingbie);
        record.setP_name(xingming);
        record.setP_nation(minzhu);
        record.setP_property(xingzhi);
        recordDetailService.updateRecordDetail(record);
        map.addAttribute("recordDetail",recordDetailService.selectRecordDetailByEmail(email));
        map.addAttribute("flag","成功保存.");
        map.addAttribute("email",email);
        ResumeDoc doc=new ResumeDoc();
        String path="C:\\resume\\"+email+"_resume.doc";
        System.out.println("path:"+path);
        doc.setDoc(FileOper.readWord(path));
        doc.setEmail(email);
        doc.setP_resume(resumeService.selectPResumeByEmail(email));
        map.addAttribute("doc", doc);
        return "p_record";
    }

    @RequestMapping("/to_SaveRecord")
    public String to_Saverecord(HttpServletRequest request, ModelMap map){
        String email=request.getParameter("email1");
        String xueli=request.getParameter("xueli");
        String biyeshijian=request.getParameter("biyeshijian");
        String xuexiao=request.getParameter("xuexiao");
        String jineng=request.getParameter("jineng");
        String gongzuoshijian=request.getParameter("gongzuoshijian");
        String gongsi=request.getParameter("gongsi");
        String zhize=request.getParameter("zhize");
        String zhuanye=request.getParameter("zhuanye");
        P_Resume resume=new P_Resume();
        System.out.println("education:"+xueli);
        resume.setEmail(email);
        resume.setP_college(xuexiao);
        resume.setP_education(xueli);
        resume.setP_employer(gongsi);
        resume.setP_graduateTime(biyeshijian);
        resume.setP_major(zhuanye);
        resume.setP_skill(jineng);
        resume.setP_other(zhize);
        resume.setP_workTime(gongzuoshijian);
        resumeService.updatePResume(resume);
        map.addAttribute("recordDetail",recordDetailService.selectRecordDetailByEmail(email));
        map.addAttribute("flag1","成功保存.");
        map.addAttribute("email",email);
        ResumeDoc doc=new ResumeDoc();
        String path="C:\\resume\\"+email+"_resume.doc";
        System.out.println("path:"+path);
        doc.setDoc(FileOper.readWord(path));
        doc.setEmail(email);
        doc.setP_resume(resumeService.selectPResumeByEmail(email));
        map.addAttribute("doc", doc);
        return "p_record";
    }

    @RequestMapping("/toNewFriend")
    public String toNewFriend(HttpServletRequest request,ModelMap map){
        String email=request.getParameter("email");
        String email2=request.getParameter("searchEmail");
        map.addAttribute("email",email);
        map.addAttribute("friend",userLoginService.getUserByEmail(email2,"p_user"));
        return "newfriend";
    }

    @RequestMapping("/lookAdvice")//根据公司名称，学校，专业技能推荐的好友
    public String lookAdvice(HttpServletRequest request,ModelMap map){
        String email=request.getParameter("email");
        map.addAttribute("userList",resumeService.selectAllPUser(email));
        map.addAttribute("email",email);
        return "newfriend1";
    }

    @RequestMapping("/alterPwd")
    public void alterPwd(HttpServletRequest request,ModelMap map){
        String email=request.getParameter("email");
        String pwd=request.getParameter("pwd");
        System.out.println(email+","+pwd);
        pwdService.setPNewPwd(email,pwd);
        p_userCache.setRedis("127.0.0.1",6379);
        //p_userCache.clearCache(email);
        p_userCache.flushPwdCache(email,pwd);
    }

    @RequestMapping("/applyJob")
    public void apply(HttpServletRequest request,ModelMap map)throws Exception{

        /*----------------------------------------------------------------------------------------------------------------------------------------------------------------*/
        logProducer.run((new Date()+"------response source:127.0.0.1:8081!request source: 127.0.0.1:8080/p_user/applyJob!service type:email!\r\n"));
        /*----------------------------------------------------------------------------------------------------------------------------------------------------------------*/

        String email=request.getParameter("email");
        String emailAddress="hlllly@outlook.com";
        String subject="职位申请";
        String body=null;
        P_RecordDetail record=recordDetailService.selectRecordDetailByEmail(email);
        P_Resume resume=resumeService.selectPResumeByEmail(email);
        String name="姓名："+record.getP_name()+".\r\n";
        String sex="性别："+record.getP_sex()+".\r\n";
        String birth="生日："+record.getP_birth()+".\r\n";
        String nation="民族："+record.getP_nation()+".\r\n";
        String property="性质："+record.getP_property()+".\r\n";
        String phone="电话：13896228864"+".\r\n";
        String emailAdd="邮箱："+record.getEmail()+".\r\n";
        String p_education="最高学历："+resume.getP_education()+".\r\n";//最高学历
        String p_graduateTime="毕业时间："+resume.getP_graduateTime()+".\r\n";//毕业时间
        String p_college="毕业院校："+resume.getP_college()+".\r\n";//大学
        String p_major="专业："+resume.getP_major()+".\r\n";//专业
        String p_workTime="工作年限："+resume.getP_workTime()+".\r\n";//工作经验
        String p_skill="擅长："+resume.getP_skill()+".\r\n";//专业技能
        String p_employer="前雇主："+resume.getP_employer()+".\r\n";//工作过的公司
        String p_other="工作描述："+resume.getP_other()+".\r\n";//补充
        body=name+sex+birth+nation+property+phone+emailAdd+p_education+p_graduateTime+p_college+p_major+p_workTime+p_skill+p_employer+p_other;
        ArrayList<String> toEmails=new ArrayList<String>();
        toEmails.add(emailAddress);
        MailCore mail=new MailCore();
        mail.setAttachPath("C:\\resume\\test.doc");
        mail.setToEmail(toEmails);
        mail.setSubject(subject);
        mail.setBody(body);
        mail.sendMail();
        System.out.println("send Email success.");
    }
}





















