package com.qf.mapper;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.qf.domain.CrmGraduate;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:spring-mvc.xml")
public class CrmGraduateMapperTest {

	@Autowired
	private CrmGraduateMapper gruduateMapper;
	@Test
	public void test() {
		List<CrmGraduate> list=gruduateMapper.findAll();
		for(CrmGraduate graduate:list){
			System.out.println(graduate);
		}
	}

}
