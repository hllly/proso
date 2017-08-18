package com.proso.websocket;

import java.util.Date;

/**
 * 消息格式
 */
public class InchatMessage {
    private Date date;
    private String content;
    private String to;
    private String from;
    private String text;

    public String getTo() {
        return to;
    }

    public void setTo(String to) {
        this.to = to;
    }

    public String getFrom() {
        return from;
    }

    public void setFrom(String from) {
        this.from = from;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public InchatMessage(Date date, String content) {

        this.date = date;
        this.content = content;
    }

    public InchatMessage() {

    }
}
