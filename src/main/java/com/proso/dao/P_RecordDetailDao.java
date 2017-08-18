package com.proso.dao;

/**
 * Created by Administrator on 2016/4/19.
 */

import com.proso.pojo.P_RecordDetail;
import org.springframework.stereotype.Repository;

@Repository
public interface P_RecordDetailDao {
    public P_RecordDetail selectRecordDetailByEmail(String email);
    public void updateRecordDetail(P_RecordDetail p_recordDetail);
}

