package com.qf.controller;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSON;
import com.qf.domain.CrmDepartment;
import com.qf.service.DeptService;

@Controller
public class DeptController {
	
	@Autowired
	private DeptService deptService;
	
	@RequestMapping("/dept/updateUI")
	public String updateUI(String id,Model model){
		CrmDepartment crmDepartment=deptService.findByDeptId(id);
		model.addAttribute("dept", crmDepartment);
		return "/department/addOrEditDepartment";
	}
	
	@RequestMapping("/dept/update")
	public String update(String deptid,String deptname){
		
		int rows=deptService.updateDept(deptid, deptname);
		
		if(rows>0){
			System.out.println("seccess");
		}
		return "redirect:/dept/findAll.do";
		
	}
	@RequestMapping("/dept/save")
	public String save(String deptname){
		
		
		int rows=deptService.addDept(deptname);
		if(rows>0){
			System.out.println("seccess");
		}
		return "redirect:/dept/findAll.do";
	}
	
	@RequestMapping("dept/findAll")
	public String list(Model model){
		
		model.addAttribute("depts", deptService.findAll());
		return "/department/listDepartment";
	}
	
	@RequestMapping(value="/dept/select",method={RequestMethod.GET},produces="application/json;charset=utf-8")
	public @ResponseBody String select(){
		List<CrmDepartment> list = deptService.findAll();
		
		String jsonString=JSON.toJSONString(list);
		
		return jsonString;
	}
	
	

}
