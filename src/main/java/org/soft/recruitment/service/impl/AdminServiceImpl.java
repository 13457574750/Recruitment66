package org.soft.recruitment.service.impl;

import java.util.List;

import org.apache.commons.lang3.StringUtils;
import org.soft.recruitment.dao.AdminMapper;
import org.soft.recruitment.model.Admin;
import org.soft.recruitment.model.AdminExample;
import org.soft.recruitment.service.IAdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class AdminServiceImpl implements IAdminService {
	@Autowired
	private AdminMapper adminMapper;

	/**
	 * 管理员登录
	 * @param adminLoginName
	 * @param adminLoginPassword
	 * @return
	 */
	public Admin adminLogin(String adminLoginName, String adminLoginPassword) {
		AdminExample example=new AdminExample();
		AdminExample.Criteria criteria = example.createCriteria();
		if (StringUtils.isNotBlank(adminLoginName)) {
			criteria.andAdminLoginNameEqualTo(adminLoginName);
		}
		if (StringUtils.isNotBlank(adminLoginPassword)) {
			criteria.andAdminLoginPasswordEqualTo(adminLoginPassword);
		}
		List<Admin> adminList = adminMapper.selectByExample(example);
		if (adminList != null && !adminList.isEmpty()) {
			return adminList.get(0);
		}
		return null;
	}

	/**
	 * 管理员修改密码
	 * @param adminId
	 * @param admin
	 */
	public void updateAdmin(Integer adminId, Admin admin){
		admin.setAdminId(adminId);
		adminMapper.updateByPrimaryKey(admin);
	}

	/**
	 * 查询全部管理员
	 *
	 * @return
	 */
	public List<Admin> findAllAdmin() {
		List<Admin> adminList = adminMapper.findAllAdmin();
		return adminList;
	}

	/**
	 * 根据ID查询用户
	 *
	 * @param adminId
	 * @return
	 */
	public Admin findAdminByAdminId(Integer adminId) {
		Admin admin = adminMapper.selectByPrimaryKey(adminId);
		return admin;
	}
}
