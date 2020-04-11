package org.soft.recruitment.service;

import org.soft.recruitment.model.User;

import java.util.List;

//用户下所拥有的接口
interface IUserService {
    //  用户注册
    void userRegister(User user);

    //  用户登录
    User userLogin(String userLoginName, String userLoginPassword);

    //  用户修改密码
    void updateUserPassword(Integer userId, User User);

    // 查询所有用户
    List<User> findAllUser();

    //根据ID查询用户
    User findUserByUserId(Integer userId);

    // 根据用户登录名查询用户（校验登录名是否存在）
    int findUserByUserLoginName(String userLoginName);

    // 根据用户真实姓名查找用户（校验真实姓名是否存在）
    User findUserByUserRealName(String userRealName);

    //  根据ID删除用户
    void deleteByUserId(Integer userId);

    //  根据ID修改用户信息
    void updateUser(Integer userId, User User);

    //   保存用户信息
    void saveUser(User user);

}
