package com.qf.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.qf.domain.CrmPost;
import com.qf.mapper.CrmPostMapper;
import com.qf.service.PostService;

@Service

public class PostServiceImpl implements PostService{
	@Autowired
	private CrmPostMapper postMapper;

	@Override
	public List<CrmPost> findAll() {
	
		return postMapper.findAll();
	}

	@Override
	public CrmPost findByPostId(String postid) {
		
		return postMapper.selectByPrimaryKey(postid);
	}

	@Override
	public int addDept(String depid,String postname) {
		
		return postMapper.addPost(depid, postname);
	}

	@Override
	public int update(String deptid, String postname, String postid) {
		CrmPost post=new CrmPost();
		post.setDepid(deptid);
		post.setPostid(postid);
		post.setPostname(postname);
		return postMapper.updateByPrimaryKey(post);
	}

	@Override
	public List<CrmPost> findByDeptId(String depid) {
		// TODO Auto-generated method stub
		return postMapper.findByDeptId(depid);
	}
	
	

}
