package com.qf.service.impl;

import static org.junit.Assert.*;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.qf.domain.CrmStation;
import com.qf.service.StationService;
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:spring-mvc.xml")
public class StationServiceImplTest {
     
  @Autowired
  private StationService staticService;
	@Test
	public void test() {
		List<CrmStation> list = staticService.findAll();
		for(CrmStation station:list){
			System.out.println(station.getStaff());
		}
	}

}
