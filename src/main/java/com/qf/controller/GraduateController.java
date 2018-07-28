package com.qf.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.qf.domain.CrmGraduate;
import com.qf.service.GraduateService;

@Controller
@RequestMapping("/graduate")
public class GraduateController {
	
	@Autowired
	private GraduateService graduateService;
	
	@RequestMapping("/list")
	public String list(Model model){
		List<CrmGraduate> list=graduateService.findAll();
		if (list.size()<=0) {
			model.addAttribute("msg","目前无已经就业的学生");
		}
		model.addAttribute("list", list);
		
		return "/dept/listDept";
		
	}
	@RequestMapping(value="/add",method={RequestMethod.GET})
	public String add(CrmGraduate graduate){
		System.out.println(graduate);
		
		graduateService.addGraduate(graduate);
		
		return "redirect:/graduate/list.do";
	}
	

}
