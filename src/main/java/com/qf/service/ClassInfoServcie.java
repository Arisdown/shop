package com.qf.service;

import java.util.List;

import com.qf.domain.CrmClass;

public interface ClassInfoServcie {
	
	List<CrmClass> findByCourseId(String id);
	
	List<CrmClass> findAll();

	CrmClass findByClassId(String classid);

	int updateInfo(CrmClass info);

	int addInfo(CrmClass info);

	public String findClassName(String classid);
	
	public int updateUploadInfo(CrmClass info);
}
