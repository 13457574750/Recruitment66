package org.soft.recruitment.service;

import org.soft.recruitment.model.Job;
import org.soft.recruitment.model.JobInfoExt;

import java.util.List;


public interface IJobService {

    //查看所有职位
    public List<JobInfoExt> findAllJob(String jobName, String jobAddress, String companyName);

    //查询指定companyId下的jobName,目的是判断新增工作是否重复
    public Job findJobNameByCompanyId(Integer companyId, String jobName);

    //新增职位
    public int insertJob(Job job);
}

