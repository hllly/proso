package com.proso.bs;

import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

/**
 * Created by Administrator on 2016/5/3.
 */
public class SqlReaderImpl implements SqlReader{
    private Statement state;
    private MysqlConnector connector;

    public SqlReaderImpl(String host,String database,String username,String password) throws Exception{
        connector=new MysqlConnector();
        this.state=connector.getStatement(host,database,username,password);
    }

    public ArrayList<Data> read(String sql)throws Exception{
        ResultSet rs = state.executeQuery(sql);
        ArrayList<Data> data=new ArrayList<Data>();
        while (rs.next()) {
            int id=rs.getInt(1);
            String field1=rs.getString(2);
            String field2=rs.getString(3);
            String field3=rs.getString(4);
            data.add(new Data(id,field1,field2,field3));
        }
        return data;
    }
}
