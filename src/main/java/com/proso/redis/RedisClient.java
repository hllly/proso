package com.proso.redis;

import redis.clients.jedis.Jedis;

/**
 * Created by Administrator on 2016/4/20.
 */
public class RedisClient {
    private Jedis jedis;
    public Jedis connect(String host,int port){
        jedis=new Jedis(host,port);
        return jedis;
    }
}
