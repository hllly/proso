package com.proso.service.impl;

import com.proso.dao.InchatDao;
import com.proso.websocket.HailRelation;
import org.springframework.stereotype.Service;
import javax.annotation.Resource;
import java.util.HashMap;
import java.util.List;

/**
 * Created by Administrator on 2016/2/23.
 */

@Service("inchatService")
public class InchatService {
    @Resource
    private InchatDao inchatDao;

    public List<HailRelation> getHailEmailList(String selfEmail){
        return inchatDao.selectHailRelationEmail(selfEmail);
    }

    public void deleteHailRelation(HashMap map){
        inchatDao.deleteHailRelation(map);
    }

    public void addHailRelation(HashMap map){
        inchatDao.addHailRelation(map);
    }
}
