package com.project.fd.admin.index.model;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class AdminIndexDAOMybatis implements AdminIndexDAO{

	@Autowired
	private SqlSessionTemplate sqlSession;
	
	private String namespace="config.mybatis.mapper.oracle.adminindex.";

	@Override
	public int selectNewReview() {
		return 1;
		//return sqlSession.selectOne(namespace+"selectNewReview");
	}

	@Override
	public int selectNewAd() {
		return 1;
		//return sqlSession.selectOne(namespace+"selectNewAd");
	}

	@Override
	public int selectNewRegister() {
		return 1;
		//return sqlSession.selectOne(namespace+"selectNewRegister");
	}

	@Override
	public int selectNewStore() {
		return 1;
		//return sqlSession.selectOne(namespace+"selectNewStore");
	}

	@Override
	public int selectChangeStore() {
		return 1;
		//return sqlSession.selectOne(namespace+"selectChangeStore");
	}
	
	

}
