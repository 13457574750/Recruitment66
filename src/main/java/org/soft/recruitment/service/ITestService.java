package org.soft.recruitment.service;


import org.soft.recruitment.model.Test;

import java.util.List;


public interface ITestService {

    List<Test> findAllTest(int page, int size);

    void adds(Test test);
}

