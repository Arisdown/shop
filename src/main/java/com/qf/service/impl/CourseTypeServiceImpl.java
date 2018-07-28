package com.qf.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.qf.controller.po.QueryConditions;
import com.qf.domain.CrmClass;
import com.qf.domain.CrmCourseType;
import com.qf.domain.CrmCourseTypeExample;
import com.qf.domain.CrmCourseTypeExample.Criteria;
import com.qf.mapper.CrmCourseTypeMapper;
import com.qf.service.CourseTypeService;

@Service
public class CourseTypeServiceImpl implements CourseTypeService{

	@Autowired
	private CrmCourseTypeMapper courseTypeMapper;
	@Override
	public List<CrmCourseType> findAll() {
		
		return courseTypeMapper.findAll();
	}
	
	public CrmCourseType findByClass(CrmClass info){
		
		CrmCourseTypeExample example=new CrmCourseTypeExample();
		Criteria criteria=example.createCriteria();
		criteria.andCoursetypeidEqualTo(info.getCoursetypeid());
		List<CrmCourseType> types=courseTypeMapper.selectByExample(example);
		
		return types.get(0);
	}

	@Override
	public CrmCourseType findByTypeId(String id) {
		
		return courseTypeMapper.selectByPrimaryKey(id);
	}

	@Override
	public int updateType(CrmCourseType courseType) {
		
		return courseTypeMapper.updateByPrimaryKeySelective(courseType);
	}

	@Override
	public int addCourse(CrmCourseType courseType) {
		
		return courseTypeMapper.insertSelective(courseType);
	}

	@Override
	public List<CrmCourseType> findByCondition(QueryConditions conditions) {
		
		return courseTypeMapper.findByCondition(conditions);
	}

}
