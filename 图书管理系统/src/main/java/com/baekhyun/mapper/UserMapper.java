package com.baekhyun.mapper;

import com.baekhyun.model.User;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

import java.util.List;

@Mapper
@Repository
public interface UserMapper {
    User selectByString(@Param("username") String username,@Param("password") String password);
    int addUser(User user);

}
