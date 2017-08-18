package com.proso.controller;

import com.proso.kafka.ProsoKafkaProducer;
import com.proso.pojo.ResumeDoc;
import com.proso.service.RecordDetailService;
import com.proso.service.ResumeService;
import com.proso.util.FileOper;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.util.Date;

/**
 * Created by Administrator on 2016/4/24.
 */
@Controller
@RequestMapping("/user")
public class FileController {
    @Resource
    private RecordDetailService recordDetailService;
    @Resource
    private ResumeService resumeService;
    private ProsoKafkaProducer<String> logProducer=new ProsoKafkaProducer<String>("0.0.0.0:9092","");

    @RequestMapping("/fileUpLoad")
    public String upload(@RequestParam(value = "file", required = false) MultipartFile file, HttpServletRequest request, ModelMap map) {

        /*----------------------------------------------------------------------------------------------------------------------------------------------------------------*/
        logProducer.run((new Date()+"------response source:127.0.0.1:8082!request source: 127.0.0.1:8080/user/fileUpLoad!service type:file upload!\r\n"));
        /*----------------------------------------------------------------------------------------------------------------------------------------------------------------*/

        String path = "C:\\resume\\";
        String email=request.getParameter("email2");
        String fileName = email+"_resume.doc";
        FileOper.delete(path+fileName);
        File file1=FileOper.create(path+fileName);
        try {
            file.transferTo(file1);
        } catch (Exception e) {
            e.printStackTrace();
        }
        map.addAttribute("fileUrl", path+fileName);
        map.addAttribute("flag2","简历上传成功.");
        map.addAttribute("recordDetail",recordDetailService.selectRecordDetailByEmail(email));
        map.addAttribute("email",email);
        ResumeDoc doc=new ResumeDoc();
        doc.setDoc(FileOper.readWord(path+fileName));
        doc.setEmail(email);
        doc.setP_resume(resumeService.selectPResumeByEmail(email));
        map.addAttribute("doc", doc);
        System.out.println("path:"+path+fileName);
        System.out.println("doc:"+doc.getDoc());
        return "p_record";
    }

    @RequestMapping("/fileUpLoadU")
    public String uploadU(@RequestParam(value = "file", required = false) MultipartFile file, HttpServletRequest request, ModelMap map) {
        String path = "C:\\resume\\";
        String email=request.getParameter("email2");
        String fileName = email+"_resume.doc";
        FileOper.delete(path+fileName);
        File file1=FileOper.create(path+fileName);
        try {
            file.transferTo(file1);
        } catch (Exception e) {
            e.printStackTrace();
        }
        map.addAttribute("fileUrl", path+fileName);
        map.addAttribute("flag2","简历上传成功.");
        map.addAttribute("recordDetail",resumeService.selectUResumeByEmail(email));
        map.addAttribute("email",email);
        ResumeDoc doc=new ResumeDoc();
        doc.setDoc(FileOper.readWord(path+fileName));
        doc.setEmail(email);
        doc.setP_resume(resumeService.selectPResumeByEmail(email));
        map.addAttribute("doc", doc);
        System.out.println("path:"+path+fileName);
        System.out.println("doc:"+doc.getDoc());
        return "u_record";
    }

    @RequestMapping("/fileUpLoadC")
    public String uploadC(@RequestParam(value = "file", required = false) MultipartFile file, HttpServletRequest request, ModelMap map) {

         /*----------------------------------------------------------------------------------------------------------------------------------------------------------------*/
        logProducer.run((new Date()+"------response source:127.0.0.1:8082!request source: 127.0.0.1:8080/user/fileUpLoad!service type:file upload!\r\n"));
        /*----------------------------------------------------------------------------------------------------------------------------------------------------------------*/

        String path = "C:\\resume\\";
        String email=request.getParameter("email2");
        String fileName = email+"_resume.doc";
        FileOper.delete(path+fileName);
        File file1=FileOper.create(path+fileName);
        try {
            file.transferTo(file1);
        } catch (Exception e) {
            e.printStackTrace();
        }
        map.addAttribute("fileUrl", path+fileName);
        map.addAttribute("flag2","文档上传成功.");
        map.addAttribute("email",email);
        map.addAttribute("record",resumeService.selectCRecordDetailByEmail(email));
        ResumeDoc doc=new ResumeDoc();
        doc.setDoc(FileOper.readWord(path+fileName));
        doc.setEmail(email);
        doc.setP_resume(resumeService.selectPResumeByEmail(email));
        map.addAttribute("doc", doc);
        System.out.println("path:"+path+fileName);
        System.out.println("doc:"+doc.getDoc());
        return "c_record";
    }
}
