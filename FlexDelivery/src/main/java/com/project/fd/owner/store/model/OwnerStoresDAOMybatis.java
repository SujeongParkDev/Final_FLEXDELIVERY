package com.project.fd.owner.store.model;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class OwnerStoresDAOMybatis implements OwnerStoresDAO{

	@Autowired SqlSessionTemplate sqlSession;
	
	private String namespace="config.mybatis.mapper.oracle.ownerstores.";
	
	public int selectStoreNoByNo(int ownerNo) {
		return sqlSession.selectOne(namespace+"selectStoreNoByNo", ownerNo);
	}
	
	
}
