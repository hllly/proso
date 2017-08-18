package com.proso.service.impl;

import com.proso.dao.C_UserDao;
import com.proso.dao.P_UserDao;
import com.proso.dao.U_UserDao;
import com.proso.pojo.C_User;
import com.proso.pojo.P_User;
import com.proso.pojo.U_User;
import com.proso.pojo.User;
import org.springframework.stereotype.Service;
import javax.annotation.Resource;

/**
 * Created by Administrator on 2016/2/18.
 */

@Service("userRegisterService")
public class UserRegisterService {
    @Resource
    private C_UserDao c_userDao;
    @Resource
    private P_UserDao p_userDao;
    @Resource
    private U_UserDao u_userDao;

    public void addUser(User user,String type){
        if(type.equals("c_user")){
            c_userDao.addUser((C_User) user);
        }
        else if(type.equals("u_user")){
            u_userDao.addUser((U_User)user);
        }
        else{
            p_userDao.addUser((P_User) user);
        }
    }
}
