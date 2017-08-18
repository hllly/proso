package com.proso.dao;

import com.proso.pojo.P_User;
import com.proso.pojo.User;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by Administrator on 2016/2/17.
 */

@Repository
public interface P_UserDao {
    public P_User selectUserById(int id);
    public P_User selectUserByPhone(String phone);
    public P_User selectUserByEmail(String email);

    public List<P_User> selectAllPUser();

    public void addUser(P_User user);

    public void setPNewPwd(String email,String pwd);
}
