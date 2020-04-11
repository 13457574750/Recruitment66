package org.soft.recruitment.service;

import org.soft.recruitment.model.Job;

import java.util.List;


public interface IJobService {

    //查看所有职位
    List<Job> findAllJob(int page, int size, String jobName, String jobAddress, String companyName);

    //查询指定companyId下的jobName,目的是判断新增工作是否重复
    Job findJobNameByCompanyId(Integer companyId, String jobName);

    //根据jobId查询job
    Job findJobByJobId(Integer jobId);

    //新增职位
    int insertJob(Job job);

    //删除职位
    void deleteJob(Integer jobId);

    //根据公司名称查找工作


}

