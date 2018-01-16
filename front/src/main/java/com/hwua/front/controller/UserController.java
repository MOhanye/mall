package com.hwua.front.controller;

import com.hwua.front.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;
import java.util.Map;

@RequestMapping("/user")
@Controller
public class UserController {

    @Autowired
    private UserService userService;

    @RequestMapping("/TDengLu")
    public String TDengLu(){
        return "account";
    }

    @RequestMapping("DengLu")
    public String DengLu(String username , String password, HttpSession session){
        System.out.println("username = " + username);
        Map<String, Object> map = userService.DengLu(username, password);
        if (map.containsKey("username")){
            String s = map.get("username").toString();
            session.setAttribute("username",s);
            return "index";
        }else {
            Object error = map.get("error");
            session.setAttribute("error",error);
            return "account";
        }

    }
    @RequestMapping("zhuxiao")
    public String ZhuXiao(HttpSession session){
        session.invalidate();
        return "index";
    }
}
