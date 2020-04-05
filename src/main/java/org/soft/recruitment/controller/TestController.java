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

import java.util.List;

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
        model.addAttribute("pageInfo",pageInfo);
//		model.addAttribute("testList", testList);
		return "/test/test";

    }

}
