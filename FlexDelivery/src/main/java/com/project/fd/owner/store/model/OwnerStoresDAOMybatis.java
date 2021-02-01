package com.project.fd.owner.store.model;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.fd.owner.common.LocationVO;
import com.project.fd.owner.model.OwnerAuthorityVO;

@Repository
public class OwnerStoresDAOMybatis implements OwnerStoresDAO{

	@Autowired SqlSessionTemplate sqlSession;
	
	private String namespace="config.mybatis.mapper.oracle.ownerstores.";
	
	public int insertOwnerStores(OwnerStoresVO vo) {
		return sqlSession.insert(namespace+"registerStores",vo);
	}

	public int selectStoreNoByNo(int ownerNo) {
		return sqlSession.selectOne(namespace+"selectStoreNoByNo", ownerNo);
	}

	@Override
	public List<LocationVO> AllLocaion() {
		return sqlSession.selectList(namespace+"AllLocation");
	}

	public OwnerAuthorityVO selectOwnerAuthorityAll(String userid) {
		return sqlSession.selectOne(namespace+"selectOwnerAuthorityAll", userid);
	}
	
}
