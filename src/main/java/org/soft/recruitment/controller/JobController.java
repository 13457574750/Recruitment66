package org.soft.recruitment.controller;

import java.util.List;

import org.soft.recruitment.model.Job;
import org.soft.recruitment.service.IJobService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@Scope("prototype")
@RequestMapping("/job")
public class JobController {
	@Autowired
	private IJobService jobService;

	/**
	 * 查询出所有职位信息
	 * jobInfoExt 职位详细信息对象
	 * @param jobName
	 * @param jobAddress
	 * @param companyName
	 * @param model
	 * @return
	 */
	@RequestMapping("findAllJob")
	public String findAllJob(String jobName,String jobAddress,String companyName,Model model){
		List<Job> jobList = jobService.findAllJob(jobName,jobAddress,companyName);
		model.addAttribute("jobList", jobList);
		return "/job/allJob";
	}




}
