package com.proso.mail;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.util.ArrayList;

import com.jacob.activeX.ActiveXComponent;
import com.jacob.com.Dispatch;


public class MailCore {
    private ArrayList<String> toEmail=new ArrayList<String>();
    private ArrayList<String> cc=new ArrayList<String>();
    private String subject=null;
    private String body=null;
    private String attachPath="I:\\bishe\\test.txt";

    public MailCore() {}

    public ArrayList<String> getToEmail() {
        return toEmail;
    }

    public void setToEmail(ArrayList<String> toEmail) {
        this.toEmail = toEmail;
    }

    public ArrayList<String> getCc() {
        return cc;
    }

    public void setCc(ArrayList<String> cc) {
        this.cc = cc;
    }

    public String getSubject() {
        return subject;
    }

    public void setSubject(String subject) {
        this.subject = subject;
    }

    public String getBody() {
        return body;
    }

    public void setBody(String body) {
        this.body = body;
    }

    public String getAttachPath() {
        return attachPath;
    }

    public void setAttachPath(String attachPath) {
        this.attachPath = attachPath;
    }

    public void sendMail() throws Exception {
        ActiveXComponent axOutlook = new ActiveXComponent("Outlook.Application");
        Dispatch mailItem = Dispatch.call(axOutlook, "CreateItem", 0).getDispatch();
        Dispatch inspector = Dispatch.get(mailItem, "GetInspector").getDispatch();

        //收件人
        Dispatch recipients = Dispatch.call(mailItem, "Recipients").getDispatch();
        for(int i=0;i<toEmail.size();i++){
            Dispatch.call(recipients, "Add", toEmail.get(i));
        }

        //邮件主题
        Dispatch.put(mailItem, "Subject", subject);

        //CC
        if(cc.size()>0 && cc!=null){
            for(int i=0;i<toEmail.size();i++){
                Dispatch.put(mailItem, "CC", cc.get(i));
            }
        }
        //邮件正文
        Dispatch.put(mailItem, "Body", body);

        //附件
        Dispatch attachments = Dispatch.get(mailItem, "Attachments").toDispatch();
        Dispatch.call(attachments, "Add" , attachPath);

        //显示新邮件窗口
        Dispatch.call(mailItem, "Display");
        Dispatch.call(mailItem, "Send");
    }
}
