package com.proso.redis;

import com.proso.pojo.P_User;
import org.springframework.jdbc.support.nativejdbc.Jdbc4NativeJdbcExtractor;
import org.springframework.stereotype.Repository;
import redis.clients.jedis.Jedis;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

/**
 * Created by Administrator on 2016/4/20.
 */
@Repository
public class P_UserCache {
    private Jedis jedis;
    private String host;
    private String port;
    public P_UserCache(){}
    public void setRedis(String host,int port){
        jedis=new RedisClient().connect(host,port);
    };
    public P_User selectUserById(int id){
        return null;
    }
    public P_User selectUserByPhone(String phone){
        return null;
    }
    public P_User selectUserByEmail(String email){
        P_User user=new P_User();
        Map<String,String> userMap=jedis.hgetAll(email);
        System.out.println(userMap);
        if (!userMap.isEmpty()){
            user.setP_id(Integer.valueOf(userMap.get("p_id")));
            user.setP_email(userMap.get("p_email"));
            user.setP_password(userMap.get("p_password"));
            user.setP_phone(userMap.get("p_phone"));
            return user;
        }
        return null;
    }
    public void saveCache(P_User user){
        Map<String, String> map = new HashMap<String, String>();
        map.put("p_id",user.getP_id()+"");
        map.put("p_email",user.getP_email());
        map.put("p_password",user.getP_password());
        map.put("p_phone",user.getP_phone());
        jedis.hmset(user.getP_email(),map);
    }

    public Jedis getJedis(){ return jedis; }

    public void clearCache(String email){
        jedis.hdel(email,"");
    }

    public void flushPwdCache(String email,String pwd){
        jedis.hset(email,"p_password",pwd);
    }

    public static void main(String[] args){
        P_UserCache cache=new P_UserCache();
        cache.setRedis("localhost",6379);
        cache.flushPwdCache("111","123");
    }
}

















