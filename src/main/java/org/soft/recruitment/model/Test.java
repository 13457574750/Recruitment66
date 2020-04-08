package org.soft.recruitment.model;

import org.springframework.web.multipart.MultipartFile;

public class Test {
    private Integer testId;

    private String testName;

    private String testSex;


    public MultipartFile getFile() {
        return file;
    }

    public void setFile(MultipartFile file) {
        this.file = file;
    }

    private MultipartFile file;





    public Integer getTestId() {
        return testId;
    }

    public void setTestId(Integer testId) {
        this.testId = testId;
    }

    public String getTestName() {
        return testName;
    }

    public void setTestName(String testName) {
        this.testName = testName == null ? null : testName.trim();
    }

    public String getTestSex() {
        return testSex;
    }

    public void setTestSex(String testSex) {
        this.testSex = testSex == null ? null : testSex.trim();
    }
}