package com.proso.service;

import com.proso.dao.P_RecordDetailDao;
import com.proso.pojo.P_RecordDetail;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

/**
 * Created by Administrator on 2016/4/19.
 */

@Service("recordDetailService")
public class RecordDetailService {
    @Resource
    private P_RecordDetailDao p_recordDetailDao;

    public P_RecordDetail selectRecordDetailByEmail(String email){ return p_recordDetailDao.selectRecordDetailByEmail(email); }
    public void updateRecordDetail(P_RecordDetail p_recordDetail){ p_recordDetailDao.updateRecordDetail(p_recordDetail); }
}
