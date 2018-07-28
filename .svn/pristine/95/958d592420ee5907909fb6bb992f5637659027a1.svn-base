package com.qf.mapper;

import static org.junit.Assert.*;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.forwardedUrl;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.qf.domain.CrmClass;
import com.qf.domain.CrmCourseType;
import com.qf.domain.CrmRefer;
import com.qf.domain.CrmStudent;
import com.qf.service.CourseTypeService;
import com.qf.service.ReferService;
import com.qf.service.StudentService;
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:spring-mvc.xml")
public class CrmClassMapperTest {

	@Autowired
	private StudentService studentService;
	
	
	@Autowired
	private CourseTypeService typeService;
	
	@Autowired 
	private ReferService referService;
	@Test
	public void test() {
		List<CrmStudent> students=studentService.findStuByClassId("2c9091c14c78e58b014c78e8cc62000a");
		
       for(CrmStudent student:students){
    	   System.out.println(student.getName());
       }
	}
	
	@Test
	public void test1() {
		CrmClass info=new CrmClass();
		info.setClassid("2c9091c14c78e58b014c78e8cc62000a");
		info.setCoursetypeid("2c9091c14c78e58b014c78e829b70008");
		CrmCourseType students=typeService.findByClass(info);
		
     
    	   System.out.println(students.getCoursename());
    
	}
	@Test
	public void test2(){
		CrmRefer crmRefer=new CrmRefer();
		crmRefer.setName("阿朱");
		
		crmRefer.setReferid("1");
	
		System.out.println(crmRefer);
		
		referService.updateRefer(crmRefer);
	}

}
