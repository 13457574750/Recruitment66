package org.soft.recruitment.service;

import org.soft.recruitment.model.User;

import java.util.List;

//用户下所拥有的接口
public interface IUserService {
    //  用户注册
    public void userRegister(User user);

    //  用户登录
    public User userLogin(String userLoginName, String userLoginPassword);

    //  用户修改密码
    public void updateUserPassword(Integer userId, User User);

    // 查询所有用户
    public List<User> findAllUser();

    //根据ID查询用户
    public User findUserByUserId(Integer userId);

    // 根据用户登录名查询用户（校验登录名是否存在）
    public int findUserByUserLoginName(String userLoginName);

    // 根据用户真实姓名查找用户（校验真实姓名是否存在）
    public User findUserByUserRealName(String userRealName);

    //  根据ID删除用户
    public void deleteByUserId(Integer userId);

    //  根据ID修改用户信息
    public void updateUser(Integer userId, User User);

    //   保存用户信息
    public void saveUser(User user);

}
