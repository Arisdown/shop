package com.qf.controller;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSON;
import com.qf.domain.CrmPost;
import com.qf.service.PostService;

@Controller
public class PostController {
	
	@Autowired
	private PostService postService;
	
	@RequestMapping("/post/list")
	public String list(Model model){
		
		List<CrmPost> posts=postService.findAll();
		model.addAttribute("list",posts);
		
		return "post/listPost";
		
	}
	@RequestMapping("/post/add")
	public String add(String depid,String postname){
		
		postService.addDept(depid, postname);
		
		return "redirect:/post/list.do";
		
	}
	@RequestMapping("/post/updateUI")
	public String editUI(String id,Model model){
		model.addAttribute("post", postService.findByPostId(id));
		
		return "/post/editPost";

	}
	
	@RequestMapping("/post/update")
	public String update(String depid,String postname,String postid){
		
		postService.update(depid, postname, postid);
		
		return "redirect:/post/list.do";
	}
	@RequestMapping(value="/post/select",method={RequestMethod.GET},produces="application/json;charset=utf-8")
	public @ResponseBody String select(){
		
		List<CrmPost> posts=postService.findAll();
		String json=JSON.toJSONString(posts);
		
		return json;
		
	}
	@RequestMapping(value="/post/selectBydepId",produces="application/json;charset=utf-8")
	public @ResponseBody String postSelect(String id,Model model){
		List<CrmPost> post= postService.findByDeptId(id);
		
		String json=JSON.toJSONString(post);
		System.out.println(json);
		return json;

	}

}
