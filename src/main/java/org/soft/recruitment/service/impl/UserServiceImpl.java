package org.soft.recruitment.service.impl;

import org.apache.commons.lang3.StringUtils;
import org.soft.recruitment.model.User;
import org.soft.recruitment.model.UserExample;
import org.soft.recruitment.dao.UserMapper;
import org.soft.recruitment.service.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class UserServiceImpl implements IUserService {

    @Autowired
    public UserMapper userMapper;

    /**
     * 用户注册
     *
     * @param user
     */
    public void userRegister(User user) {
        userMapper.insert(user);
    }

    /**
     * 用户登录，根据用户名和密码查询
     *
     * @param userLoginName
     * @param userLoginPassword
     * @return
     */
    public User userLogin(String userLoginName, String userLoginPassword) {
        UserExample example = new UserExample();
        UserExample.Criteria criteria = example.createCriteria();
        if (StringUtils.isNotBlank(userLoginName)) {
            //判断用户名是否为空
            criteria.andUserLoginNameEqualTo(userLoginName);
        }
        if (StringUtils.isNotBlank(userLoginPassword)) {
            // 判断用户密码是否为空
            criteria.andUserLoginPasswordEqualTo(userLoginPassword);
        }
        List<User> userList = userMapper.selectByExample(example);
        if (userList != null && !userList.isEmpty()) {
            return userList.get(0);
        }
        return null;
    }

    /**
     * 修改密码
     *
     * @param userId
     * @param user
     */
    public void updateUserPassword(Integer userId, User user) {
        user.setUserId(userId);
        userMapper.updateByPrimaryKey(user);
    }

    /**
     * 查询全部用户
     *
     * @return
     */
    public List<User> findAllUser() {
        List<User> userList = userMapper.findAllUser();
        return userList;
    }

    /**
     * 根据ID查询用户
     *
     * @param userId
     * @return
     */
    public User findUserByUserId(Integer userId) {
        User user = userMapper.selectByPrimaryKey(userId);
        return user;
    }

    /**
     * 根据用户登录名来查询
     *
     * @param userLoginName
     * @return
     */
    public int findUserByUserLoginName(String userLoginName) {
        int result = 0;
        UserExample example = new UserExample();
        UserExample.Criteria criteria = example.createCriteria();
        if (StringUtils.isNotBlank(userLoginName)) {
            criteria.andUserLoginNameEqualTo(userLoginName);
        }
        List<User> userList = userMapper.selectByExample(example);
        if (userList == null || userList.isEmpty()) {
            return result;
            //   说明没有该用户登录名字，可以注册
        } else {
            result = 1;
            // 该用户名称已经有了, 不可以注册
        }
        return result;
    }

    /**
     * 根据用户真实姓名来查询
     *
     * @param userRealName
     * @return
     */

    public User findUserByUserRealName(String userRealName) {
        UserExample example = new UserExample();
        UserExample.Criteria criteria = example.createCriteria();
        if (StringUtils.isNotBlank(userRealName)) {
            criteria.andUserRealNameEqualTo(userRealName);
        }
        List<User> userList = userMapper.selectByExample(example);
        if (userList != null && !userList.isEmpty()) {
            return userList.get(0);
        }
        return null;
    }

    /**
     * 删除用户
     *
     * @param userId
     */
    public void deleteByUserId(Integer userId) {
        userMapper.deleteByPrimaryKey(userId);
    }

    /**
     * 根据ID修改用户信息
     *
     * @param userId
     * @param user
     */
    public void updateUser(Integer userId, User user) {
        user.setUserId(userId);
        userMapper.updateByPrimaryKey(user);
    }

    /**
     * 保存用户信息
     * @param user
     */
    public void saveUser(User user) {
        userMapper.updateByPrimaryKey(user);
    }

}
