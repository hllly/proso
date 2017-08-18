package com.proso.bs;

import org.springframework.context.support.ClassPathXmlApplicationContext;

import java.util.ArrayList;

/**
 * Created by Administrator on 2016/5/3.
 */
public class ProTest2 {
    public static void main(String[] args) {
        ClassPathXmlApplicationContext context = new ClassPathXmlApplicationContext(new String[] { "classpath*:consumer.xml" });
        context.start();
        SqlReader readService = (SqlReader) context.getBean("readService"); // 获取bean
        try {
            ArrayList<Data> data = readService.read("select * from proso;");
            for(Data data1:data){
                System.out.println(data1.getField1());
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
