package com.hwua.common.dao;

import com.hwua.common.po.User;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface UserMapper {
    /**
     * 根据用户名密码查询用户

     * @return 返回用户信息
     */
    public User queryUser(@Param("username") String username, @Param("password") String password);

    /**
     * 查询用户数量

     * @return 返回用户数量
     */
    public Integer queryCount(String username);

}
