package com.proso.pojo;

/**
 * Created by Administrator on 2016/4/24.
 */
public class ResumeDoc {
    private String doc;
    private String email;
    private P_Resume p_resume;
    private P_RecordDetail p_recordDetail;
    private U_RecordDetail u_recordDetail;

    public U_RecordDetail getU_recordDetail() {
        return u_recordDetail;
    }

    public void setU_recordDetail(U_RecordDetail u_recordDetail) {
        this.u_recordDetail = u_recordDetail;
    }

    public ResumeDoc() {}

    public String getDoc() {
        return doc;
    }

    public void setDoc(String doc) {
        this.doc = doc;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public P_Resume getP_resume() {
        return p_resume;
    }

    public void setP_resume(P_Resume p_resume) {
        this.p_resume = p_resume;
    }

    public P_RecordDetail getP_recordDetail() {
        return p_recordDetail;
    }

    public void setP_recordDetail(P_RecordDetail p_recordDetail) {
        this.p_recordDetail = p_recordDetail;
    }
}
