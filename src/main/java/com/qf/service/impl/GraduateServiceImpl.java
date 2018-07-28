package com.qf.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.qf.domain.CrmGraduate;
import com.qf.mapper.CrmGraduateMapper;
import com.qf.service.GraduateService;
import com.sun.tools.javac.main.OptionHelper.GrumpyHelper;

@Service
public class GraduateServiceImpl implements GraduateService{

	@Autowired
	private CrmGraduateMapper graduateMapper;
	@Override
	public List<CrmGraduate> findAll() {
		
		return graduateMapper.findAll();
	}

	@Override
	public int addGraduate(CrmGraduate graduate) {
		
		return graduateMapper.insert(graduate);
	}

	@Override
	public int editGraduateById(String graduateId) {
		
		return 0;
	}

}
