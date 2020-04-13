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
import org.springframework.web.multipart.MultipartFile;

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
    public String add(MultipartFile file, Test test) throws Exception {
        //图片上传成功后，将图片的地址写到数据库
        String filePath = "C:\\IDEA-workspace\\Recruitment\\src\\main\\webapp\\images";//保存图片的路径,tomcat中有配置
        //获取原始图片的拓展名
        String originalFilename = file.getOriginalFilename();
        //新的文件名字，使用uuid随机生成数+原始图片名字，这样不会重复
        String newFileName = UUID.randomUUID() + originalFilename;
        //封装上传文件位置的全路径，就是硬盘路径+文件名
        File targetFile = new File(filePath, newFileName);
        //把本地文件上传到已经封装好的文件位置的全路径就是上面的targetFile
        file.transferTo(targetFile);//把本地文件上传到文件位置 , transferTo()是springMvc封装的方法，用于图片上传时，把内存中图片写入磁盘
        test.setTestName(newFileName);//文件名保存到实体类对应属性上
        testService.adds(test);
        return "/test/test";
    }
}
