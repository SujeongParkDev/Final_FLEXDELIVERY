package com.project.fd.owner.model;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class OwnerDAOMybatis implements OwnerDAO {
	@Autowired
	private SqlSessionTemplate sqlSession;
	private String namespace="config.mybatis.mapper.oracle.owner.";
	
	@Override
	public String selectPwd(String userid) {
		return sqlSession.selectOne(namespace+"selectPwd",userid);
	}

	@Override
	public OwnerVO selectOwner(String userid) {
		return sqlSession.selectOne(namespace+"selectOwner",userid);
	}
	
}
