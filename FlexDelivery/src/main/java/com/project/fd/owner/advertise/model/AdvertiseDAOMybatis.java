package com.project.fd.owner.advertise.model;

import java.util.List;


import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class AdvertiseDAOMybatis implements AdvertiseDAO{
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	private String namespace="config.mybatis.mapper.oracle.advertise.";
	
	
	@Override
	public List<AdvertiseAllVO> selectAdvertieseView(int storeNo) {
		return sqlSession.selectList(namespace+"selectAdvertieseView", storeNo);
	}
	
}
