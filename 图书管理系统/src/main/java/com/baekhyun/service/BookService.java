package com.baekhyun.service;

import com.baekhyun.model.Book;

import java.util.List;

public interface BookService {
    int deleteByPrimaryKey(Integer bId);

    int insert(Book record);

    int insertSelective(Book record);

    Book selectByPrimaryKey(Integer bId);

    int updateByPrimaryKeySelective(Book record);

    int updateByPrimaryKey(Book record);

    List<Book> qureyAll();

    List<Book> selectBybookType(String bType);
}
