package com.qf.dao;

import java.util.List;

import com.qf.domain.CrmDepartment;

public interface DeptDao {
	
	//所有部门信息
	List<CrmDepartment> findAll();
	
	//修改
	CrmDepartment findByDeptId();
	
	
	//添加
	int addDept(CrmDepartment dept);

}
