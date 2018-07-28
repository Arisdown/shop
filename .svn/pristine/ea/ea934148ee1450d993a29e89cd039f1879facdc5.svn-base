package com.test.service.impl;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.ui.Model;

import com.qf.controller.ReferController;
import com.qf.domain.CrmCourseType;
import com.qf.domain.CrmStudent;
import com.qf.mapper.CrmCourseTypeMapper;
import com.qf.service.StudentService;
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:spring-mvc.xml")
public class StudentServiceImplTest {
	
	@Autowired
	private StudentService studentService;
	@Autowired
	private CrmCourseTypeMapper typeMapper;

	@Test
	public void test() {
		for(CrmStudent student:studentService.findStuByPage(1, 3)){
			System.out.println(student);
		}
	}
	@Test
	public void test1() {
		for(CrmStudent student:studentService.findAll()){
			System.out.println(student);
		}
	}
	
	@Test
	public void test2() {
		for(CrmCourseType student:typeMapper.findAll()){
			System.out.println(student.getCoursename());
		}
	}
	
}
