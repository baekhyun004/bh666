package com.baekhyun.service;

import com.baekhyun.model.User;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface UserService {
    User selectByString(@Param("username") String username,@Param("password") String password);
    int addUser(User user);

}
