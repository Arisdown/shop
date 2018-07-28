package com.test.service.impl;

import static org.springframework.test.web.servlet.result.MockMvcResultHandlers.print;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.qf.domain.CrmRefer;
import com.qf.domain.CrmStaff;
import com.qf.service.EmployeeService;
import com.qf.service.ReferService;
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:spring-mvc.xml")
public class EmployeeServiceImplTest {
	@Autowired
	private EmployeeService employeeService;
	
	@Autowired
	private ReferService referService;

	@Test
	public void test() {
		CrmStaff staff=employeeService.findByStaffId("1");
		
		System.out.println(staff.getStaffname());
	}
	
	@Test
	public void test1(){
		List<CrmRefer> list=referService.findByNameOrQQOrtelephone("1");
		for(CrmRefer ref:list){
			System.out.print(ref.getTelephone()+""+ref.getName());
		}
	}
	@Test
	public void test2(){
		CrmStaff staff=employeeService.loginByNameAndPassword("admin", "123");
		System.out.println(staff.getStaffname());
	}

}
