package com.qf.mapper;

import static org.junit.Assert.*;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.qf.domain.CrmStaff;
import com.qf.service.EmployeeService;
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:spring-mvc.xml")
public class CrmStaffMapperTest {
	@Autowired
	private  CrmStaffMapper staffMapper;
	
	@Autowired
	private EmployeeService EmployeeService;

	@Test
	public void test() {
		List<CrmStaff> staffs=staffMapper.findAll();
		for(CrmStaff staff1:staffs)
			System.out.println(staff1);
	}
	
	@Test
	public void test2(){
		List<CrmStaff>staffs=EmployeeService.findByConditions("", "");
		for(CrmStaff staff1:staffs)
			System.out.println(staff1);
	}

}
