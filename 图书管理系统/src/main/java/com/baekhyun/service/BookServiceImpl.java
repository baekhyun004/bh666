package com.baekhyun.service;

import com.baekhyun.mapper.BookMapper;
import com.baekhyun.model.Book;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class BookServiceImpl implements BookService{

    @Resource
    BookMapper bookMapper;
    @Override
    public int deleteByPrimaryKey(Integer bId) {
        return bookMapper.deleteByPrimaryKey(bId);
    }

    @Override
    public int insert(Book record) {
        return bookMapper.insert(record);
    }

    @Override
    public int insertSelective(Book record) {
        return bookMapper.insert(record);
    }

    @Override
    public Book selectByPrimaryKey(Integer bId) {
        return bookMapper.selectByPrimaryKey(bId);
    }

    @Override
    public int updateByPrimaryKeySelective(Book record) {
        return bookMapper.updateByPrimaryKeySelective(record);
    }

    @Override
    public int updateByPrimaryKey(Book record) {
        return bookMapper.updateByPrimaryKey(record);
    }

    @Override
    public List<Book> qureyAll() {
        return bookMapper.qureyAll();
    }

    @Override
    public List<Book> selectBybookType(String bType) {
        return bookMapper.selectBybookType(bType);
    }
}
