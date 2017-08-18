package com.proso.pojo;

/**
 * Created by hll on 2016/2/17.
 * 该pojo用于定义企业用户信息表结构
 * 该表只定义用户初次注册时提供的基本信息
 * 详细信息在另外的pojo里定义
 */
public class C_User implements User{
    private int c_id;
    private String c_number;
    private String c_email;
    private String c_phone;
    private String c_password;

    public int getC_id() { return c_id; }

    public void setC_id(int c_id) {
        this.c_id = c_id;
    }

    public String getC_number() {
        return c_number;
    }

    public void setC_number(String c_number) {
        this.c_number = c_number;
    }

    public String getC_email() {
        return c_email;
    }

    public void setC_email(String c_email) {
        this.c_email = c_email;
    }

    public String getC_phone() {
        return c_phone;
    }

    public void setC_phone(String c_phone) {
        this.c_phone = c_phone;
    }

    public String getC_password() {
        return c_password;
    }

    public void setC_password(String c_password) {
        this.c_password = c_password;
    }

    public C_User(String c_number, String c_email, String c_phone, String c_password) {
        this.c_number = c_number;
        this.c_email = c_email;
        this.c_phone = c_phone;
        this.c_password = c_password;
    }

    public C_User(){}
}
