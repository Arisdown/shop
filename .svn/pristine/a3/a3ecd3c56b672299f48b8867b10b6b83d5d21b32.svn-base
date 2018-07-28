package com.qf.service.impl;

import java.util.List;

import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Service;

import com.qf.domain.CrmStaff;
import com.qf.domain.CrmStaffExample;
import com.qf.domain.CrmStaffExample.Criteria;
import com.qf.mapper.CrmStaffMapper;
import com.qf.service.EmployeeService;

@Service
public class EmployeeServiceImpl implements EmployeeService{
	
	@Autowired
	private CrmStaffMapper crmStaffMapper;

	@Override
	public CrmStaff loginByNameAndPassword(String name, String password) {
		
		CrmStaff staff=null;
		try{
			staff=crmStaffMapper.queryByNameAndPassword(name, password);
		}catch(Exception e){
			throw new RuntimeException("用户不存在");
		}
		return staff;
	}

	@Override
	public int updatePasById(String password, String newPass,String id) {
		
		return crmStaffMapper.updatePasById(password, newPass,id);
	}

	@Override
	public CrmStaff findByStaffId(String id) {
		
		return crmStaffMapper.selectByPrimaryKey(id);
	}

	@Override
	public List<CrmStaff> staffManager() {
		
		return crmStaffMapper.findAll();
	}

	@Override
	public int updateStaff(CrmStaff crmStaff) {
		
		return crmStaffMapper.updateByPrimaryKey(crmStaff);
	}

	@Override
	public int addStaff(CrmStaff crmStaff) {
	
		return crmStaffMapper.addStaff(crmStaff);
	}

	@Override
	public List<CrmStaff> findByConditions(String staffname, String postid) {
	
		
		return crmStaffMapper.findByCondtions(staffname, postid);
	}
	
	

}
