package com.qf.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.qf.domain.CrmClass;
import com.qf.domain.CrmClassExample;
import com.qf.domain.CrmClassExample.Criteria;
import com.qf.mapper.CrmClassMapper;
import com.qf.service.ClassInfoServcie;

@Service
public class ClassInfoServiceImpl implements ClassInfoServcie {
	@Autowired
	private CrmClassMapper classMapper;


	@Override
	public List<CrmClass> findByCourseId(String id) {
		
		return classMapper.findByCourseId(id);
	}


	@Override
	public List<CrmClass> findAll() {
		
		return classMapper.findAll();
	}


	@Override
	public CrmClass findByClassId(String classid) {
		if(classid==null){
		    return null;
		}else{
		CrmClassExample example=new CrmClassExample();
		Criteria criteria=example.createCriteria();
		criteria.andClassidEqualTo(classid);
		List<CrmClass> list=classMapper.selectByExample(example);
		return list.get(0);
		}
	}


	@Override
	public int updateInfo(CrmClass info) {
		
		return classMapper.updateByPrimaryKeySelective(info);
	}


	@Override
	public int addInfo(CrmClass info) {
		
		return classMapper.insertSelective(info);
	}
	
	public String findClassName(String classid){
		return classMapper.selectByPrimaryKey(classid).getName();
	}


	@Override
	public int updateUploadInfo(CrmClass info) {
		// TODO Auto-generated method stub
		return classMapper.updateByPrimaryKeySelective(info);
	}

}
