package com.proso.websocket;


/**
 * 好友列表
 */
public class HailRelation {
    public int getHr_id() {
        return hr_id;
    }

    public void setHr_id(int hr_id) {
        this.hr_id = hr_id;
    }
    private int hr_id;
    private String hailEmail;
    private String selfEmail;

    public HailRelation() {
    }

    public HailRelation(int hr_id,String hailEmail, String selfEmail) {
        this.hailEmail = hailEmail;
        this.selfEmail = selfEmail;
        this.hr_id=hr_id;
    }

    public String getHailEmail() {
        return hailEmail;
    }

    public void setHailEmail(String hailEmail) {
        this.hailEmail = hailEmail;
    }

    public String getSelfEmail() {
        return selfEmail;
    }

    public void setSelfEmail(String selfEmail) {
        this.selfEmail = selfEmail;
    }
}
