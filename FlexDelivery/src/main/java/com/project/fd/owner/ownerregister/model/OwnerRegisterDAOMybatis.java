package com.project.fd.owner.ownerregister.model;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.fd.common.DateSearchVO;

@Repository
public class OwnerRegisterDAOMybatis implements OwnerRegisterDAO{

	@Autowired SqlSessionTemplate sqlSession;
	private String namespace="config.mybatis.mapper.oracle.ownerlaunch.";
	
	@Override
	public int insertRegister(OwnerRegisterVO vo) {
		return sqlSession.insert(namespace+"insertRegister",vo);
	}

	@Override
	public List<OwnerAllRegisterVO> selectTempList(DateSearchVO searchVo) {
		return sqlSession.selectList(namespace+"selectTempList",searchVo);
	}

	@Override
	public int getTotalRecord(DateSearchVO searchVo) {
		return sqlSession.selectOne(namespace+"getTotalRecord",searchVo);
	}

	@Override
	public List<Map<String, Object>> selectLSJAgreeListView(int ownerNo) {
		return sqlSession.selectList(namespace+"selectLSJAgreeListView",ownerNo);
	}

	@Override
	public int deleteAd(int storeadNo) {
		return sqlSession.delete(namespace+"deleteAd",storeadNo);
	}

	@Override
	public int updateAgreeRegi(OwnerRegisterVO vo) {
		return sqlSession.update(namespace+"updateAgreeRegi",vo);
	}
	
	
}
