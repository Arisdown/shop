package com.qf.service.impl;

import static org.junit.Assert.*;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.qf.domain.CrmRefer;
import com.qf.domain.PageBean;
import com.qf.service.ReferService;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:spring-mvc.xml")
public class ReferServiceImplTest {

	@Autowired
	private ReferService referService;
	@Test
	public void test() {
		PageBean<CrmRefer> pb=referService.findByPage(0, 7);
		System.out.println(pb.getCurrentPage());
		System.out.println(pb.getPageSize());
		System.out.println(pb.getTotalPage());
		System.out.println(pb.getTotalRecord());
		for(CrmRefer refer:pb.getDatas()){
			System.out.println(refer);
		}
	}

}
