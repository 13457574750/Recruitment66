package org.soft.recruitment.service;

import org.soft.recruitment.model.Company;

import java.util.List;


public interface ICompanyService {
	//公司注册
	public void companyRegister(Company company);

	//公司登录
	public Company companyLogin(String companyLoginName , String companyLoginPassword);

	//公司修改信息(基础信息和密码)
	public void updateCompany(Integer companyId , Company company);

	//删除公司
	public void deleteCompany(Integer companyId);

	//查询所有公司,增加查询条件公司名
	public List<Company> findAllCompany(int page, int size, String companyName);

	//根据公司ID查询公司
	public  Company findCompanyByCompanyId(Integer companyId);

	//查询公司登录名（校验登录名是否存在）
	public int findCompanyByCompanyLoginName(String companyLoginName);

	//查询公司名称（校验公司名是否存在）
	public int findCompanyByCompanyName(String companyName);

	//保存公司信息
	public void saveCompany(Company company);
}
