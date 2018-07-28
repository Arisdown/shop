package com.qf.controller;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.javassist.expr.NewArray;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.qf.domain.CrmClass;
import com.qf.domain.CrmStation;
import com.qf.domain.CrmStudent;
import com.qf.service.ClassInfoServcie;
import com.qf.service.StationService;
import com.qf.service.StudentService;

@Controller
@RequestMapping("/station")
public class StationController {
	@Autowired
	private StationService stationService;
	@Autowired
	private StudentService studentService;
	@Autowired
	private ClassInfoServcie infoService;
	
	@RequestMapping("list")
	
	public String list(Model model){
		List<CrmStation> list=new ArrayList<CrmStation>();
		List<CrmStation> stations = stationService.findAll();

		for(CrmStation station:stations){
			CrmStudent crmStudent=studentService.findByStudentId(station.getStudentid());
			station.setStudent(crmStudent);
			CrmClass info=infoService.findByClassId(station.getBeforeclassid());
			station.setBeforeinfo(info.getName());
			info=infoService.findByClassId(station.getBeforeclassid());
			station.setAfterInfo(info.getName());
			list.add(station);
		}
		model.addAttribute("list", list);
		
		return "/role/listRolePri";
		
	}
	
	
	
	

}
