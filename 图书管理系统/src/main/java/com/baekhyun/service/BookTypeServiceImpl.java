package com.baekhyun.service;

import com.baekhyun.mapper.BookTypeMapper;
import com.baekhyun.model.BookType;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class BookTypeServiceImpl implements BookTypeService {

    @Resource
    BookTypeMapper bookTypeMapper;

    @Override
    public int deleteByPrimaryKey(String bType) {
        return bookTypeMapper.deleteByPrimaryKey(bType);
    }

    @Override
    public int insert(BookType record) {
        return bookTypeMapper.insert(record);
    }

    @Override
    public int insertSelective(BookType record) {
        return bookTypeMapper.insertSelective(record);
    }

    @Override
    public BookType selectByPrimaryKey(String bType) {
        return bookTypeMapper.selectByPrimaryKey(bType);
    }

    @Override
    public int updateByPrimaryKeySelective(BookType record) {
        return bookTypeMapper.updateByPrimaryKeySelective(record);
    }

    @Override
    public int updateByPrimaryKey(BookType record) {
        return bookTypeMapper.updateByPrimaryKey(record);
    }

    @Override
    public List<BookType> qureyAll() {
        return bookTypeMapper.qureyAll();
    }
}
