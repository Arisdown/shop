package com.qf.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.qf.domain.CrmStation;
import com.qf.mapper.CrmStationMapper;
import com.qf.service.StationService;

@Service
public class StationServiceImpl implements StationService{
	@Autowired
	private CrmStationMapper stationMapper;
	@Override
	public List<CrmStation> findAll() {
		// TODO Auto-generated method stub
		return stationMapper.selectByExample(null);
	}
	

}
