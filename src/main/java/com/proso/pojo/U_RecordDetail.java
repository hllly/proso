package com.proso.pojo;

import java.util.HashMap;

/**
 * 院校详细信息
 */
public class U_RecordDetail {
    private String u_number;//机构代码
    private String u_email;
    private String u_name;//院校名称
    private String u_address;//院校地址
    private String u_property;//院校性质，本科或专科
    private String u_class;//985.211，普通
    private String u_birth;//院校创建时间
    private String u_city;//所在城市
    private String u_super;//院校主管部门
    private String u_other;//其他

    public U_RecordDetail() {
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

    public String getU_name() {
        return u_name;
    }

    public void setU_name(String u_name) {
        this.u_name = u_name;
    }

    public String getU_address() {
        return u_address;
    }

    public void setU_address(String u_address) {
        this.u_address = u_address;
    }

    public String getU_property() {
        return u_property;
    }

    public void setU_property(String u_property) {
        this.u_property = u_property;
    }

    public String getU_class() {
        return u_class;
    }

    public void setU_class(String u_class) {
        this.u_class = u_class;
    }

    public String getU_birth() {
        return u_birth;
    }

    public void setU_birth(String u_birth) {
        this.u_birth = u_birth;
    }

    public String getU_city() {
        return u_city;
    }

    public void setU_city(String u_city) {
        this.u_city = u_city;
    }

    public String getU_super() {
        return u_super;
    }

    public void setU_super(String u_super) {
        this.u_super = u_super;
    }

    public String getU_other() {
        return u_other;
    }

    public void setU_other(String other) {
        this.u_other = other;
    }
}
