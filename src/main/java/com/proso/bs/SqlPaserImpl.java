package com.proso.bs;

/**
 * Created by Administrator on 2016/5/3.
 */
public class SqlPaserImpl implements SqlParser{
    public String parse(String sql){
        String temp=sql.split(" ")[0];
        if(temp.equals("select")) return "read";
        else return "write";
    }
}
