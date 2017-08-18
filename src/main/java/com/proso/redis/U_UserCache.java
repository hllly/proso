package com.proso.redis;

import com.proso.pojo.C_User;
import com.proso.pojo.U_User;
import org.springframework.stereotype.Repository;
import redis.clients.jedis.Jedis;
import java.util.HashMap;
import java.util.Map;


/**
 * Created by Administrator on 2016/4/20.
 */
@Repository
public class U_UserCache {
    private Jedis jedis;
    private String host;
    private String port;
    public U_UserCache(){}
    public void setRedis(String host,int port){
        jedis=new RedisClient().connect(host,port);
    };
    public U_User selectUserById(int id){
        return null;
    }
    public U_User selectUserByPhone(String phone){
        return null;
    }
    public U_User selectUserByEmail(String email){
        U_User user=new U_User();
        Map<String,String> userMap=jedis.hgetAll(email);
        System.out.println(userMap);
        if (!userMap.isEmpty()){
            user.setU_id(Integer.valueOf(userMap.get("u_id")));
            user.setU_email(userMap.get("u_email"));
            user.setU_email(userMap.get("u_number"));
            user.setU_password(userMap.get("u_password"));
            user.setU_phone(userMap.get("u_phone"));
            return user;
        }
        return null;
    }
    public void saveCache(U_User user){
        Map<String, String> map = new HashMap<String, String>();
        map.put("u_id",user.getU_id()+"");
        map.put("u_number",user.getU_number()+"");
        map.put("u_email",user.getU_email());
        map.put("u_password",user.getU_password());
        map.put("u_phone",user.getU_phone());
        jedis.hmset(user.getU_email(),map);
    }

    public Jedis getJedis(){ return jedis; }

    public void clearCache(String email){
        jedis.hdel(email,"");
    }

    public void flushPwdCache(String email,String pwd){
        jedis.hset(email,"u_password",pwd);
    }

    public static void main(String[] args){
        C_UserCache cache=new C_UserCache();
        cache.setRedis("localhost",6379);
        cache.flushPwdCache("111","123");
    }
}

