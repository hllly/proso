package com.proso.dao;

import com.proso.pojo.P_RecordDetail;
import com.proso.pojo.P_Resume;
import com.proso.pojo.P_User;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by Administrator on 2016/4/24.
 */
@Repository
public interface P_ResumeDao {
    public P_Resume selectPResumeByEmail(String email);
    public void updatePResume(P_Resume p_resume);
    public List<P_Resume> selectAllPUser();
}
