package com.project.fd.owner.request.model;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.fd.owner.advertise.model.OwnerStoreAdVO;
import com.project.fd.owner.ownerregister.model.OwnerRegisterVO;

@Repository
public class OwnerRequestDAOMybatis implements OwnerRequestDAO{

	@Autowired SqlSessionTemplate sqlSession;
	
	private String namespace="config.mybatis.mapper.oracle.request.";

	@Override
	public List<Map<String, Object>> selectRegi(int ownerNo) {
		return sqlSession.selectList(namespace+"selectRegi",ownerNo);
	}

	@Override
	public List<Map<String, Object>> selectStore(int ownerNo) {
		return sqlSession.selectList(namespace+"selectStore",ownerNo);
	}

	@Override
	public List<Map<String, Object>>  selectAd(int ownerNo) {
		return sqlSession.selectList(namespace+"selectAd",ownerNo);
	}

	@Override
	public List<Map<String, Object>> selectTemp(int ownerNo) {
		return sqlSession.selectList(namespace+"selectTemp",ownerNo);
	}

	@Override
	public OwnerRegisterVO selectRegiVo(long oRegisterNo) {
		return sqlSession.selectOne(namespace+"selectRegiVo",oRegisterNo);
	}
	
	
	
}
