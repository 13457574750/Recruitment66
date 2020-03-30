package org.soft.recruitment.service.impl;

import org.apache.commons.lang3.StringUtils;
import org.soft.recruitment.dao.ApplyMapper;
import org.soft.recruitment.model.Apply;
import org.soft.recruitment.model.ApplyExample;
import org.soft.recruitment.model.ApplyExample.Criteria;
import org.soft.recruitment.service.IApplyService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.List;

@Service
@Transactional
public class ApplyServiceImpl implements IApplyService {

    @Resource
    private ApplyMapper applyMapper;

    /**
     * 查询所有申请记录
     *
     * @param userRealName
     * @param jobAddress
     * @param jobName
     * @return
     */
    public Apply findAllApply(String userRealName, String jobAddress, String jobName) {
        ApplyExample example = new ApplyExample();
        Criteria criteria = example.createCriteria();
        if (StringUtils.isNotBlank(userRealName)) {
            criteria.andUserRealNameEqualTo(userRealName);
        }
        if (StringUtils.isNotBlank(jobAddress)) {
            criteria.andJobAddressEqualTo(jobAddress);
        }
        if (StringUtils.isNotBlank(jobName)) {
            criteria.andJobNameEqualTo(jobName);
        }
        List<Apply> applyList = applyMapper.selectByExample(example);
        if (applyList != null && applyList.isEmpty()) {
            return applyList.get(0);
        }
        return null;
    }

    /**
     * 根据公司名称查询申请记录
     *
     * @param companyName
     * @return
     */
    public List<Apply> findApplyByCompanyName(String companyName) {
        ApplyExample example = new ApplyExample();
        Criteria criteria = example.createCriteria();
        if (StringUtils.isNotBlank(companyName)) {
            criteria.andCompanyNameEqualTo(companyName);
        }
        List<Apply> applyList_ = applyMapper.selectByExample(example);
        if (applyList_ != null && !applyList_.isEmpty()) {
            return applyList_;
        }
        return null;
    }

    /**
     * 根据用户真名查询记录
     *
     * @param userRealName
     * @return
     */
    public List<Apply> findApplyByUserRealName(String userRealName) {
        ApplyExample example = new ApplyExample();
        Criteria criteria = example.createCriteria();
        if (StringUtils.isNotBlank(userRealName)) {
            criteria.andUserRealNameEqualTo(userRealName);
        }
        List<Apply> applyList_ = applyMapper.selectByExample(example);
        if (applyList_ != null && !applyList_.isEmpty()) {
            return applyList_;
        }
        return null;
    }

    /**
     * 新增申请记录
     *
     * @param apply
     * @return
     */
    public int insertApply(Apply apply) {
        int result = applyMapper.insert(apply);
        return result;
    }

    /**
     * 删除申请记录
     *
     * @param applyId
     */
    public void deleteApply(Integer applyId) {
        ApplyExample example = new ApplyExample();
        Criteria criteria = example.createCriteria();
        criteria.andApplyIdEqualTo(applyId);
        applyMapper.deleteByExample(example);
    }
}