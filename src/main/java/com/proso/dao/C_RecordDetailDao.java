package com.proso.dao;

import com.proso.pojo.C_RecordDetail;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by Administrator on 2016/4/30.
 */

@Repository
public interface C_RecordDetailDao {
    public C_RecordDetail selectCRecordDetailByEmail(String emil);
}
