package com.cxspace.dao;

import com.cxspace.entity.User;

/**
 * Created by cxspace on 16-7-28.
 *
 * 用户表接口
 *
 */
public interface IUserDao {

    //存储一个用户信息
    public boolean save(User user);

    //登录逻辑，通过手机号和密码查询用户是否存在
    public User find(String phone , String password);

}
