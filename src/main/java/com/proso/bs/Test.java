package com.proso.bs;

import java.util.ArrayList;

/**
 * Created by Administrator on 2016/5/3.
 */
public class Test {
    public static void main(String[] args) throws Exception{
        String host="127.0.0.1:3306";
        String username="root";
        String password="QWE@qwe123!!";
        String database="test";
        String table="proso";
        SqlWriterImpl writer=new SqlWriterImpl(host,database,username,password,table);
        ArrayList<Data> data=new ArrayList<Data>();
        data.add(new Data("test1","test2","test3"));
        System.out.println("result:"+writer.write(data));
    }
}
