package com.baekhyun.service;

import com.baekhyun.model.Borrow;

import java.util.List;

public interface BorrowService {
    int insert(Borrow record);

    int insertSelective(Borrow record);

    List<Borrow> qureyAll();

    List<Borrow> selectbybId(Integer bId);
}
