package com.proso.service.impl;

import com.proso.dao.C_UserDao;
import com.proso.dao.P_UserDao;
import com.proso.dao.U_UserDao;
import com.proso.pojo.P_User;
import com.proso.pojo.User;
import org.springframework.stereotype.Service;
import javax.annotation.Resource;
import java.util.List;

/**
 * Created by Administrator on 2016/2/17.
 */

@Service("userLoginService")
public class UserLoginService {
    @Resource
    private C_UserDao c_userDao;
    @Resource
    private P_UserDao p_userDao;
    @Resource
    private U_UserDao u_userDao;

    public User getUserById(int id,String type){
        if(type.equals("u_user")){
            return u_userDao.selectUserById(id);
        }
        else if(type.equals("c_user")){
            return c_userDao.selectUserById(id);
        }
        else {
            return p_userDao.selectUserById(id);
        }
    }

    public User getUserByPhone(String phone,String type){
        if(type.equals("u_user")){
            return u_userDao.selectUserByPhone(phone);
        }
        else if(type.equals("c_user")){
            return c_userDao.selectUserByPhone(phone);
        }
        else {
            return p_userDao.selectUserByPhone(phone);
        }
    }

    public User getUserByEmail(String email,String type){
        if(type.equals("u_user")){
            return u_userDao.selectUserByEmail(email);
        }
        else if(type.equals("c_user")){
            return c_userDao.selectUserByEmail(email);
        }
        else {
            return p_userDao.selectUserByEmail(email);
        }
    }

    public List<P_User> selectAllPUser(){
        return p_userDao.selectAllPUser();
    }

}



















