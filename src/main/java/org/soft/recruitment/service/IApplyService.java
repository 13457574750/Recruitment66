package org.soft.recruitment.service;

import org.soft.recruitment.model.Apply;

import java.util.List;


public interface IApplyService {

    //根据用户真名查询所有职位
    Apply findAllApply(String userRealName, String jobId);

    //根据公司名称查询所有的申请人(公司信箱)
    List<Apply> findApplyByCompanyName(int page, int size, String companyName);

    //根据用户真名查询所有申请记录(投递箱)
    List<Apply> findApplyByUserRealName(int page, int size, String userRealName);

    //增加申请记录
    int insertApply(Apply apply);

    //删除申请记录
    void deleteApply(Integer applyId);
}

