package com.qf.service;

import java.util.List;

import com.qf.domain.CrmDepartment;

public interface DeptService {
	
	//所有部门信息
	List<CrmDepartment> findAll();
	
	//修改
	CrmDepartment findByDeptId(String id);
	
	
	//添加
	int addDept(String deptname);
	
	
	int updateDept(String deptid,String deptname);
	
	

}
