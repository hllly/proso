package com.proso.kafka;

import java.io.*;
import java.net.URL;

/**
 * Created by Administrator on 2016/4/22.
 */
public class FileWR {
    public static void write(String path,String content){
        try{
            FileOutputStream fos = new FileOutputStream(path,true);
            OutputStreamWriter osw = new OutputStreamWriter(fos, "utf-8");
            osw.write(content);
            osw.flush();
        }catch (Exception e){}
    }
    public static String read(String path){
        String builder="";
        try{
            FileInputStream fis = new FileInputStream(path);
            InputStreamReader isr = new InputStreamReader(fis, "utf-8");
            BufferedReader br = new BufferedReader(isr);
            String line = null;
            while ((line = br.readLine()) != null) {
                builder+=(line+"<br/>");
            }
        }catch (Exception e){}
        return builder;
    }
}
