package com.qf.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.qf.domain.CrmRefer;
import com.qf.domain.PageBean;
public interface ReferService {
	
	List<CrmRefer> findStuByPage(@Param("currentPage") int currentPage,@Param("pageSize") int pageSize);
	
	List<CrmRefer> findAll();
	
	List<CrmRefer> findByNameOrQQOrtelephone(String query);
	
	//查询报名的学生
	List<CrmRefer> findByStatus(String status);
	
	
	CrmRefer findById(String id);
	
	int addRefer(CrmRefer crmRefer);

	int updateRefer(CrmRefer crmRefer);
	
	PageBean<CrmRefer>findByPage(int currentPage,int pageSize);
	
}
