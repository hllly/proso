package com.proso.dao;

import com.proso.pojo.P_Resume;
import com.proso.pojo.U_RecordDetail;
import org.springframework.stereotype.Repository;
import java.util.List;

/**
 * Created by Administrator on 2016/4/27.
 */

@Repository
public interface U_ResumeDao {
    public U_RecordDetail selectUResumeByEmail(String email);
    public void updateUResume(U_RecordDetail uresume);
    public List<U_RecordDetail> selectAllUUser();
}
