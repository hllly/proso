package com.proso.pojo;

/**
 * Created by hll on 2016/2/17.
 * 该pojo用于定义校方用户信息表结构
 * 该表只定义用户初次注册时提供的基本信息
 * 详细信息在另外的pojo里定义
 */
public class U_User implements User{
    private int u_id;
    private String u_number;

    public U_User(String u_number, String u_email, String u_phone, String u_password) {
        this.u_number = u_number;
        this.u_email = u_email;
        this.u_phone = u_phone;
        this.u_password = u_password;
    }

    public U_User(){}

    public int getU_id() {
        return u_id;
    }

    public void setU_id(int u_id) {
        this.u_id = u_id;
    }

    public String getU_number() {
        return u_number;
    }

    public void setU_number(String u_number) {
        this.u_number = u_number;
    }

    public String getU_email() {
        return u_email;
    }

    public void setU_email(String u_email) {
        this.u_email = u_email;
    }

    public String getU_phone() {
        return u_phone;
    }

    public void setU_phone(String u_phone) {
        this.u_phone = u_phone;
    }

    public String getU_password() {
        return u_password;
    }

    public void setU_password(String u_password) {
        this.u_password = u_password;
    }

    private String u_email;
    private String u_phone;
    private String u_password;
}
