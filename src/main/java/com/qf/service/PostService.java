package com.qf.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.qf.domain.CrmPost;


public interface PostService {
	
	   //所有职位信息
		List<CrmPost> findAll();
		
		//修改
		CrmPost findByPostId(String postid);
		
		//添加
		int addDept(String depid,String postname);
		
		int update(String deptid,String postname,String postid);

	    List<CrmPost> findByDeptId( String depid);

}
