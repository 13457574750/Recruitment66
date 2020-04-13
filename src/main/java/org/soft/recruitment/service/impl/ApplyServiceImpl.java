package org.soft.recruitment.service.impl;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
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
     * @return
     */
    public Apply findAllApply(String userRealName, String jobId) {
        ApplyExample example = new ApplyExample();
        Criteria criteria = example.createCriteria();
        if (StringUtils.isNotBlank(userRealName)) {
            criteria.andUserRealNameEqualTo(userRealName);
        }
        if (StringUtils.isNotBlank(jobId)) {
            criteria.andJobIdEqualTo(jobId);
        }
        List<Apply> applyList = applyMapper.selectByExample(example);
        if (applyList != null && applyList.size() > 0) {
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
    public List<Apply> findApplyByCompanyName(int page, int size, String companyName) {
        PageHelper.startPage(page,size);

        ApplyExample example = new ApplyExample();
        Criteria criteria = example.createCriteria();
        if (StringUtils.isNotBlank(companyName)) {
            criteria.andCompanyNameEqualTo(companyName);
        }
        List<Apply> applyList = applyMapper.selectByExample(example);
        PageInfo<Apply> pageInfo = new PageInfo<>(applyList);
        if (applyList != null && applyList.size()> 0) {
            return applyList;
        }
        return pageInfo.getList();
    }

    /**
     * 根据用户真名查询记录
     *
     * @param userRealName
     * @return
     */
    public List<Apply> findApplyByUserRealName(int page, int size, String userRealName) {
        PageHelper.startPage(page,size);

        ApplyExample example = new ApplyExample();
        Criteria criteria = example.createCriteria();
        if (StringUtils.isNotBlank(userRealName)) {
            criteria.andUserRealNameEqualTo(userRealName);
        }
        List<Apply> applyList_ = applyMapper.selectByExample(example);
        PageInfo<Apply> pageInfo = new PageInfo<>(applyList_);
        if (applyList_ != null && applyList_.size()> 0) {
            return applyList_;
        }
        return pageInfo.getList();
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