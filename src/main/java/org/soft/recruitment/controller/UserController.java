package org.soft.recruitment.controller;

import com.github.pagehelper.PageInfo;
import org.soft.recruitment.model.*;
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

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.UUID;


@Controller
@Scope("prototype")
@RequestMapping("/user")
public class UserController {

    @Autowired
    public IUserService userService;

    @Autowired
    private ICompanyService companyService;

    @Autowired
    private IJobService jobService;

    /**
     * 用户注册
     *
     * @param user
     * @return
     */
    @RequestMapping("toUserRegister")
    @ResponseBody
    public Message toUserRegister(User user) {
        Message msg = new Message();
        // 根据登录名来判断
        int result = userService.findUserByUserLoginName(user.getUserLoginName());
        if (result == 1) {//登录名已经有了
            msg.setStr("用户名已经存在");
            return msg;
        } else {
            userService.userRegister(user);//插入具体数据
            msg.setStr("success");
            return msg;
        }
    }

    /**
     * 用户登录
     *
     * @param request
     * @param userLoginName
     * @param userLoginPassword
     * @param model
     * @return
     */
    @RequestMapping("toUserLogin")
    @ResponseBody
    public Message toUserLogin(HttpServletRequest request, String userLoginName, String userLoginPassword, Model model) {
        User currUser = userService.userLogin(userLoginName, userLoginPassword);//根据登录名向数据库中查询用户
        Message msg = new Message();
        if (currUser == null) {
            msg.setStr("fail");
            return msg;
        } else {
            HttpSession session = request.getSession();
            session.setAttribute("currUser", currUser);
            msg.setStr("success");
            return msg;
        }
    }


    /**
     * 跳转到修改密码界面
     *
     * @param model
     * @param userId
     */
    @RequestMapping("updateUserPassword")
    public String updateUserPassword(Model model, Integer userId) {
        User user = userService.findUserByUserId(userId);
        if (user != null) {
            model.addAttribute("user", user);
        }
        return "/user/updateUserPassword";
    }

    /**
     * 保存密码功能
     *
     * @param userId
     * @param user
     * @return
     */
    @RequestMapping("saveUserPassword")
    public String saveUserPassword(Integer userId, User user) {
        userService.updateUser(userId, user);
        return "redirect:/user/updateUserPassword";//重定向
    }


    /**
     * 根据用户真实姓名查找用户
     *
     * @param userRealName
     * @param model
     * @return
     */
    @RequestMapping("findUserByUserRealName")
    public String findUserByUserRealName(String userRealName, Model model) {
        User user = userService.findUserByUserRealName(userRealName);
        if (user != null) {
            model.addAttribute("user", user);
            return "/user/findUserByUserRealName";
        } else {
            throw new RuntimeException("对不起，没有该用户的具体信息");
        }
    }

    /**
     * 根据用户ID查询用户
     *
     * @param userId
     * @param model
     * @return
     */
    @RequestMapping("findUserByUserId")
    public String findUserByUserId(Integer userId, Model model) {
        User user = userService.findUserByUserId(userId);
        if (user != null) {
            model.addAttribute("user", user);
            return "/company/findUserByUserId";
        } else {
            throw new RuntimeException("对不起，没有该用户的具体信息");
        }
    }

    /**
     * 查看当前ID的用户信息
     *
     * @param model
     * @param request
     * @return
     */
    @RequestMapping("showUser")
    public String showUser(Model model, HttpServletRequest request) {
        //获得session中存的当前对象
        User currUser = (User) request.getSession().getAttribute("currUser");
        Integer UserId = currUser.getUserId();
        //  根据ID查询用户并显示该用户
        User user = userService.findUserByUserId(UserId);
        model.addAttribute("user", user);
        return "/user/showUser";
    }

    /**
     * 查看当前ID的用户招聘信息
     *
     * @param model
     * @param request
     * @return
     */
    @RequestMapping("showResume")
    public String showResume(Model model, HttpServletRequest request) {
        //获得session中存的当前对象
        User currUser = (User) request.getSession().getAttribute("currUser");
        Integer UserId = currUser.getUserId();
        //  根据ID查询用户并显示该用户
        User user = userService.findUserByUserId(UserId);
        model.addAttribute("user", user);
        return "/user/showResume";
    }

    /**
     * 跳转到用户简历修改界面
     *
     * @param model
     * @param userId
     * @return
     */
    @RequestMapping("updateResume")
    public String updateResume(Model model, Integer userId) {
        User user = userService.findUserByUserId(userId);
        if (user != null) {
            model.addAttribute("user", user);
        }
        return "/user/updateResume";
    }

    /**
     * 修改界面的保存功能
     *
     * @param userId
     * @param user
     * @return
     */
    @RequestMapping("saveResume")
    public String saveResume(Integer userId, User user) {
        //保存数据库的路径
        String sqlPath = null;
        //定义文件保存的本地路径
        String localPath = "C:\\IDEA-workspace\\Recruitment\\src\\main\\webapp\\images\\";
        //定义 文件名
        String filename = null;
        if (!user.getFile().isEmpty()) {
            //生成uuid作为文件名称
            String uuid = UUID.randomUUID().toString().replaceAll("-", "");
            //获得文件类型（可以判断如果不是图片，禁止上传）
            String contentType = user.getFile().getContentType();
            //获得文件后缀名
            String suffixName = contentType.substring(contentType.indexOf("/") + 1);
            //得到 文件名
            filename = uuid + "." + suffixName;
            //文件保存路径
            try {
                user.getFile().transferTo(new File(localPath + filename));
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
        //把图片的相对路径保存至数据库
        sqlPath = filename;
        user.setUserCreateTime(sqlPath);
        userService.updateUser(userId, user);
        return "redirect:/user/showResume";//重定向
    }

    /**
     * 保存用户信息
     *
     * @param model
     * @param user
     * @return
     */
    @RequestMapping("saveUser")
    public String saveUser(Model model, User user) {
        userService.saveUser(user);
        model.addAttribute("user", user);
        return "forward:user/showUser";//转发到预览信息
    }

    /**
     * 跳转到用户首页
     *
     * @param model
     * @return
     */
    @RequestMapping("userIndex")
    public String userIndex(Model model) {
        return "/user/userIndex";
    }

    /**
     * 跳转到底部导航
     *
     * @param model
     * @return
     */
    @RequestMapping("foot")
    public String foot(Model model) {
        return "/user/foot";
    }

    /**
     * 跳转到顶部部导航
     *
     * @param model
     * @return
     */
    @RequestMapping("head")
    public String head(Model model) {
        return "/user/head";
    }

    /**
     * 跳转到博客
     *
     * @param model
     * @return
     */
    @RequestMapping("blog")
    public String blog(Model model) {
        return "/user/blog";
    }

    /**
     * 跳转到关于我们
     *
     * @param model
     * @return
     */
    @RequestMapping("aboutUs")
    public String aboutUs(Model model) {
        return "/user/aboutUs";
    }


    /**
     * 跳转到联系我们
     *
     * @param model
     * @return
     */
    @RequestMapping("contactUs")
    public String contactUs(Model model) {
        return "/user/contactUs";
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
                                 String companyName, String jobName, String jobAddress,Integer jobId, Model model) {
        List<Company> companyList = companyService.findAllCompany(page, size, companyName);
        //分页
        PageInfo<Company> pageInfo = new PageInfo<>(companyList);
        model.addAttribute("pageInfo", pageInfo);

        Job job = jobService.findJobByJobId(jobId);
        if (job != null) {
            model.addAttribute("job", job);
        }
        return "/user/allCompany";
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
                               Model model, Integer companyId, String jobName, String jobAddress, String companyName) {
        Company company = companyService.findCompanyByCompanyId(page,size,companyId);
        if (company != null) {
            model.addAttribute("company", company);
        }

        List<Job> jobList = jobService.findAllJob(page, size, jobName, jobAddress, companyName);
        PageInfo<Job> pageInfo = new PageInfo<>(jobList);
        model.addAttribute("pageInfo", pageInfo);
        return "/user/showACompany";
    }


    /**
     * 根据ID删除用户
     *
     * @param userId
     * @return
     */
    @RequestMapping("deleteByUserId")
    public String deleteByUserId(Integer userId) {
        userService.deleteByUserId(userId);
        // 重定向到用户列表界面
        return "redirect:/admin/user";

    }

    /**
     * 查询出所有职位信息
     *
     * @param jobName
     * @param jobAddress
     * @param companyName
     * @param model
     * @return
     */
    @RequestMapping("findAllJob")
    public String findAllJob(@RequestParam(value = "page", required = true, defaultValue = "1") int page,
                             @RequestParam(value = "size", required = true, defaultValue = "5") int size,
                             String jobName, String jobAddress, String companyName, Model model) {
        List<Job> jobList = jobService.findAllJob(page, size, jobName, jobAddress, companyName);
        PageInfo<Job> pageInfo = new PageInfo<>(jobList);
        model.addAttribute("pageInfo", pageInfo);
        return "/user/allJob";
    }

    /**
     * 浏览单个工作的的详细信息
     *
     * @param model
     * @param jobId
     * @return
     */
    @RequestMapping("showAJob")
    public String showAJob(@RequestParam(value = "page", required = true, defaultValue = "1") Integer page,
                           @RequestParam(value = "size", required = true, defaultValue = "6") Integer size,
                           Model model, Integer jobId, Integer companyId) {
        Job job = jobService.findJobByJobId(jobId);
        if (job != null) {
            model.addAttribute("job", job);
        }

        Company company = companyService.findCompanyByCompanyId(page, size, companyId);
        if (company != null) {
            model.addAttribute("company", company);
        }

        return "/user/showAJob";
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
        // 退出时清空session
        request.getSession().removeAttribute("currUser");
        return "user/userIndex";
    }

}
