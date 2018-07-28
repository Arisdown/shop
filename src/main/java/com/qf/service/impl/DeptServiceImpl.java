package com.qf.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.qf.domain.CrmDepartment;
import com.qf.mapper.CrmDepartmentMapper;
import com.qf.service.DeptService;

@Service
public class DeptServiceImpl implements DeptService{
	@Autowired
	private CrmDepartmentMapper deptDao;

	@Override
	public List<CrmDepartment> findAll() {
		// TODO Auto-generated method stub
		return deptDao.findAll();
	}

	@Override
	public CrmDepartment findByDeptId(String id) {
		// TODO Auto-generated method stub
		return deptDao.selectByPrimaryKey(id);
	}

	@Override
	public int addDept(String deptname) {
		// TODO Auto-generated method stub
		return deptDao.insert(deptname);
	}

	@Override
	public int updateDept(String deptid, String deptname) {
		// TODO Auto-generated method stub
		CrmDepartment crmDepartment=new CrmDepartment();
		crmDepartment.setDepid(deptid);
		crmDepartment.setDepname(deptname);		
		return deptDao.updateByPrimaryKeySelective(crmDepartment);
	}

}
