package com.proso.dao;

import com.proso.websocket.HailRelation;
import org.springframework.stereotype.Repository;

import java.util.HashMap;
import java.util.List;

/**
 * Created by Administrator on 2016/2/23.
 */

@Repository
public interface InchatDao {
    public List<HailRelation> selectHailRelationEmail(String selfEmail);
    public void deleteHailRelation(HashMap map);
    public void addHailRelation(HashMap map);
}
