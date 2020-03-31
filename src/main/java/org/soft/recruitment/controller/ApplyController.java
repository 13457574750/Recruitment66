package org.soft.recruitment.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.soft.recruitment.model.Apply;
import org.soft.recruitment.model.Company;
import org.soft.recruitment.model.Message;
import org.soft.recruitment.service.IApplyService;
import org.soft.recruitment.util.DateUtil;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import org.springframework.ui.Model;

@Controller
@RequestMapping("/apply")
public class ApplyController {
    @Resource
    private IApplyService applyService;

    /**
     * 企业查询所有的申请者
     *
     * @param companyName
     * @param model
     * @param request
     * @return
     */
    @RequestMapping("companyShowApply")
    public String companyShowApply(String companyName, Model model, HttpServletRequest request) {
        Company currCompany = (Company) request.getSession().getAttribute("currCompany");
        if (currCompany != null) {
            List<Apply> applyList = applyService.findApplyByCompanyName(companyName);
            model.addAttribute("applyList", applyList);
        }
        return "/apply/companyShowApply";
    }

    /**
     * 查询全部当前用户的全部投递记录
     *
     * @param userRealName
     * @param model
     * @return
     */
    @RequestMapping("userShowApply")
    public String userShowApply(String userRealName, Model model) {
        List<Apply> applyList_ = applyService.findApplyByUserRealName(userRealName);
        model.addAttribute("applyList_", applyList_);

        return "/apply/userShowApply";
    }

    /**
     * 投递简历插入具体数据到表
     *
     * @param applyReleaseTime
     * @param companyName
     * @param companyCreateTime
     * @param userRealName
     * @param jobId
     * @return
     */
    @RequestMapping("/addApply")
    @ResponseBody
    public Message addApply(String applyReleaseTime, String companyName, String companyCreateTime, String userRealName, Integer jobId) {
        Message message = new Message();
        Apply apply = applyService.findAllApply(userRealName, String.valueOf(jobId));
        if (userRealName == null || userRealName.isEmpty()) {
            message.setStr("请先登录!");
            return message;
        }
        if (apply == null) {
            //插入职位具体数据
            Apply apply_ = new Apply();
            apply_.setApplyReleaseTime(applyReleaseTime);
            apply_.setCompanyName(companyName);
            apply_.setCompanyCreateTime(companyCreateTime);
            apply_.setUserRealName(userRealName);
            apply_.setJobId(String.valueOf(jobId));

            int result = applyService.insertApply(apply_);
            if (result == 1) {
                message.setStr("投递成功!");
                return message;
            } else {
                message.setStr("投递失败!");
                return message;
            }
        } else {
            message.setStr("请不要重复投递!");
            return message;
        }
    }

    /**
     * 根据ID删除职位投递记录
     *
     * @param applyId
     * @return
     */
    @RequestMapping("deleteApply")
    public String deleteApply(Integer applyId) {
        applyService.deleteApply(applyId);
        // 重定向到投递记录界面
        return "redirect:/apply/userShowApply";
    }
}
