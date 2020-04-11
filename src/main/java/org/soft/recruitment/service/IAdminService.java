package org.soft.recruitment.service;

import org.soft.recruitment.model.Admin;
import org.soft.recruitment.model.User;

import java.util.List;

public interface IAdminService {
    //登录
    Admin adminLogin(String adminLoginName, String adminLoginPassword);

    //  管理员修改密码
    void updateAdmin(Integer adminId, Admin admin);

    //查询
    List<Admin> findAllAdmin();

    //根据ID查询用户
    Admin findAdminByAdminId(Integer adminId);

}
