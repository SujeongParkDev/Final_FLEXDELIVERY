package com.project.fd.owner.advertise.model;

import java.util.List;


import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class OwnerAdvertiseDAOMybatis implements OwnerAdvertiseDAO{
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	private String namespace="config.mybatis.mapper.oracle.owneradvertise.";
	
	
	@Override
	public List<OwnerAdvertiseAllVO> selectAdvertieseView(int storeNo) {
		return sqlSession.selectList(namespace+"selectAdvertieseView", storeNo);
	}
	
}
