package com.qf.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.qf.domain.CrmStudent;
import com.qf.domain.CrmStudentExample;
import com.qf.domain.CrmStudentExample.Criteria;
import com.qf.mapper.CrmStudentMapper;
import com.qf.service.StudentService;
@Service
public class StudentServiceImpl implements StudentService {

	@Autowired
	private CrmStudentMapper studentMapper;
	
	public List<CrmStudent> findAll() {
		
		CrmStudentExample example=new CrmStudentExample();
		Criteria criteria=example.createCriteria();
		
		return studentMapper.selectByExample(example);
	}

	@Override
	public List<CrmStudent> findStuByPage(int currentPage, int pageSize) {
		
		return studentMapper.findStuByPage(currentPage, pageSize);
	}
	
	public List<CrmStudent> findStuByClassId(String classid){
		CrmStudentExample example=new CrmStudentExample();
		Criteria criteria=example.createCriteria();
		criteria.andClassidEqualTo(classid);
		
		return studentMapper.selectByExample(example);
		
	}

	@Override
	public void addStudent(CrmStudent student) {
	     studentMapper.insertSelective(student);
	}

	@Override
	public CrmStudent findByStudentId(String studentid) {
		// TODO Auto-generated method stub
		return studentMapper.selectByPrimaryKey(studentid);
	}

}
