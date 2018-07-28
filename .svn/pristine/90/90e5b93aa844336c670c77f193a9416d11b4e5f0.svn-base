package com.qf.service;

import java.util.List;

import com.qf.controller.po.QueryConditions;
import com.qf.domain.CrmClass;
import com.qf.domain.CrmCourseType;

public interface CourseTypeService {
	
	public List<CrmCourseType> findAll();
	
	public CrmCourseType findByClass(CrmClass info);

	public CrmCourseType findByTypeId(String id);

	public int updateType(CrmCourseType courseType);

	public int addCourse(CrmCourseType courseType);
	
	List<CrmCourseType> findByCondition(QueryConditions conditions);

}
