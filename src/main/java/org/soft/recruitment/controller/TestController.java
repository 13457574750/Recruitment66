package org.soft.recruitment.controller;

import com.github.pagehelper.PageInfo;
import org.soft.recruitment.model.Test;
import org.soft.recruitment.service.ITestService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.util.List;
import java.util.UUID;

@Controller
@Scope("prototype")
@RequestMapping("/test")

public class TestController {

    @Autowired
    public ITestService testService;

    //采用分页代码方法
    @RequestMapping("test")
    public String findAll(@RequestParam(value = "page", required = true, defaultValue = "1") int page,
                          @RequestParam(value = "size", required = true, defaultValue = "5") int size, Model model) {
        List<Test> testList = testService.findAllTest(page, size);

        //PageInfo就是一个分页Bean
        PageInfo<Test> pageInfo = new PageInfo<>(testList);
        model.addAttribute("pageInfo", pageInfo);
        return "/test/test";

    }

    @RequestMapping("add")
    public String add(Test test, HttpServletRequest request, Model model) throws Exception {
        //保存数据库的路径
        String sqlPath = null;
        //定义文件保存的本地路径
        String localPath = "C:\\IDEA-workspace\\Recruitment\\src\\main\\webapp\\images\\";
        //定义 文件名
        String filename = null;
        if (!test.getFile().isEmpty()) {
            //生成uuid作为文件名称
            String uuid = UUID.randomUUID().toString().replaceAll("-", "");
            //获得文件类型（可以判断如果不是图片，禁止上传）
            String contentType = test.getFile().getContentType();
            //获得文件后缀名
            String suffixName = contentType.substring(contentType.indexOf("/") + 1);
            //得到 文件名
            filename = uuid + "." + suffixName;
            //文件保存路径
            test.getFile().transferTo(new File(localPath + filename));
        }
        //把图片的相对路径保存至数据库
        sqlPath = filename;
        test.setTestName(sqlPath);
        test.setTestSex(request.getParameter("testSex"));
        testService.adds(test);
        return "/test/test";
    }
}
