package org.soft.recruitment.controller;

import java.util.List;

import com.github.pagehelper.PageInfo;
import org.soft.recruitment.model.*;
import org.soft.recruitment.service.ICompanyService;
import org.soft.recruitment.service.IJobService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;

@Controller
@Scope("prototype")
@RequestMapping("/job")
public class JobController {
    @Autowired
    private IJobService jobService;

    @Autowired
    private ICompanyService companyService;

    /**
     * 查询出所有职位信息
     * jobInfoExt 职位详细信息对象
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
        //分页
        PageInfo<Job> pageInfo = new PageInfo<>(jobList);
        model.addAttribute("pageInfo", pageInfo);
        return "/job/allJob";
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

        return "/job/showAJob";
    }

    /**
     * 浏览单个企业的全部工作
     *
     * @param companyId
     * @param model
     * @return
     */
    @RequestMapping("showACompanyJob")
    public String showACompanyJob(@RequestParam(value = "page", required = true, defaultValue = "1") int page,
                                  @RequestParam(value = "size", required = true, defaultValue = "5") int size,
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
        return "/job/showACompanyJob";
    }

    /**
     * 添加职位
     *
     * @param request
     * @param jobName
     * @param jobAddress
     * @param jobSalary
     * @param jobEr
     * @param jobEducation
     * @param jobType
     * @param jobReleaseTime
     * @param jobNumber
     * @param jobWelfare
     * @param jobContent
     * @param jobRequirements
     * @param companyId
     * @return
     */
    @ResponseBody
    @RequestMapping("toAddPost")
    public Message toAddPost(HttpServletRequest request, String jobName, String jobAddress, String jobSalary, String jobEr,
                             String jobEducation, String jobType, String jobReleaseTime, String jobNumber, String jobWelfare,
                             String jobContent, String jobRequirements, Integer companyId) {
        Message msg = new Message();
        Company company = (Company) request.getSession().getAttribute("currCompany");
        if (company != null) {
            Job job = jobService.findJobNameByCompanyId(companyId, jobName);
            if (job == null) {
                //将数据封装到新的job对象，插入数据库
                Job job_ = new Job();
                job_.setJobName(jobName);
                job_.setJobSalary(jobSalary);
                job_.setJobAddress(jobAddress);
                job_.setJobEr(jobEr);
                job_.setJobEducation(jobEducation);
                job_.setJobType(jobType);
                job_.setJobReleaseTime(jobReleaseTime);
                job_.setJobNumber(jobNumber);
                job_.setJobWelfare(jobWelfare);
                job_.setJobContent(jobContent);
                job_.setJobRequirements(jobRequirements);
                job_.setCompanyId(String.valueOf(companyId));

                int result = jobService.insertJob(job_);
                if (result == 1) {
                    msg.setStr("Yes");
                    return msg;
                } else {
                    msg.setStr("发布失败");
                    return msg;
                }
            } else {
                msg.setStr("发布的职位名称已存在");
                return msg;
            }
        } else {
            msg.setStr("No");
            return msg;
        }
    }

    /**
     * 跳转到添加职位页面
     *
     * @param model
     * @return
     */
    @RequestMapping("addPost")
    public String addPost(Model model) {
        return "/job/addPost";
    }

    /**
     * 根据ID删除职位
     *
     * @param jobId
     * @return
     */
    @RequestMapping("deleteJob")
    public String deleteJob(Integer jobId) {
        jobService.deleteJob(jobId);
        // 重定向到用户列表界面
        return "redirect:/job/showACompanyJob";
    }
}
