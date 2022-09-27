package com.baekhyun.service;

import com.baekhyun.model.Reader;

import java.util.List;

public interface ReaderService {
    int deleteByPrimaryKey(Integer sId);

    int insert(Reader record);

    int insertSelective(Reader record);

    Reader selectByPrimaryKey(Integer sId);

    int updateByPrimaryKeySelective(Reader record);

    int updateByPrimaryKey(Reader record);

    List<Reader> qureyAll();
}
