package com.hwua.front.service.impl;

import com.hwua.common.dao.UserMapper;
import com.hwua.common.po.User;
import com.hwua.front.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service("/userService")
public class UserServiceImpl implements UserService {

    @SuppressWarnings("SpringJavaAutowiringInspection")
    @Autowired
    private UserMapper userMapper;
    @Override
    public Map<String, Object> DengLu(String username, String password) {
        User users = userMapper.queryUser(username,password);
        System.out.println("users = " + users);
        Integer integer = userMapper.queryCount(username);
        System.out.println("integer = " + integer);
        HashMap<String,Object> hmap = new HashMap<>();
        if (integer != 0){
            if (users != null){
                hmap.put("username",username );
            }else {
                hmap.put("error","密码错误");
            }
        }else {
            hmap.put("error","账号不存在");
        }

        return hmap;
    }
}
