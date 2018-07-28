package com.qf.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.qf.domain.CrmClass;
import com.qf.domain.CrmRefer;
import com.qf.domain.CrmReferExample;
import com.qf.domain.CrmStaff;
import com.qf.domain.CrmReferExample.Criteria;
import com.qf.domain.PageBean;
import com.qf.mapper.CrmClassMapper;
import com.qf.mapper.CrmReferMapper;
import com.qf.mapper.CrmStaffMapper;
import com.qf.service.ReferService;

@Service
public class ReferServiceImpl implements ReferService {
	@Autowired
	private CrmReferMapper referMapper;
	@Autowired
	private CrmStaffMapper staffMapper;
	@Autowired
	private CrmClassMapper infoMapper;

	@Override
	public List<CrmRefer> findStuByPage(int currentPage, int pageSize) {
	
		return referMapper.findStuByPage(currentPage, pageSize);
	}

	@Override
	public List<CrmRefer> findAll() {
		
		return null;
	}

	@Override
	public List<CrmRefer> findByNameOrQQOrtelephone(String query) {
		// TODO Auto-generated method stub
		return referMapper.findByNameOrQQOrtelephone(query);
	}

	@Override
	public List<CrmRefer> findByStatus(String status) {
		// TODO Auto-generated method stub
		CrmReferExample example=new CrmReferExample();
		Criteria criteria=example.createCriteria();
		criteria.andStatusEqualTo(status);
		return referMapper.selectByExample(example);
	}

	@Override
	public CrmRefer findById(String id) {
		return referMapper.selectByPrimaryKey(id);
	}

	@Override
	public int addRefer(CrmRefer crmRefer) {
		
		
		return referMapper.insertSelective(crmRefer);
	}

	@Override
	public int updateRefer(CrmRefer crmRefer) {
		
		return referMapper.updateByPrimaryKeySelective(crmRefer);
	}

	@Override
	public PageBean<CrmRefer> findByPage(int currentPage, int pageSize) {
		PageBean<CrmRefer> pageBean=new PageBean<>();
		List<CrmRefer> refers=new ArrayList<CrmRefer>();
		List<CrmRefer> list=referMapper.findStuByPage(currentPage, pageSize);
	
		for(CrmRefer refer:list){
				String id=refer.getStaffid();
				CrmStaff staff=staffMapper.selectByPrimaryKey(id);
				System.out.println(staff.getStaffname());
				refer.setStaff(staff);
				CrmClass info=infoMapper.selectByPrimaryKey(refer.getClassid());
				refer.setClassinfo(info);
				
				refers.add(refer);
		}
		
		int totalRecord=referMapper.countByExample(null);
		pageBean.setCurrentPage(currentPage);
		pageBean.setPageSize(pageSize);
		pageBean.setDatas(refers);
		pageBean.setTotalRecord(totalRecord);
		
		return pageBean;
	}

}
