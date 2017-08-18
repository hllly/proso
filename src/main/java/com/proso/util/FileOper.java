package com.proso.util;

import com.proso.kafka.FileWR;
import com.proso.kafka.ProsoKafkaProducer;
import org.apache.poi.POIXMLDocument;
import org.apache.poi.POIXMLTextExtractor;
import org.apache.poi.hwpf.extractor.WordExtractor;
import org.apache.poi.openxml4j.opc.OPCPackage;
import org.apache.poi.xwpf.extractor.XWPFWordExtractor;
import org.apache.poi.xwpf.usermodel.XWPFDocument;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStreamReader;
import java.net.URL;
import java.util.Date;

/**
 * Created by Administrator on 2016/4/24.
 */
public class FileOper {
    public static String read(String path){
        String builder="";
        try{
            ClassLoader classLoader = FileOper.class.getClassLoader();
            URL resource = classLoader.getResource(path);
            FileInputStream fis = new FileInputStream(resource.getPath());
            InputStreamReader isr = new InputStreamReader(fis, "utf-8");
            BufferedReader br = new BufferedReader(isr);
            String line = null;
            while ((line = br.readLine()) != null) {
                builder+=(line+"<br/>");
            }
        }catch (Exception e){}
        return builder;
    }

    public static String readWord(String path){
         /*----------------------------------------------------------------------------------------------------------------------------------------------------------------*/
        ProsoKafkaProducer<String> logProducer=new ProsoKafkaProducer<String>("0.0.0.0:9092","bslog");
        logProducer.run((new Date()+"------response source:127.0.0.1:8082!request source: 127.0.0.1:8080/user/fileReadFromWord!service type:file read!\r\n"));
        /*----------------------------------------------------------------------------------------------------------------------------------------------------------------*/

        String text = "";
        File file = new File(path);
        if(file.getName().endsWith(".doc")){
            try {
                FileInputStream stream = new FileInputStream(file);
                WordExtractor word = new WordExtractor(stream);
                text = word.getText();
                stream.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }else if(file.getName().endsWith(".docx")){       //2007
            try {
                OPCPackage oPCPackage = POIXMLDocument.openPackage(path);
                XWPFDocument xwpf = new XWPFDocument(oPCPackage);
                POIXMLTextExtractor ex = new XWPFWordExtractor(xwpf);
                text = ex.getText();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return text;
    }

    public static void delete(String path){
//        ClassLoader classLoader = FileOper.class.getClassLoader();
//        URL resource = classLoader.getResource(path);
//        String filePath=resource.getPath();
        File file = new File(path);
        file.deleteOnExit();
    }

    public static File create(String path){
//        ClassLoader classLoader = FileOper.class.getClassLoader();
//        URL resource = classLoader.getResource(path);
//        String filePath=resource.getPath();
        File file = new File(path);
        return file;
    }

    public static void main(String[] args){
        System.out.println(FileOper.readWord("resume/111_resume.doc"));
    }
}
