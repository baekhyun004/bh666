package com.baekhyun.mapper;

import com.baekhyun.model.BookType;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.List;

@Mapper
@Repository
public interface BookTypeMapper {
    int deleteByPrimaryKey(String bType);

    int insert(BookType record);

    int insertSelective(BookType record);

    BookType selectByPrimaryKey(String bType);

    int updateByPrimaryKeySelective(BookType record);

    int updateByPrimaryKey(BookType record);

    List<BookType> qureyAll();
}