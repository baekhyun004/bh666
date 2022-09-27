package com.baekhyun.mapper;

import com.baekhyun.model.Reader;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface ReaderMapper {
    int deleteByPrimaryKey(Integer sId);

    int insert(Reader record);

    int insertSelective(Reader record);

    Reader selectByPrimaryKey(Integer sId);

    int updateByPrimaryKeySelective(Reader record);

    int updateByPrimaryKey(Reader record);

    List<Reader> qureyAll();
}