package org.soft.recruitment.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.commons.lang.StringUtils;
import org.soft.recruitment.dao.CompanyMapper;
import org.soft.recruitment.model.Company;
import org.soft.recruitment.model.CompanyExample;
import org.soft.recruitment.service.ICompanyService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;


@Service
@Transactional
public class CompanyServiceImpl implements ICompanyService {

    @Resource
    public CompanyMapper companyMapper;

    /**
     * 公司注册
     *
     * @param company
     */
    public void companyRegister(Company company) {
        companyMapper.insert(company);
    }

    /**
     * 公司登录
     *
     * @param companyLoginName
     * @param companyLoginPassword
     * @return
     */
    public Company companyLogin(String companyLoginName, String companyLoginPassword) {
        CompanyExample example = new CompanyExample();
        CompanyExample.Criteria criteria = example.createCriteria();
        if (StringUtils.isNotBlank(companyLoginName)) {
            criteria.andCompanyLoginNameEqualTo(companyLoginName);
        }
        if (StringUtils.isNotBlank(companyLoginPassword)) {
            criteria.andCompanyLoginPasswordEqualTo(companyLoginPassword);
        }
        List<Company> companyList = companyMapper.selectByExample(example);
        if (companyList != null && !companyList.isEmpty()) {
            return companyList.get(0);
        }
        return null;
    }

    /**
     * 修改公司信息
     *
     * @param companyId
     * @param company
     */
    public void updateCompany(Integer companyId, Company company) {
        company.setCompanyId(companyId);
        companyMapper.updateByPrimaryKey(company);
    }

    /**
     * 删除公司
     *
     * @param companyId
     */
    public void deleteCompany(Integer companyId) {
        companyMapper.deleteByPrimaryKey(companyId);
    }

    /**
     * 查询所有公司
     *
     * @return
     */
    public List<Company> findAllCompany(String companyName) {
        Map<String, Object> map = new HashMap<>();
        map.put("companyName", companyName);
        List<Company> companyList = companyMapper.findAllCompany(map);
        return companyList;
    }

    /**
     * 根据公司ID查询公司（校验公司是否存在）
     *
     * @param companyId
     * @return
     */
    public Company findCompanyByCompanyId(Integer companyId) {
        Company company = companyMapper.selectByPrimaryKey(companyId);
        return company;
    }

    /**
     * 根据公司登录名查询公司（校验公司登录名是否存在）
     *
     * @param companyLoginName
     * @return
     */
    public int findCompanyByCompanyLoginName(String companyLoginName) {
        int result = 0;
        CompanyExample example = new CompanyExample();
        CompanyExample.Criteria criteria = example.createCriteria();
        if (StringUtils.isNotBlank(companyLoginName)) {
            criteria.andCompanyLoginNameEqualTo(companyLoginName);
        }
        List<Company> companyList = companyMapper.selectByExample(example);
        if (companyList == null || companyList.isEmpty()) {
            return result;//说明没有该公司登录名,可以注册
        } else {
            result = 1;//该公司的登录名已经有了，不可以注册
        }
        return result;
    }

    /**
     * 根据公司名称查询公司（校验公司名称是否存在）
     *
     * @param companyName
     * @return
     */
    public int findCompanyByCompanyName(String companyName) {
        int result = 0;
        CompanyExample example = new CompanyExample();
        CompanyExample.Criteria criteria = example.createCriteria();
        if (StringUtils.isNotBlank(companyName)) {
            criteria.andCompanyNameEqualTo(companyName);
        }
        List<Company> companyList = companyMapper.selectByExample(example);
        if (companyList == null || companyList.isEmpty()) {
            return result; //说明没有该公司名字，可以注册
        } else {
            result = 1;//该公司名称已经有了,不可以注册
        }
        return result;
    }

    /**
     * 保存公司信息
     *
     * @param company
     */
    public void saveCompany(Company company) {
        companyMapper.updateByPrimaryKey(company);
    }
}
