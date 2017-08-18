package com.proso.mail;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import com.jacob.activeX.ActiveXComponent;
import com.jacob.com.Dispatch;


public class MailTest {
    public static void main1(String[] args) throws Exception {
//        ActiveXComponent axOutlook = new ActiveXComponent("Outlook.Application");
//        Dispatch mailItem = Dispatch.call(axOutlook, "CreateItem", 0).getDispatch();
//        Dispatch inspector = Dispatch.get(mailItem, "GetInspector").getDispatch();
//
//        //收件人
//        Dispatch recipients = Dispatch.call(mailItem, "Recipients").getDispatch();
//        Dispatch.call(recipients, "Add", "hlllly@outlook.com");
//        //邮件主题
//        Dispatch.put(mailItem, "Subject", "Test5!");
//        String body = "<html><body><div style='color:red;'>This is a Test !</div></body></html>";
//        Dispatch.put(mailItem, "Body", body);
//        Dispatch.call(mailItem, "Display");
//        Dispatch.call(mailItem, "Send");
        MailCore mail=new MailCore();
        mail.getToEmail().add("hlllly@outlook.com");
        mail.getCc().add("hlllly@outlook.com");
        mail.setSubject("hello world.");
        mail.setBody("mail send success.");
        mail.sendMail();
    }
}
