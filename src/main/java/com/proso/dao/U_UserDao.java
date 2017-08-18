package com.proso.dao;

import com.proso.pojo.U_User;
import com.proso.pojo.User;
import org.springframework.stereotype.Repository;

/**
 * Created by Administrator on 2016/2/17.
 */

@Repository
public interface U_UserDao {
    public U_User selectUserById(int id);
    public U_User selectUserByPhone(String phone);
    public U_User selectUserByEmail(String email);
    public U_User selectUserByNumber(String number);
    public void addUser(U_User u_user);
}
