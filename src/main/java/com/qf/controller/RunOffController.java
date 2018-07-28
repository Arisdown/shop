package com.qf.controller;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.javassist.expr.NewArray;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.qf.domain.CrmClass;
import com.qf.domain.CrmRunoff;
import com.qf.domain.CrmStudent;
import com.qf.service.ClassInfoServcie;
import com.qf.service.EmployeeService;
import com.qf.service.RunOffService;
import com.qf.service.StudentService;

@Controller
@RequestMapping("/privilege")
public class RunOffController {
	
	@Autowired
	private RunOffService runOffService;
	
	@Autowired
	
	private StudentService studentService;
	
	@Autowired
	private EmployeeService emplementService;
	
	@Autowired
	private ClassInfoServcie infoService;
	
	@RequestMapping("/list")
	public String list(Model model){
		List<CrmRunoff> list=new ArrayList<CrmRunoff>();
		List<CrmRunoff> runoffs=runOffService.findAll();
		for(CrmRunoff runoff:runoffs){
			CrmStudent student=studentService.findByStudentId(runoff.getStudentid());
			CrmClass info=infoService.findByClassId(student.getClassid());
			runoff.setStudent(student);
			if(info!=null){
			runoff.setClassName(info.getName());
			}
			
			runoff.setStaffName(emplementService.findByStaffId(runoff.getStaffid()).getStaffname());
			list.add(runoff);
		}
		model.addAttribute("list",list);
		return "/privilege/listPrivilege";
	}

}
