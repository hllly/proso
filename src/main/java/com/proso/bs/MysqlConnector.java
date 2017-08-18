package com.proso.bs;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;


/**
 * Created by Administrator on 2016/5/3.
 */
public class MysqlConnector {
    public Statement getStatement(String host,String database,String username,String password) throws Exception{
        Statement stmt = null;
        String url = "jdbc:mysql://"+host+"/"+database+"?user="+username+"&password="+password+"&useUnicode=true&characterEncoding=UTF8";
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection(url);
            return conn.createStatement();
        }catch (Exception e){
            e.printStackTrace();
            return null;
        }
    }

    public Connection getConnection(String host,String database,String username,String password) throws Exception{
        Statement stmt = null;
        String url = "jdbc:mysql://"+host+"/"+database+"?user="+username+"&password="+password+"&useUnicode=true&characterEncoding=UTF8";
        System.out.println(url);
        try {
            Class.forName("com.mysql.jdbc.Driver");
            return DriverManager.getConnection(url);
        }catch (Exception e){
            e.printStackTrace();
            return null;
        }
    }
}
