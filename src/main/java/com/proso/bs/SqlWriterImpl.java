package com.proso.bs;

import java.sql.Statement;
import java.util.ArrayList;

/**
 * Created by Administrator on 2016/5/3.
 */
public class SqlWriterImpl implements SqlWriter{
    private MysqlConnector connector;
    private Statement state;
    private String table;
    public SqlWriterImpl(String host,String database,String username,String password,String table)throws Exception{
        connector=new MysqlConnector();
        state=connector.getStatement(host, database,username,password);
        this.table=table;
    }

    public int write(ArrayList<Data> data){
        String sql;
        int result=0;
        for(Data data1:data){
            sql="insert into "+table+" values("+null+",'"+data1.getField1()+"','"+data1.getField2()+"','"+data1.getField3()+"');";
            System.out.println(sql);
            try{
                state.executeUpdate(sql);
                result+=1;
            }
            catch (Exception e){
                e.printStackTrace();
            }
        }
        return result;
    }
}




















