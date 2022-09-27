package com.baekhyun.controller;

import com.baekhyun.model.User;
import com.baekhyun.service.UserServiceImpl;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.annotation.Resource;

@RequestMapping("/User")
@Controller
public class UserController {

    @Resource
    UserServiceImpl userService;


    @RequestMapping(value = "/login.do",method = RequestMethod.POST)
    public String LoginSuccess(Model model, User user){
        User user1 = userService.selectByString(user.getUsername(),user.getPassword());
        if(user1 !=null){
            return "success";
        }else {
            model.addAttribute("data","账户或密码错误！");
            return "index";
        }
    }

    @RequestMapping("/login2.do")
    public String login(){
        return "index";
    }

    @RequestMapping("/addUser.do")
    public String addUser(User user){
        userService.addUser(user);
        return "index";
    }

    @RequestMapping("/addUserpage.do")
    public String addUserpage(){
        return "register";
    }

    @RequestMapping("/success.do")
    public String main(){
        return "success";
    }
}
