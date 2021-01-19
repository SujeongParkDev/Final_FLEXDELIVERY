package com.project.fd.owner.advertise.model;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class AdvertiseDAOMybatis implements AdvertiseDAO{
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	private String namespace="config.mybatis.mapper.oracle.advertise.";
}
