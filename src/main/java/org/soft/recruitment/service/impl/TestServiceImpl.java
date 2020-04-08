package org.soft.recruitment.service.impl;

import com.github.pagehelper.PageHelper;
import org.soft.recruitment.dao.TestMapper;
import org.soft.recruitment.model.Test;
import org.soft.recruitment.service.ITestService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class TestServiceImpl implements ITestService {
    @Resource
    private TestMapper testMapper;

    public List<Test> findAllTest(int page, int size) {
        //参数pageNum 是页码值   参数pageSize 代表是每页显示条数
        PageHelper.startPage(page, size);
        return testMapper.findAll();
    }

    public void adds(Test test) {
        testMapper.add(test);
    }
}