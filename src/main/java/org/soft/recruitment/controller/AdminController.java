package org.soft.recruitment.controller;

import org.soft.recruitment.model.Admin;
import org.soft.recruitment.model.Company;
import org.soft.recruitment.model.Message;
import org.soft.recruitment.model.User;
import org.soft.recruitment.service.IAdminService;
import org.soft.recruitment.service.ICompanyService;
import org.soft.recruitment.service.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@Scope("prototype")
@RequestMapping("/admin")
public class AdminController {/*管理员所能使用的功能*/

    @Autowired
    private IAdminService adminService;
    @Autowired
    private IUserService userService;
    @Autowired
    private ICompanyService companyService;

    /**
     * 跳转到管理员登录页面
     * @param model
     * @return
     */
    @RequestMapping("adminLogin")
    public String adminLogin(Model model){
        return "/admin/adminLogin";
    }

    /**
     * 管理员登录功能实现
     *
     * @param request
     * @param adminLoginName
     * @param adminLoginPassword
     * @param model
     * @return
     */
    @RequestMapping("toAdminLogin")
    @ResponseBody
    public Message toAdminLogin(HttpServletRequest request, String adminLoginName, String adminLoginPassword, Model model) {
        Admin currAdmin = adminService.adminLogin(adminLoginName, adminLoginPassword);//根据登录名向数据库中查询用户
        Message msg = new Message();
        if (currAdmin == null) {
            msg.setStr("fail");
            return msg;
        } else {
            HttpSession session = request.getSession();
            session.setAttribute("currAdmin", currAdmin);
            msg.setStr("success");
            return msg;
        }
    }

    /**
     * 跳转浏览管理员界面
     *
     * @param model
     * @return
     */
    @RequestMapping("admin")
    public String admin(Model model) {
        List<Admin> adminList = adminService.findAllAdmin();
        model.addAttribute("adminList", adminList);
        return "/admin/admin";
    }

    /**
     * 跳转到后台的管理员修改界面--管理员
     * @param model
     * @param adminId
     * @return
     */
    @RequestMapping("adminUpdate")
    public String adminUpdate(Model model, Integer adminId) {
        Admin admin = adminService.findAdminByAdminId(adminId);
        if (admin != null) {
            model.addAttribute("admin", admin);
        }
        return "/admin/adminUpdate";
    }

    /**
     * 管理员修改密码界面的保存功能
     * @param adminId
     * @param admin
     * @return
     */
    @RequestMapping("adminSave")
    public String adminSave(Integer adminId, Admin admin) {
        adminService.updateAdmin(adminId, admin);
        return "redirect:admin/admin";//重定向
    }

    /**
     * 跳转到后台首页
     * @param model
     * @return
     */
    @RequestMapping("adminIndex")
    public String adminIndex(Model model){
        return "/admin/adminIndex";
    }

    /**
     * 跳转到后台头部
     * @param model
     * @return
     */
    @RequestMapping("head")
    public String head(Model model){
        return "/admin/head";
    }

    /**
     * 跳转到后台左部
     * @param model
     * @return
     */
    @RequestMapping("left")
    public String left(Model model){
        return "/admin/left";
    }

    /**
     * 跳转到后台的用户界面---浏览所有用户-----管理员使用的功能
     *
     * @param model
     * @return
     */
    @RequestMapping("user")
    public String user(Model model) {
        List<User> userList = userService.findAllUser();
        model.addAttribute("userList", userList);
        return "/admin/user";
    }

    /**
     * 跳转到后台的用户修改界面--管理员
     * @param model
     * @param userId
     * @return
     */
    @RequestMapping("userUpdate")
    public String userUpdate(Model model, Integer userId) {
        User user = userService.findUserByUserId(userId);
        if (user != null) {
            model.addAttribute("user", user);
        }
        return "/admin/userUpdate";
    }

    /**
     * 用户修改界面的保存功能
     * @param userId
     * @param user
     * @return
     */
    @RequestMapping("userSave")
    public String userSave(Integer userId, User user) {
        userService.updateUser(userId, user);
        return "redirect:admin/user";//重定向
    }

    /**
     * 后台的企业界面-----浏览所有企业----管理员使用的功能
     *
     * @param model
     * @return
     */
    @RequestMapping("company")
    public String company(@RequestParam(value = "page", required = true, defaultValue = "1") int page,
                          @RequestParam(value = "size", required = true, defaultValue = "5") int size,
                          String companyName, Model model) {
        List<Company> companyList = companyService.findAllCompany(page, size, companyName);
        model.addAttribute("companyList", companyList);
        return "/admin/company";
    }

    /**
     * 跳转到后台的企业修改界面--管理员
     * @param model
     * @param companyId
     * @return
     */
    @RequestMapping("companyUpdate")
    public String companyUpdate(Model model, Integer companyId) {
        Company company = companyService.findCompanyByCompanyId(companyId);
        if (company != null) {
            model.addAttribute("company", company);
        }
        return "/admin/companyUpdate";
    }
    /**
     * 企业修改界面的保存功能
     * @param companyId
     * @param company
     * @return
     */
    @RequestMapping("companySave")
    public String companySave(Integer companyId, Company company) {
        companyService.updateCompany(companyId, company);
        return "redirect:admin/company";//重定向
    }

    /**
     * 退出登录功能实现
     *
     * @param request
     * @return
     * @throws Exception
     */
    @RequestMapping(value = "/exit")
    public String exit(HttpServletRequest request) throws Exception {
        //退出时清空session
        request.getSession().removeAttribute("currAdmin");
        return "/admin/adminIndex";
    }
}