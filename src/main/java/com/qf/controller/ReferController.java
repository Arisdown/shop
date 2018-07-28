package com.qf.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.qf.domain.CrmClass;
import com.qf.domain.CrmCourseType;
import com.qf.domain.CrmRefer;
import com.qf.domain.CrmStaff;
import com.qf.service.ClassInfoServcie;
import com.qf.service.CourseTypeService;
import com.qf.service.EmployeeService;
import com.qf.service.ReferService;

@Controller
public class ReferController {
	
	@Autowired
	private ReferService referService;

	@Autowired
	private EmployeeService employeeService;
	
	@Autowired
	private CourseTypeService typeService;
	
	@Autowired
	private ClassInfoServcie infoService;
	
	@RequestMapping("/refer/list")
	public String list(String currentPage,Model model){
		List<CrmRefer> refers=new ArrayList<CrmRefer>();
		int currPage=0;
		int pageSize=3;
		if(currentPage==null||currentPage.trim().isEmpty()){
			currPage=1;
		}else{
			currPage=Integer.parseInt(currentPage);
		}
		
		List<CrmRefer> list=referService.findStuByPage(currPage, pageSize);
		if(list.size()<=0){
			model.addAttribute("msg", "暂时没有数据");
		}else{
			for(CrmRefer refer:list){
				String id=refer.getStaffid();
				CrmStaff staff=employeeService.findByStaffId(id);
				System.out.println(staff.getStaffname());
				refer.setStaff(staff);
//				CrmCourseType type=typeService.findByTypeId(refer.getCoursetype());
//				refer.setCourseType(type);
				CrmClass info=infoService.findByClassId(refer.getClassid());
				refer.setClassinfo(info);
				refers.add(refer);
			}
		}
		model.addAttribute("list", refers);
		return "refer/listRefer";
	}
	
	@RequestMapping("/refer/queryByCondition")
	public String queryByCondition(String query,Model model){
		List<CrmRefer>refers=new ArrayList<CrmRefer>();
		List<CrmRefer> list=referService.findByNameOrQQOrtelephone(query);
		if(list.size()>0){
			for(CrmRefer refer:list){
				String id=refer.getStaffid();
				CrmStaff staff=employeeService.findByStaffId(id);
				refer.setStaff(staff);
				CrmClass info=infoService.findByClassId(refer.getClassid());
				refer.setClassinfo(info);
				refers.add(refer);
			}
		}
		model.addAttribute("list", refers);
		return "refer/listRefer";
	}
	
	@RequestMapping("/refer/referInfo") 
	public String queryById(Model model,String id,String name){
		CrmRefer refer=referService.findById(id);
		model.addAttribute("student", refer);
		model.addAttribute("name", name);
		
		return "/refer/editRefer";
	}
	@RequestMapping("/refer/referInfo1") 
	public String queryinfo(Model model,String id,String name,String staffid){
		CrmRefer refer=referService.findById(id);
		model.addAttribute("student", refer);
		model.addAttribute("name", name);
		model.addAttribute("staffid", staffid);
		
		return "/refer/editRefer2";
	}
	
	
	@RequestMapping("/refer/updateUI")
	public String addUI(Model model){
		model.addAttribute("refer", new CrmRefer());
		return "/refer/addOrEditRefer";
	}
	/**
	 * var name=document.getElementById("name").value();
		var telephone=document.getElementById("telephone").value();
		var qq=document.getElementById("qq").value();
		var intentionlevel=document.getElementById("intentionlevel").value();
		var coursetype=document.getElementById("courseId").value();
		var classid=document.getElementById("classId").value();
		var remark=document.getElementById("remark").value();
		var source=document.getElementById("source").value();
	 * @param crmRefer
	 * @return
	 */
	@RequestMapping("/refer/addRefer")
	public String add(String name,String telephone,String qq,String intentionlevel,String classid,String coursetype,String remark,String source){
		CrmRefer crmRefer=new CrmRefer();
		crmRefer.setName(name);
		crmRefer.setTelephone(telephone);
		crmRefer.setQq(qq);
		crmRefer.setIntentionlevel(intentionlevel);
		crmRefer.setCoursetype(coursetype);
		crmRefer.setRemark(remark);
		crmRefer.setSource(source);
		crmRefer.setClassid(classid);
		crmRefer.setStatus("1");
		int rows=referService.addRefer(crmRefer);
		if(rows<=0){
			System.out.println("增加失败");
			return "msg";
		}
		
		return "redirect:/refer/list.do";
	}
	@RequestMapping("/refer/editRefer")
	public String update(String name,String telephone,String qq,String intentionlevel,String classid,String coursetype,String remark,String source,String referid,String staffid){
		CrmRefer crmRefer=new CrmRefer();
		crmRefer.setName(name);
		crmRefer.setTelephone(telephone);
		crmRefer.setQq(qq);
		crmRefer.setIntentionlevel(intentionlevel);
		crmRefer.setCoursetype(coursetype);
		crmRefer.setRemark(remark);
		crmRefer.setSource(source);
		crmRefer.setClassid(classid);
		crmRefer.setReferid(referid);
		crmRefer.setStaffid(staffid);
		
		System.out.println(crmRefer);
		
		referService.updateRefer(crmRefer);
		
		return "redirect:/refer/list.do";
	}
	//通过报名状态查询学生信息
	@RequestMapping("/refer/status")
	public String findByStatus(String status,Model model){
		List<CrmRefer> list=new ArrayList<CrmRefer>();
		List<CrmRefer> refers=referService.findByStatus(status);
		for(CrmRefer refer:refers){
			String id=refer.getStaffid();
			CrmStaff staff=employeeService.findByStaffId(id);
			System.out.println(staff.getStaffname());
			refer.setStaff(staff);
//			CrmCourseType type=typeService.findByTypeId(refer.getCoursetype());
//			refer.setCourseType(type);
			CrmClass info=infoService.findByClassId(refer.getClassid());
			refer.setClassinfo(info);
			list.add(refer);
		}
		model.addAttribute("list",list);
		return "refer/listRefer";
	}

}
