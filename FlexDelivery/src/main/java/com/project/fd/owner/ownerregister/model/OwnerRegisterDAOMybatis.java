package com.project.fd.owner.ownerregister.model;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.fd.common.DateSearchVO;
import com.project.fd.owner.model.OwnerAllAgreementVO;

@Repository
public class OwnerRegisterDAOMybatis implements OwnerRegisterDAO{

	@Autowired SqlSessionTemplate sqlSession;
	private String namespace="config.mybatis.mapper.oracle.ownerlaunch.";
	
	@Override
	public int insertRegister(OwnerRegisterVO vo) {
		return sqlSession.insert(namespace+"insertRegister",vo);
	}

	@Override
	public List<OwnerAllAgreementVO> selectTempList(DateSearchVO searchVo) {
		return sqlSession.selectList(namespace+"selectTempList",searchVo);
	}

	@Override
	public int getTotalRecord(DateSearchVO searchVo) {
		return sqlSession.selectOne(namespace+"getTotalRecord",searchVo);
	}
	
	
}
