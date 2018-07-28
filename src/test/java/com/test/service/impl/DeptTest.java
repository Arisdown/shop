package com.test.service.impl;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.qf.domain.CrmDepartment;
import com.qf.domain.CrmPost;
import com.qf.service.DeptService;
import com.qf.service.PostService;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:spring-mvc.xml")
public class DeptTest {
	
	@Autowired
	private DeptService deptService;
	
	@Autowired
	private PostService postService;
	
	@Test
	public void test(){
		List<CrmDepartment> departments=deptService.findAll();
		for(CrmDepartment department:departments){
			System.out.println(department.getDepname());
		}
	}
	@Test
	public void test1(){	
		int rows=deptService.updateDept("2c9091c14c78e58b014c78e68ded0002", "技术部");
		
		if(rows>0){
			System.out.println("seccess");
		}
	}
	
	@Test 
   public void test2(){
		int rows=deptService.addDept("人事部");
		if(rows>0){
			System.out.println("seccess");
		}
	}
	@Test 
	   public void test3(){
			List<CrmPost> posts=postService.findAll();
			
			for(CrmPost post:posts){
				System.out.println(post);
			}
		}
	@Test 
	   public void test4(){
			CrmPost post=postService.findByPostId("2c9091c14c78e58b014c78e6f2340005");
			
			
				System.out.println(post);
			
		}

}
