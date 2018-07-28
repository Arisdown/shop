package com.qf.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.qf.domain.CrmStudent;

public interface StudentService {
	List<CrmStudent> findAll();
	
    List<CrmStudent> findStuByPage(@Param("currentPage") int currentPage,@Param("pageSize") int pageSize);

    public List<CrmStudent> findStuByClassId(String classid);

	void addStudent(CrmStudent student);

	CrmStudent findByStudentId(String studentid);
}
