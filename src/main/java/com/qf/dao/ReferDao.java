package com.qf.dao;

import java.util.List;

import com.qf.domain.CrmRefer;
public interface ReferDao {
	
	List<CrmRefer> findPageBean();
	
	List<CrmRefer> findAll();
	
	List<CrmRefer> findByNameOrQQOrtelephone(CrmRefer refer);
	
	//查询报名的学生
	List<CrmRefer> findByStatus(String status);
	
}
