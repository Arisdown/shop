package com.qf.service;

import java.util.List;


import com.qf.domain.CrmGraduate;


public interface GraduateService {
	
	List<CrmGraduate> findAll();
	
	int addGraduate (CrmGraduate graduate);
	
	int editGraduateById(String graduateId);
	
}
