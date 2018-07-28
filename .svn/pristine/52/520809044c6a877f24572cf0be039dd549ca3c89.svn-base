package com.qf.controller;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;

import com.qf.domain.CrmClass;
import com.qf.domain.CrmCourseType;
import com.qf.domain.CrmStudent;
import com.qf.service.ClassInfoServcie;
import com.qf.service.CourseTypeService;
import com.qf.service.StudentService;
import com.qf.utils.UUIDUtils;

@Controller
@RequestMapping("/classinfo")
public class ClassInfoController {
	
	
	@Autowired
	public ClassInfoServcie infoServcie;
	@Autowired
	public CourseTypeService typeService;
	
	@Autowired
	public StudentService studentService;
	

	@RequestMapping("/list")
	public String list(Model model){
		List<CrmClass> list=new ArrayList<CrmClass>();
		List<CrmClass> classInfo=infoServcie.findAll();
		for(CrmClass info:classInfo){
			CrmCourseType type=typeService.findByClass(info);
			info.setCourseType(type);
			list.add(info);
		}
		model.addAttribute("list",list);
		return "/classesm/listClass";
	}
	
	@RequestMapping("/editUI")
	public String editUI(Model model,String id,String name,String typeid){
		
		model.addAttribute("list", infoServcie.findByClassId(id));
		model.addAttribute("name", name);
		model.addAttribute("typeid", typeid);
		
		return "/classesm/editClass";
		
	}
	@RequestMapping("/edit")
	public String update(String classid,String name,String begintime,String endtime,String remark,int totalcount) throws ParseException{
		CrmClass info=new CrmClass();
		info.setClassid(classid);
		info.setName(name);info.setRemark(remark);
		SimpleDateFormat simpleDateFormat=new SimpleDateFormat("yyyy年MM月dd日");
		info.setBegintime(simpleDateFormat.parse(begintime));
		info.setEndtime(simpleDateFormat.parse(endtime));
		info.setTotalcount(totalcount);
		infoServcie.updateInfo(info);
		
		System.out.println(info);
		return "redirect:/classinfo/list.do";
	}
	
	@RequestMapping("/add")
	public String add(String classid,String name,String begintime,String endtime,String remark,int totalcount,String coursetypeid) throws ParseException{
		CrmClass info=new CrmClass();
		info.setClassid(classid);
		info.setName(name);info.setRemark(remark);
		SimpleDateFormat simpleDateFormat=new SimpleDateFormat("yyyy年MM月dd日");
		info.setBegintime(simpleDateFormat.parse(begintime));
		info.setEndtime(simpleDateFormat.parse(endtime));
		info.setCoursetypeid(coursetypeid);
		info.setTotalcount(totalcount);
		info.setClassid(UUIDUtils.getId());
		
		infoServcie.addInfo(info);
		
		return "redirect:/classinfo/list.do";
	}
	
	@RequestMapping("detail")
	public String detail(String id,String name,Model model){
		
		CrmClass crmClass = infoServcie.findByClassId(id);
		model.addAttribute("info", crmClass);
		
		List<CrmStudent> list=studentService.findStuByClassId(crmClass.getClassid());
		
		model.addAttribute("list", list);
		model.addAttribute("name",name);
		
		
		
		return "/classesm/viewClass";
	}
	@RequestMapping("/uploadUI")
	public String uploadUI(Model model,String id,String name,String typeid){
		
		model.addAttribute("list", infoServcie.findByClassId(id));
		model.addAttribute("name", name);
		model.addAttribute("typeid", typeid);
		
		return "/classesm/upload";
		
	}


}
