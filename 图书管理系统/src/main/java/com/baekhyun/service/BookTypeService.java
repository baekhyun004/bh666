package com.baekhyun.service;

import com.baekhyun.model.BookType;

import java.util.List;

public interface BookTypeService {
    int deleteByPrimaryKey(String bType);

    int insert(BookType record);

    int insertSelective(BookType record);

    BookType selectByPrimaryKey(String bType);

    int updateByPrimaryKeySelective(BookType record);

    int updateByPrimaryKey(BookType record);

    List<BookType> qureyAll();
}
