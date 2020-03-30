package org.soft.recruitment.service;

import org.soft.recruitment.model.Apply;

import java.util.List;


public interface IApplyService {

    //查看所有申请记录
    public Apply findAllApply(String userRealName, String jobAddress, String jobName);

    //根据公司名称查询所有的申请人(公司信箱)
    public List<Apply> findApplyByCompanyName(String companyName);

    //根据用户真名查询所有申请记录(投递箱)
    public List<Apply> findApplyByUserRealName(String userRealName);

    //增加申请记录
    public int insertApply(Apply apply);

    //删除申请记录
    public void deleteApply(Integer applyId);
}

