package com.qf.service.impl;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.qf.domain.CrmFollow;
import com.qf.domain.CrmFollowExample;
import com.qf.domain.CrmFollowExample.Criteria;
import com.qf.mapper.CrmFollowMapper;
import com.qf.service.FollowService;
@Service
public class FollowServiceImpl implements FollowService{

	@Autowired
	private CrmFollowMapper followMapper;
	@Override
	public int addFollow(CrmFollow follow) {

		return followMapper.insertSelective(follow);
	}
	@Override
	public CrmFollow queryByReferid(String referid) {
		CrmFollowExample example=new CrmFollowExample();
		Criteria criteria=example.createCriteria();
		criteria.andReferidEqualTo(referid);
		List<CrmFollow> list = followMapper.selectByExample(example);
		return list.get(0);
	}

}
