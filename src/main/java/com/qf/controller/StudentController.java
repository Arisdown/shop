package com.qf.controller;

import java.util.ArrayList;
import java.util.List;

import javax.xml.stream.events.StartDocument;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSON;
import com.qf.domain.CrmClass;
import com.qf.domain.CrmStudent;
import com.qf.service.ClassInfoServcie;
import com.qf.service.StudentService;
import com.qf.utils.UUIDUtils;

@Controller
public class StudentController {
	
	@Autowired
	private StudentService studentService;
	
	@Autowired
	private ClassInfoServcie infoService;

	@RequestMapping("/student/list")
	public String list(String currentPage,Model model){
		
		int currPage=0;
		int pageSize=5;
		if(currentPage==null||currentPage.trim().isEmpty()){
			currPage=0;
		}else{
			currPage=Integer.parseInt(currentPage);
		}
		
	   List<CrmStudent> form=new ArrayList<CrmStudent>();
	   List<CrmStudent> list=studentService.findStuByPage(currPage, pageSize);
	   
	   for(CrmStudent student:list){
		   CrmClass info=infoService.findByClassId(student.getClassid());
		   student.setClassInfo(info);
		   form.add(student);
	   }
	   model.addAttribute("list", form);
		
		return "/student/listStudent";
	}
	
	@RequestMapping(value="/student/select",method={RequestMethod.GET},produces = "application/json;charset=utf-8")
	public @ResponseBody String findByClassId(String id){
		
		System.out.println(id);
		
	   List<CrmStudent> students = studentService.findStuByClassId(id);
	   String json=JSON.toJSONString(students);
	   
	   return json;
		
	}
	
//	@RequestMapping("/student/add")
//	public String add(String name,String gender,String classid,String education,float musttuition,float actualtuition,String identify,String telephone,String qq,String email,String school,String professional,String identityaddress,String address,String remark,String hometelephone,String homecontact){
//		
//		CrmStudent student=new CrmStudent();
//		student.setActualtuition(actualtuition);
//		student.setAddress(address);
//		student.setClassid(classid);
//		student.setEducation(education);
//		student.setEmail(email);
//		student.setGender(gender);
//		student.setHomecontact(homecontact);
//		student.setHometelephone(hometelephone);
//		student.setIdentify(identify);
//		student.setIdentityaddress(identityaddress);
//		
//		student.setMusttuition(musttuition);
//		student.setName(name);
//		student.setProfessional(professional);
//		student.setQq(qq);
//		student.setRemark(remark);
//		student.setSchool(school);
//		student.setTelephone(telephone);
//		student.setStudentid(UUIDUtils.getId());
//		studentService.addStudent(student);
//		
//		return "redirect:/student/list.do";
//	}

	@RequestMapping("/student/add")
	public String add(CrmStudent student){
		
		student.setStudentid(UUIDUtils.getId());
		studentService.addStudent(student);
		System.out.println(student);
		return "redirect:/student/list.do";
	}


}
