package com.proso.dao;

import com.proso.pojo.C_User;
import com.proso.pojo.User;
import org.springframework.stereotype.Repository;

/**
 * Created by Administrator on 2016/2/17.
 */

@Repository
public interface C_UserDao {
    public C_User selectUserById(int id);
    public C_User selectUserByPhone(String phone);
    public C_User selectUserByEmail(String email);
    public C_User selectUserByNumber(String number);

    public void addUser(C_User user);
}
