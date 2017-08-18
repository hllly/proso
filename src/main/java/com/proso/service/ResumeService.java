package com.proso.service;

import com.proso.dao.C_RecordDetailDao;
import com.proso.dao.P_ResumeDao;
import com.proso.dao.U_ResumeDao;
import com.proso.pojo.C_RecordDetail;
import com.proso.pojo.P_Resume;
import com.proso.pojo.P_User;
import com.proso.pojo.U_RecordDetail;
import org.springframework.stereotype.Service;
import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by Administrator on 2016/4/24.
 */
@Service("resumeService")
public class ResumeService {
    @Resource
    private P_ResumeDao p_resumeDao;
    @Resource
    private U_ResumeDao u_resumeDao;
    @Resource
    private C_RecordDetailDao c_recordDetailDao;

    public P_Resume selectPResumeByEmail(String email){
        return p_resumeDao.selectPResumeByEmail(email);
    }
    public void updatePResume(P_Resume p_resume){
        p_resumeDao.updatePResume(p_resume);
    }
    public List<P_Resume> selectAllPUser(String email){
        List<P_Resume> result=new ArrayList<P_Resume>();
        P_Resume user=p_resumeDao.selectPResumeByEmail(email);
        if(user != null){
            String skill=user.getP_skill();
            String college=user.getP_college();
            String employer=user.getP_employer();
            List<P_Resume> userList=p_resumeDao.selectAllPUser();
            for(P_Resume user1:userList){
                if(user1.getP_college().equals(college)){
                    result.add(user1);
                }
                else if(user1.getP_employer().equals(employer)){
                    result.add(user1);
                }
                else if(user1.getP_skill().equals(skill)){
                    result.add(user1);
                }
            }
        }
        return result;
    }

    public U_RecordDetail selectUResumeByEmail(String email){return u_resumeDao.selectUResumeByEmail(email);}
    public List<U_RecordDetail> selectAllUser(){return u_resumeDao.selectAllUUser();}

    public C_RecordDetail selectCRecordDetailByEmail(String email){
        return c_recordDetailDao.selectCRecordDetailByEmail(email);
    }

}






















