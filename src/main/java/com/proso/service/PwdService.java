package com.proso.service;

import com.proso.dao.P_UserDao;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

/**
 * Created by Administrator on 2016/4/30.
 */
@Service("pwdService")
public class PwdService {
    @Resource
    private P_UserDao p_userDao;

    public void setPNewPwd(String email,String pwd){
        p_userDao.setPNewPwd(email,pwd);
    }
}
