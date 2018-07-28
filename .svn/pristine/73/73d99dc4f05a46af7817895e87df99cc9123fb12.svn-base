package com.qf.controller;

import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.qf.domain.CrmFollow;
import com.qf.service.FollowService;
import com.qf.utils.UUIDUtils;

@Controller
@RequestMapping("/follow")
public class FollowController {
	
	@Autowired
	private FollowService followService;
	
	@RequestMapping("/add")
	public String follow(CrmFollow follow){
		follow.setFollowtime(new Date());
		follow.setFollowid(UUIDUtils.getId());
		followService.addFollow(follow);
		return "/follow/addFollow";
	}
	
	@RequestMapping("/editUI")
	public String followUI(String referid,String staffid,Model model){
		model.addAttribute("referid",referid);
		model.addAttribute("staffid", referid);
		return "/follow/addFollow";
	}
	
	@RequestMapping("/query")
	public  String query(String referid,Model model){
		CrmFollow follow=followService.queryByReferid(referid);
		model.addAttribute("follow", follow);
		return "/follow/queryFollow";
		
	}

}
