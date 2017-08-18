package com.proso.bs;

import org.springframework.context.support.ClassPathXmlApplicationContext;

/**
 * Created by Administrator on 2016/5/3.
 */
public class ProTest1 {
    public static void main(String[] args) throws Exception {
        ClassPathXmlApplicationContext context = new ClassPathXmlApplicationContext(new String[] {"classpath*:reader.xml"});
        context.start();
        System.out.println(" reader running ");
        System.in.read(); // 按任意键退出
    }
}
