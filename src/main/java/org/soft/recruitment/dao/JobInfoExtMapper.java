package org.soft.recruitment.dao;

import java.util.List;
import java.util.Map;

import org.soft.recruitment.model.JobInfoExt;

public interface JobInfoExtMapper {

	//查看并模糊查询所有工作职位
	List<JobInfoExt> findAllJob(Map<String, Object> map);
}
