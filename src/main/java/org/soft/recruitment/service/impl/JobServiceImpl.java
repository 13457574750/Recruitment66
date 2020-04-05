package org.soft.recruitment.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.github.pagehelper.PageHelper;
import org.apache.commons.lang.StringUtils;
import org.soft.recruitment.dao.JobMapper;
import org.soft.recruitment.model.Job;
import org.soft.recruitment.model.JobExample;
import org.soft.recruitment.model.JobExample.Criteria;
import org.soft.recruitment.model.UserExample;
import org.soft.recruitment.service.IJobService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;


@Service
@Transactional
public class JobServiceImpl implements IJobService {

	@Resource
	private JobMapper jobMapper;

	/**
	 * 查询所有的工作
	 * @param jobName
	 * @param jobAddress
	 * @param companyName
	 * @return
	 */
	public List<Job> findAllJob(int page, int size, String jobName, String jobAddress, String companyName) {
		Map<String, Object> map = new HashMap<>();
		map.put("jobName", jobName);
		map.put("jobAddress", jobAddress);
		map.put("companyName", companyName);

		PageHelper.startPage(page, size);
		return jobMapper.findAllJob(map);
	}


    /**
	 * 查询指定companyId下的jobName,目的是判断新增工作是否重复
	 * @param companyId
	 * @param jobName
	 * @return
	 */
	public Job findJobNameByCompanyId(Integer companyId, String jobName) {
		JobExample example=new JobExample();
		Criteria criteria = example.createCriteria();
		if (StringUtils.isNotBlank(jobName)) {
			criteria.andJobNameEqualTo(jobName);
		}
		criteria.andCompanyIdEqualTo(companyId+"");
		List<Job> jobList = jobMapper.selectByExample(example);
		if (jobList != null && !jobList.isEmpty()) {
			return jobList.get(0);
		}
		return null;
	}

	/**
	 * 根据jobId查询job详细新信息
	 *
	 * @param jobId
	 * @return
	 */
	public Job findJobByJobId(Integer jobId) {
		Job job = jobMapper.selectByPrimaryKey(jobId);
		return job;
	}

	/**
	 * 插入新职位
	 * */
	public int insertJob(Job job) {
		int result = jobMapper.insert(job);
		return result;
	}
}
