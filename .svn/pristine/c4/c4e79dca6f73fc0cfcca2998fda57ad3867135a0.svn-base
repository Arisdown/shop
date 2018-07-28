package com.qf.service;

import java.util.List;

import com.qf.domain.CrmStaff;

public interface EmployeeService {
	
	CrmStaff loginByNameAndPassword(String name,String password);
	
	int  updatePasById(String password,String newPass,String id);
	
	CrmStaff findByStaffId(String id);
	
	List<CrmStaff> staffManager();
	
	int updateStaff(CrmStaff  crmStaff);
	
	
	int addStaff(CrmStaff crmStaff);

	List<CrmStaff> findByConditions(String staffname,String postid);
}
