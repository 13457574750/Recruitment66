package org.soft.recruitment.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import com.github.pagehelper.PageInfo;
import org.soft.recruitment.model.Apply;
import org.soft.recruitment.model.Company;
import org.soft.recruitment.model.Favorites;
import org.soft.recruitment.model.Message;
import org.soft.recruitment.service.IApplyService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
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
    public String companyShowApply(@RequestParam(value = "page", required = true, defaultValue = "1") int page,
                                   @RequestParam(value = "size", required = true, defaultValue = "5") int size,
                                   String companyName, Model model, HttpServletRequest request) {
        Company currCompany = (Company) request.getSession().getAttribute("currCompany");
        if (currCompany != null) {
            List<Apply> applyList_ = applyService.findApplyByCompanyName(page,size,companyName);
            //分页
            PageInfo<Apply> pageInfo = new PageInfo<>(applyList_);
            model.addAttribute("pageInfo", pageInfo);
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
    public String userShowApply(@RequestParam(value = "page", required = true, defaultValue = "1") int page,
                                @RequestParam(value = "size", required = true, defaultValue = "5") int size,
                                String userRealName, Model model) {
        List<Apply> applyList_ = applyService.findApplyByUserRealName(page, size, userRealName);
        //分页
        PageInfo<Apply> pageInfo = new PageInfo<>(applyList_);
        model.addAttribute("pageInfo", pageInfo);
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
    public Message addApply(String applyReleaseTime, String companyName, String companyCreateTime, String userRealName,
                            Integer jobId, String jobName, String jobAddress, String jobSalary, String jobEr, String jobEducation,
                            String jobReleaseTime, String jobType) {
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
            apply_.setJobId(String.valueOf(jobId));
            apply_.setJobName(jobName);
            apply_.setJobAddress(jobAddress);
            apply_.setJobSalary(jobSalary);
            apply_.setJobEr(jobEr);
            apply_.setJobEducation(jobEducation);
            apply_.setJobReleaseTime(jobReleaseTime);
            apply_.setJobType(jobType);
            apply_.setCompanyName(companyName);
            apply_.setCompanyCreateTime(companyCreateTime);
            apply_.setUserRealName(userRealName);

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

    /**
     * 根据ID删除职位投递记录
     *
     * @param applyId
     * @return
     */
    @RequestMapping("deleteApply2")
    public String deleteApply2(Integer applyId) {
        applyService.deleteApply(applyId);
        // 重定向到投递记录界面
        return "redirect:/apply/userShowApply";
    }
}
