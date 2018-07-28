package com.qf.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.qf.domain.CrmRunoff;
import com.qf.mapper.CrmRunoffMapper;
import com.qf.service.RunOffService;

@Service
public class RunOffServiceImpl implements RunOffService{

	@Autowired
	private CrmRunoffMapper runOffMapper;
	@Override
	public List<CrmRunoff> findAll() {
		
		return runOffMapper.selectByExample(null);
	}
	
	

}
