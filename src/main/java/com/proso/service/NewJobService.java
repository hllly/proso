package com.proso.service;

import com.proso.dao.NewJobDao;
import com.proso.pojo.NewJob;
import com.sun.javafx.scene.control.skin.VirtualFlow;
import com.sun.xml.internal.bind.v2.schemagen.xmlschema.List;
import org.springframework.stereotype.Service;
import javax.annotation.Resource;
import java.util.ArrayList;

/**
 * 新职位增删改查
 */

@Service("newJobService")
public class NewJobService {
    @Resource
    private NewJobDao newJobDao;

    public java.util.List<NewJob> selectJobByJobName(String name){
        return newJobDao.selectJobByJobName(name);
    }
    public java.util.List<NewJob> selectJobByCity(String city){
        return newJobDao.selectJobByCity(city);
    }
    public java.util.List<NewJob> selectJobByIndustry(String industry){ return newJobDao.selectJobByIndustry(industry); }
    public java.util.List<NewJob> selectJobByJobId(int id){
        return newJobDao.selectJobByJobId(id);
    }
    public java.util.List<NewJob> selectJobList(String industry,String name,String city){ return newJobDao.selectJobList(industry,name,city); }

    public void addNewJob(NewJob job){ newJobDao.addNewJob(job); }
    public void updateNewJob(NewJob job){ newJobDao.updateNewJob(job); }
    public void removeNewJob(int jobId){ newJobDao.removeNewJob(jobId); }

//    public java.util.List<NewJob> selectJobList(String name,String city,String industry){
//        java.util.List<NewJob> jobList=new ArrayList();
//        java.util.List<NewJob> jobList1=new ArrayList();
//        java.util.List<NewJob> jobList2=new ArrayList();
//        java.util.List<NewJob> jobList3=new ArrayList();
//        jobList1=newJobDao.selectJobByIndustry();
//    }
}
