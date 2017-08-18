package com.proso.pojo;

/**
 * Created by hll on 2016/2/17.
 * 该pojo用于定义个人用户信息表结构
 * 该表只定义用户初次注册时提供的基本信息
 * 详细信息在另外的pojo里定义
 */
public class P_User implements User{
    private int p_id;
    private String p_email;
    private String p_phone;
    private String p_password;

    public P_User(String p_email, String p_phone, String p_password) {
        this.p_email = p_email;
        this.p_phone = p_phone;
        this.p_password = p_password;
    }

    public P_User(){}

    public int getP_id() {

        return p_id;
    }

    public void setP_id(int p_id) {
        this.p_id = p_id;
    }

    public String getP_email() {
        return p_email;
    }

    public void setP_email(String p_email) {
        this.p_email = p_email;
    }

    public String getP_phone() {
        return p_phone;
    }

    public void setP_phone(String p_phone) {
        this.p_phone = p_phone;
    }

    public String getP_password() {
        return p_password;
    }

    public void setP_password(String p_password) {
        this.p_password = p_password;
    }
}
