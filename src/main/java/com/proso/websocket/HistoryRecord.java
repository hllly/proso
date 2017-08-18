package com.proso.websocket;

/**
 * 聊天记录
 */
public class HistoryRecord {
    private String hailEmail;
    private String hailNickname;
    private String selfEmail;
    private String selfNickname;
    private InchatMessage record;

    public HistoryRecord() {
    }

    public HistoryRecord(String hailEmail, String hailNickname, String selfEmail, String selfNickname, InchatMessage record) {
        this.hailEmail = hailEmail;
        this.hailNickname = hailNickname;
        this.selfEmail = selfEmail;
        this.selfNickname = selfNickname;
        this.record = record;
    }

    public String getHailEmail() {
        return hailEmail;
    }

    public void setHailEmail(String hailEmail) {
        this.hailEmail = hailEmail;
    }

    public String getHailNickname() {
        return hailNickname;
    }

    public void setHailNickname(String hailNickname) {
        this.hailNickname = hailNickname;
    }

    public String getSelfEmail() {
        return selfEmail;
    }

    public void setSelfEmail(String selfEmail) {
        this.selfEmail = selfEmail;
    }

    public String getSelfNickname() {
        return selfNickname;
    }

    public void setSelfNickname(String selfNickname) {
        this.selfNickname = selfNickname;
    }

    public InchatMessage getRecord() {
        return record;
    }

    public void setRecord(InchatMessage record) {
        this.record = record;
    }
}
