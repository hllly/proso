package com.proso.redis;

import com.proso.pojo.C_User;
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
public class C_UserCache {
    private Jedis jedis;
    private String host;
    private String port;
    public C_UserCache(){}
    public void setRedis(String host,int port){
        jedis=new RedisClient().connect(host,port);
    };
    public C_User selectUserById(int id){
        return null;
    }
    public C_User selectUserByPhone(String phone){
        return null;
    }
    public C_User selectUserByEmail(String email){
        C_User user=new C_User();
        Map<String,String> userMap=jedis.hgetAll(email);
        System.out.println(userMap);
        if (!userMap.isEmpty()){
            user.setC_id(Integer.valueOf(userMap.get("c_id")));
            user.setC_email(userMap.get("c_email"));
            user.setC_email(userMap.get("c_number"));
            user.setC_password(userMap.get("c_password"));
            user.setC_phone(userMap.get("c_phone"));
            return user;
        }
        return null;
    }
    public void saveCache(C_User user){
        Map<String, String> map = new HashMap<String, String>();
        map.put("c_id",user.getC_id()+"");
        map.put("c_number",user.getC_number()+"");
        map.put("c_email",user.getC_email());
        map.put("c_password",user.getC_password());
        map.put("c_phone",user.getC_phone());
        jedis.hmset(user.getC_email(),map);
    }

    public Jedis getJedis(){ return jedis; }

    public void clearCache(String email){
        jedis.hdel(email,"");
    }

    public void flushPwdCache(String email,String pwd){
        jedis.hset(email,"c_password",pwd);
    }

    public static void main(String[] args){
        C_UserCache cache=new C_UserCache();
        cache.setRedis("localhost",6379);
        cache.flushPwdCache("111","123");
    }
}

