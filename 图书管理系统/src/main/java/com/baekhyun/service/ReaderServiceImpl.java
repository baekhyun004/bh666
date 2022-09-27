package com.baekhyun.service;

import com.baekhyun.mapper.ReaderMapper;
import com.baekhyun.model.Reader;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class ReaderServiceImpl implements ReaderService {

    @Resource
    ReaderMapper readerMapper;

    @Override
    public int deleteByPrimaryKey(Integer sId) {
        return readerMapper.deleteByPrimaryKey(sId);
    }

    @Override
    public int insert(Reader record) {
        return readerMapper.insert(record);
    }

    @Override
    public int insertSelective(Reader record) {
        return readerMapper.insertSelective(record);
    }

    @Override
    public Reader selectByPrimaryKey(Integer sId) {
        return readerMapper.selectByPrimaryKey(sId);
    }

    @Override
    public int updateByPrimaryKeySelective(Reader record) {
        return readerMapper.updateByPrimaryKeySelective(record);
    }

    @Override
    public int updateByPrimaryKey(Reader record) {
        return readerMapper.updateByPrimaryKey(record);
    }

    @Override
    public List<Reader> qureyAll() {
        return readerMapper.qureyAll();
    }
}
