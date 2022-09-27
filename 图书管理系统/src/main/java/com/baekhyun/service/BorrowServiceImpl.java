package com.baekhyun.service;

import com.baekhyun.mapper.BorrowMapper;
import com.baekhyun.model.Borrow;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class BorrowServiceImpl implements BorrowService {

    @Resource
    BorrowMapper borrowMapper;

    @Override
    public int insert(Borrow record) {
        return borrowMapper.insert(record);
    }

    @Override
    public int insertSelective(Borrow record) {
        return borrowMapper.insertSelective(record);
    }

    @Override
    public List<Borrow> qureyAll() {
        return borrowMapper.qureyAll();
    }

    @Override
    public List<Borrow> selectbybId(Integer bId) {
        return borrowMapper.selectbybId(bId);
    }
}
