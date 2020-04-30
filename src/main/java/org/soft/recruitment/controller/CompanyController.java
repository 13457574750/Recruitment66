package org.soft.recruitment.controller;

import com.github.pagehelper.PageInfo;
import org.soft.recruitment.model.Company;
import org.soft.recruitment.model.Job;
import org.soft.recruitment.model.Message;
import org.soft.recruitment.model.User;
import org.soft.recruitment.service.ICompanyService;
import org.soft.recruitment.service.IJobService;
import org.soft.recruitment.service.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.UUID;

@Controller
@Scope("prototype")
@RequestMapping("/company")
public class CompanyController {

    @Autowired
    public ICompanyService companyService;

    @Autowired
    private IJobService jobService;

    @Autowired
    private IUserService userService;

    /**
     * 公司注册
     *
     * @param company
     * @return
     */
    @RequestMapping("toCompanyRegister")
    @ResponseBody
    public Message toCompanyRegister(Company company) {
        Message msg = new Message();
        int result = companyService.findCompanyByCompanyLoginName(company.getCompanyLoginName());//获得公司登录名去数据库中查询
        if (result == 1) {//公司登录名已经存在
            msg.setStr("用户名已经存在");
            return msg;
        } else if (result == 0) {//公司登录名也没被注册
            int result_ = companyService.findCompanyByCompanyName(company.getCompanyName());    //判断公司名称是否唯一
            if (result_ == 1) {
                msg.setStr("公司名称已经存在");
                return msg;
            } else {
                //公司名字也没被注册
                companyService.companyRegister(company);//插入具体数据
                msg.setStr("success");
                return msg;
            }
        }
        return msg;
    }

    /**
     * 公司登录
     *
     * @param request
     * @param companyLoginName
     * @param companyLoginPassword
     * @param model
     * @return
     */
    @RequestMapping("toCompanyLogin")
    @ResponseBody
    public Message toCompanyLogin(HttpServletRequest request, String companyLoginName, String companyLoginPassword, Model model) {
        Company currCompany = companyService.companyLogin(companyLoginName, companyLoginPassword);//根据登录名向数据库中查询公司
        Message msg = new Message();
        if (currCompany == null) {
            msg.setStr("fail");
            return msg;
        } else {
            HttpSession session = request.getSession();
            session.setAttribute("currCompany", currCompany);
            msg.setStr("success");
            return msg;
        }
    }

    /**
     * 跳转到修改密码界面
     *
     * @param model
     * @param companyId
     */
    @RequestMapping("updateCompanyPassword")
    public String updateCompanyPassword(@RequestParam(value = "page", required = true, defaultValue = "1") Integer page,
                                        @RequestParam(value = "size", required = true, defaultValue = "6") Integer size,
                                        Model model, Integer companyId) {
        Company company = companyService.findCompanyByCompanyId(page, size, companyId);
        if (company != null) {
            model.addAttribute("company", company);
        }
        return "/company/updateCompanyPassword";
    }

    /**
     * 保存密码功能
     *
     * @param companyId
     * @param company
     * @returns
     */
    @RequestMapping("saveCompanyPassword")
    public String saveCompanyPassword(Integer companyId, Company company) {
        companyService.updateCompany(companyId, company);
        return "redirect:/company/updateCompanyPassword";//重定向
    }


    /**
     * 浏览所有企业
     *
     * @param model
     * @return
     */
    @RequestMapping("findAllCompany")
    public String findAllCompany(@RequestParam(value = "page", required = true, defaultValue = "1") int page,
                                 @RequestParam(value = "size", required = true, defaultValue = "6") int size,
                                 String companyName, Model model) {
        List<Company> companyList = companyService.findAllCompany(page, size, companyName);
        //分页
        PageInfo<Company> pageInfo = new PageInfo<>(companyList);
        model.addAttribute("pageInfo", pageInfo);
        return "/company/allCompany";
    }

    /**
     * 浏览单个企业的详细信息
     *
     * @param model
     * @param companyId
     * @return
     */
    @RequestMapping("showACompany")
    public String showACompany(@RequestParam(value = "page", required = true, defaultValue = "1") int page,
                               @RequestParam(value = "size", required = true, defaultValue = "5") int size,
                               Model model, Integer companyId) {
        Company company = companyService.findCompanyByCompanyId(page, size, companyId);
        if (company != null) {
            model.addAttribute("company", company);
        }

        List<Job> jobList_ = jobService.findAllJobByCompanyId(page, size, String.valueOf(companyId));
        //分页
        PageInfo<Job> pageInfo = new PageInfo<>(jobList_);
        model.addAttribute("pageInfo", pageInfo);
        return "/company/showACompany";
    }

    /**
     * 查看本登录ID的企业信息
     *
     * @param model
     * @param request
     * @return
     */
    @RequestMapping("showCompany")
    public String showCompany(@RequestParam(value = "page", required = true, defaultValue = "1") Integer page,
                              @RequestParam(value = "size", required = true, defaultValue = "5") Integer size,
                              String companyId, Model model, HttpServletRequest request) {
        //获得session中存的当前对象
        Company currCompany = (Company) request.getSession().getAttribute("currCompany");
        Integer CompanyId = currCompany.getCompanyId();
        //根据ID查询用户并显示该用户
        Company company = companyService.findCompanyByCompanyId(page, size, CompanyId);
        model.addAttribute("company", company);

        List<Job> jobList_ = jobService.findAllJobByCompanyId(page, size, companyId);
        //分页
        PageInfo<Job> pageInfo = new PageInfo<>(jobList_);
        model.addAttribute("pageInfo", pageInfo);
        return "/company/showCompany";
    }

    /**
     * 跳转到公司修改界面
     *
     * @param model
     * @param companyId
     * @return
     */
    @RequestMapping("updateCompany")
    public String updateCompany(@RequestParam(value = "page", required = true, defaultValue = "1") Integer page,
                                @RequestParam(value = "size", required = true, defaultValue = "6") Integer size,
                                Model model, Integer companyId) {
        Company company = companyService.findCompanyByCompanyId(page, size, companyId);//根据ID查询
        if (company != null) {
            model.addAttribute("company", company);//页面回显
        }
        return "/company/updateCompany";
    }

    /**
     * 修改后保存功能
     *
     * @param companyId
     * @param company
     * @return
     */
    @RequestMapping("updateCompanySubmit")
    public String updateCompanySubmit(MultipartFile file, Integer companyId, Company company) throws IOException {
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
        company.setCompanyCreateTime(newFileName);//文件名保存到实体类对应属性上
        companyService.updateCompany(companyId, company);
        return "redirect:/company/showCompany";//重定向
    }

    /**
     * 保存公司信息
     *
     * @param model
     * @param company
     * @return
     */
    @RequestMapping("saveCompany")
    public String saveCompany(Model model, Company company) {
        companyService.saveCompany(company);
        model.addAttribute("Company", company);
        return "forward:Company/showCompany";//转发到预览信息
    }

    /**
     * 根据ID删除公司
     *
     * @param companyId
     * @return
     */
    @RequestMapping("deleteCompany")
    public String deleteCompany(Integer companyId) {
        companyService.deleteCompany(companyId);
        //重定向到列表界面
        return "redirect:/admin/company";
    }

    /**
     * 跳转到公司首页
     *
     * @param model
     * @return
     */
    @RequestMapping("companyIndex")
    public String userIndex(@RequestParam(value = "page", required = true, defaultValue = "1") int page,
                            @RequestParam(value = "size", required = true, defaultValue = "5") int size,
                            String jobName, String jobAddress, String companyName, String userRealName, Model model) {
        List<Company> companyList = companyService.findAllCompany(1, 20, companyName);
        //分页
        PageInfo<Company> pageInfoCompany = new PageInfo<>(companyList);
        model.addAttribute("pageInfoCompany", pageInfoCompany);

        List<User> userList = userService.findAllUser(page, size, userRealName);
        //分页
        PageInfo<User> pageInfoUser = new PageInfo<>(userList);
        model.addAttribute("pageInfoUser", pageInfoUser);
        return "/company/companyIndex";
    }

    /**
     * 查看所有求职者
     * @param page
     * @param size
     * @param userRealName
     * @param model
     * @return
     */
    @RequestMapping("findAllUser")
    public String findAllJob(@RequestParam(value = "page", required = true, defaultValue = "1") int page,
                             @RequestParam(value = "size", required = true, defaultValue = "5") int size,
                            String userRealName, Model model) {
        List<User> userList = userService.findAllUser(page, size, userRealName);
        //分页
        PageInfo<User> pageInfoUser = new PageInfo<>(userList);
        model.addAttribute("pageInfoUser", pageInfoUser);
        return "/company/findAllUser";
    }


    /**
     * 跳转到底部导航
     *
     * @param model
     * @return
     */
    @RequestMapping("foot")
    public String foot(Model model) {
        return "/company/foot";
    }

    /**
     * 跳转到顶部部导航
     *
     * @param model
     * @return
     */
    @RequestMapping("head")
    public String head(Model model) {
        return "/company/head";
    }

    /**
     * 跳转到博客
     *
     * @param model
     * @return
     */
    @RequestMapping("blog")
    public String blog(Model model) {
        return "/company/blog";
    }

    /**
     * 跳转到关于我们
     *
     * @param model
     * @return
     */
    @RequestMapping("aboutUs")
    public String aboutUs(Model model) {
        return "/company/aboutUs";
    }


    /**
     * 跳转到联系我们
     *
     * @param model
     * @return
     */
    @RequestMapping("contactUs")
    public String contactUs(Model model) {
        return "/company/contactUs";
    }

    /**
     * 退出登录
     *
     * @param request
     * @return
     * @throws Exception
     */
    @RequestMapping(value = "/exit")
    public String exit(HttpServletRequest request) throws Exception {
        //退出时清空session
        request.getSession().removeAttribute("currCompany");
        return "company/companyIndex";
    }
}
