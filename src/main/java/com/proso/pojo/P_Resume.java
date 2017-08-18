package com.proso.pojo;

/**
 * 个人简历
 */
public class P_Resume {
    private String p_IDCard;
    private String email;
    private String p_education;//最高学历
    private String p_graduateTime;//毕业时间
    private String p_college;//大学
    private String p_major;//专业
    private String p_workTime;//工作经验
    private String p_skill;//专业技能
    private String p_employer;//工作过的公司
    private String p_other;//补充
    private String p_reDocPath;//简历文件

    public P_Resume() {
    }

    public String getP_IDCard() {

        return p_IDCard;
    }

    public void setP_IDCard(String p_IDCard) {
        this.p_IDCard = p_IDCard;
    }

    public String getP_education() {
        return p_education;
    }

    public void setP_education(String p_education) {
        this.p_education = p_education;
    }

    public String getP_graduateTime() {
        return p_graduateTime;
    }

    public void setP_graduateTime(String p_graduateTime) {
        this.p_graduateTime = p_graduateTime;
    }

    public String getP_college() {
        return p_college;
    }

    public void setP_college(String p_college) {
        this.p_college = p_college;
    }

    public String getP_major() {
        return p_major;
    }

    public void setP_major(String p_major) {
        this.p_major = p_major;
    }

    public String getP_workTime() {
        return p_workTime;
    }

    public void setP_workTime(String p_workTime) {
        this.p_workTime = p_workTime;
    }

    public String getP_skill() {
        return p_skill;
    }

    public void setP_skill(String p_skill) {
        this.p_skill = p_skill;
    }

    public String getP_employer() {
        return p_employer;
    }

    public void setP_employer(String p_employer1) {
        this.p_employer = p_employer;
    }

    public String getP_other() {
        return p_other;
    }

    public void setP_other(String p_other) {
        this.p_other = p_other;
    }

    public String getEmail() {

        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }



    public String getP_reDocPath() {
        return p_reDocPath;
    }

    public void setP_reDocPath(String p_reDocPath) {
        this.p_reDocPath = p_reDocPath;
    }
}
