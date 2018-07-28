package com.qf.controller;

import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.forwardedUrl;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.qf.domain.CrmPost;
import com.qf.domain.CrmStaff;
import com.qf.service.DeptService;
import com.qf.service.EmployeeService;
import com.qf.service.PostService;

@Controller
public class EmployeeController {
	
	
	@Autowired
	private EmployeeService employeeService;
	
	
	@Autowired
	private PostService postService;
	@Autowired
	private DeptService deptService;
	
	@RequestMapping(value="/staff/login")
	public String login(HttpSession session,Model model,String name,String password){
		CrmStaff user=employeeService.loginByNameAndPassword(name, password);
		if(user==null){
			model.addAttribute("error","用户名或者密码错误");
		    return "login";
		}
		
		session.setAttribute("user", user);
		
		return "frame";
	}
	
	@RequestMapping(value="/staff/update")
	public String updatePassWd(HttpSession session,Model model,String password,String newPass,String rePass){
		if(StringUtils.isNotBlank(password)&&StringUtils.isNotBlank(newPass)&&StringUtils.isNotBlank(rePass)){
			if(newPass.equals(rePass)){
				CrmStaff user=(CrmStaff) session.getAttribute("user");
			    employeeService.updatePasById(password, newPass,user.getStaffid());
			    return "redirect:/loginUI.do";  
			}else{
				model.addAttribute("errorPa", "两次输入密码不正确");
				
			}
		}else{
			    model.addAttribute("msg", "信息不能为空");
		}
		return "staff/updPwd";	
	}
	@RequestMapping("/loginUI")
	public String loginUI(){
		return "login";
	}
	
	@RequestMapping("/emp/list")
	public String list(Model model){
		model.addAttribute("list",employeeService.staffManager());
		
		return "/staff/listStaff";
		
	}
	
	@RequestMapping("/emp/editUI")
	public String editUI(Model model,String id){
		model.addAttribute("emp", employeeService.findByStaffId(id));
		
		return "/staff/editStaff";
	}
	@RequestMapping(value="/emp/update",method={RequestMethod.GET})
	public String edit(String staffname,String loginname,String staffid,String ondutydate,String loginpwd,String postid,String gender) throws ParseException{
		CrmStaff crmStaff=new CrmStaff();
		crmStaff.setGender(gender);
		crmStaff.setLoginname(loginname);
		crmStaff.setLoginpwd(loginpwd);
		 SimpleDateFormat sdf =   new SimpleDateFormat( "yyyy年MM月dd日" );
		crmStaff.setOndutydate(sdf.parse(ondutydate));
		crmStaff.setStaffname(staffname);
		crmStaff.setStaffid(staffid);
		crmStaff.setPostid(postid);
		System.out.println(crmStaff);
		employeeService.updateStaff(crmStaff);
		return "redirect:/emp/list.do";
	}
	@RequestMapping(value="/emp/update1",method={RequestMethod.GET})
	public String edit1(CrmStaff crmStaff){
		System.out.println(crmStaff);
		employeeService.updateStaff(crmStaff);
		return "redirect:/emp/list.do";
	}
	
	@RequestMapping(value="/emp/add",method={RequestMethod.GET})
	public String edit(String staffname,String loginname,String ondutydate,String loginpwd,String postid,String gender) throws ParseException{
		CrmStaff crmStaff=new CrmStaff();
		crmStaff.setGender(gender);
		crmStaff.setLoginname(loginname);
		crmStaff.setLoginpwd(loginpwd);
		 SimpleDateFormat sdf =   new SimpleDateFormat( "yyyy年MM月dd日" );
		crmStaff.setOndutydate(sdf.parse(ondutydate));
		crmStaff.setStaffname(staffname);
		crmStaff.setPostid(postid);
		System.out.println(crmStaff);
		employeeService.addStaff(crmStaff);
		return "redirect:/emp/list.do";
	}
	
	@PostMapping("/staff/condition")
	//高级查询(部门与职务是单向级联，一个部门有多个职务，一个职务可以在多个部门中
	public String queryHeight(String deptid,String name,String postid,Model model) {
		  System.out.println(name+deptid+postid);
		  
		   List<CrmStaff> list=new ArrayList<CrmStaff>();
	
		
		  if (StringUtils.isNotBlank(deptid)&&StringUtils.isNotBlank(postid)&&StringUtils.isNotBlank(name)&&name!="") {
			  List<CrmPost> posts = postService.findByDeptId(deptid);
			  for(CrmPost post:posts)
				  if (post.getPostid().equals(postid)) {
					  list=employeeService.findByConditions(name, postid);
				}
		  }
		  if(StringUtils.isNotBlank(deptid)&&deptid!=""&&postid.trim().isEmpty()){
			  List<CrmPost> posts = postService.findByDeptId(deptid);
			  for(CrmPost post:posts){
				  List<CrmStaff> list2 = employeeService.findByConditions("", post.getPostid());
				  for(CrmStaff staff:list2)
					  list.add(staff);
			  }
		  }
		  if(StringUtils.isNotBlank(deptid)&&StringUtils.isNotBlank(postid)){
			  List<CrmPost> posts = postService.findByDeptId(deptid);
			  for(CrmPost post:posts)
				  if (post.getPostid().equals(postid)) {
				 
					  list=employeeService.findByConditions("", postid);
				  }
		  
		  }
		  if (StringUtils.isNotBlank(name)&&StringUtils.isBlank(postid)&&StringUtils.isBlank(deptid)) {
			  list=employeeService.findByConditions(name, "");
		  }
		  if (StringUtils.isBlank(name)&&StringUtils.isBlank(postid)&&StringUtils.isBlank(deptid)) {
			  list=employeeService.findByConditions("", "");
		  }
		
		  model.addAttribute("list", list);
		
		return "/staff/listStaff";
		
	}

}
