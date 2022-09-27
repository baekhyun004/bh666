package com.baekhyun.service;

import com.baekhyun.mapper.UserMapper;
import com.baekhyun.model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class UserServiceImpl implements UserService {
    @Resource
    UserMapper userMapper;

    @Override
    public User selectByString(String username, String password) {
        return userMapper.selectByString(username, password);
    }

    @Override
    public int addUser(User user) {
        return userMapper.addUser(user);
    }
}
