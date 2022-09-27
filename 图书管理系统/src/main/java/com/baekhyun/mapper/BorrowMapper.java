package com.baekhyun.mapper;

import com.baekhyun.model.Borrow;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface BorrowMapper {
    int insert(Borrow record);

    int insertSelective(Borrow record);

    List<Borrow> qureyAll();

    List<Borrow> selectbybId(Integer bId);
}