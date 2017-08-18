package com.proso.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.*;
import java.util.Properties;

/**
 * Created by Administrator on 2016/5/4.
 */
@Controller
@RequestMapping("/bs")
public class BSConctroller {
    @RequestMapping("/show")
    public String show(HttpServletRequest request, ModelMap map){
        return "bs";
    }

    @RequestMapping("/save")
    public  void save(HttpServletRequest request, HttpServletResponse response,ModelMap map)throws Exception{
        String reader=request.getParameter("read-node");
        String writer=request.getParameter("write-node");
        String backup=request.getParameter("backup-node");
        String fail=request.getParameter("fail-node");
        Properties pps = new Properties();
        InputStream in = new BufferedInputStream(new FileInputStream("C:\\proper\\bs.properties"));
        OutputStream out = new FileOutputStream("C:\\proper\\bs.properties");
        pps.load(in);
        pps.setProperty("reader",reader);
        pps.setProperty("writer",writer);
        pps.setProperty("backup",backup);
        pps.setProperty("fail",fail);
        pps.store(out,null);
    }

    @RequestMapping("/read")
    public  void read(HttpServletRequest request, HttpServletResponse response,ModelMap map)throws Exception{
        Properties pps = new Properties();
        InputStream in = new BufferedInputStream(new FileInputStream("C:\\proper\\bs.properties"));
        OutputStream out = new FileOutputStream("C:\\proper\\bs.properties");
        pps.load(in);
        String reader=pps.getProperty("read-node");
    }
}



























