package com.proso.dao;

import com.proso.pojo.NewJob;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Job的增删查改
 */

@Repository
public interface NewJobDao {
    public List<NewJob> selectJobByJobName(String name);
    public List<NewJob> selectJobByCity(String city);
    public List<NewJob> selectJobByIndustry(String industry);
    public List<NewJob> selectJobByJobId(int id);

    public List<NewJob> selectJobList(String industry,String name,String city);

    public void addNewJob(NewJob job);
    public void updateNewJob(NewJob job);
    public void removeNewJob(int jobId);
}
