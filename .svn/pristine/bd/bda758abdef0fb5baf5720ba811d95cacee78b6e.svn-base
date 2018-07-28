package com.qf.controller;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSON;
import com.qf.controller.po.QueryConditions;
import com.qf.domain.CrmClass;
import com.qf.domain.CrmCourseType;
import com.qf.service.ClassInfoServcie;
import com.qf.service.CourseTypeService;
import com.qf.utils.UUIDUtils;

@Controller
public class CourseTypeController {

	@Autowired
	private CourseTypeService courseTypeService;

	@Autowired
	private ClassInfoServcie classInfoService;

	@RequestMapping(value = "/course/list", method = { RequestMethod.GET }, produces = "application/json;charset=utf-8")

	public @ResponseBody String find() {
		List<CrmCourseType> list = courseTypeService.findAll();

		// List<CrmCourseType> listArray=new ArrayList<CrmCourseType>();
		// for(CrmCourseType courseType:list){
		// listArray.add(courseType);
		// }

		String jsonString = JSON.toJSONString(list);
		return jsonString;
	}

	@RequestMapping(value = "/class/list", method = { RequestMethod.GET }, produces = "application/json;charset=utf-8")
	public @ResponseBody String classFind(String id) {

		List<CrmClass> list = classInfoService.findByCourseId(id);

		String jsonString = JSON.toJSONString(list);

		return jsonString;

	}

	@RequestMapping(value = "/class/select", method = {
			RequestMethod.GET }, produces = "application/json;charset=utf-8")
	public @ResponseBody String find(String id) {

		List<CrmClass> list = classInfoService.findAll();

		String jsonString = JSON.toJSONString(list);

		return jsonString;

	}
	
	@RequestMapping(value="/course/list2")
	public  String find(Model model) {
		List<CrmCourseType> list = courseTypeService.findAll();

		model.addAttribute("list", list);
	
		return "/course/listCourseType";
	}
	
	@RequestMapping("/course/editUI")
	public String editUI(String id,Model model){
		
		CrmCourseType type=courseTypeService.findByTypeId(id);
		
		model.addAttribute("type",type);
		
		return "/course/editCourseType";
	}
	
	
	@RequestMapping("/course/update")
	public String update(String coursetypeid,double coursecost,int total,String remark,String coursename){
		CrmCourseType courseType=new CrmCourseType();
		courseType.setCoursecost(coursecost);
		courseType.setCoursename(coursename);
		courseType.setCoursetypeid(coursetypeid);
		courseType.setRemark(remark);
		courseType.setTotal(total);
		courseTypeService.updateType(courseType);
		
		return "redirect:/course/list2.do";
	}
	
	@RequestMapping("/course/add")
	public String add(double coursecost,int total,String remark,String coursename){
		
		CrmCourseType courseType=new CrmCourseType();
		courseType.setCoursecost(coursecost);
		courseType.setCoursename(coursename);
		courseType.setCoursetypeid(UUIDUtils.getId());
		courseType.setRemark(remark);
		courseType.setTotal(total);
		courseTypeService.addCourse(courseType);
		return "redirect:/course/list2.do";
	}
	@PostMapping("/course/query")
	public String queryByCondition(QueryConditions conditions,Model model){
		
		List<CrmCourseType> list = courseTypeService.findByCondition(conditions);
        if (list.size()>=0) {
        	model.addAttribute("list", list);
		}
		
		
		return "/course/listCourseType";
	}

}
