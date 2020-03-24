package org.soft.recruitment.service;

import org.soft.recruitment.model.Admin;
import org.soft.recruitment.model.User;

import java.util.List;

public interface IAdminService {
    //登录
    public Admin adminLogin(String adminLoginName, String adminLoginPassword);

    //  管理员修改密码
    public void updateAdmin(Integer adminId, Admin admin);

    //查询
    List<Admin> findAllAdmin();

    //根据ID查询用户
    public Admin findAdminByAdminId(Integer adminId);

}
