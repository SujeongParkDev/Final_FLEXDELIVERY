package com.project.fd.owner.reviewcomment.model;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class OwnerReivewCommentDAOMybatis implements OwnerReivewCommentDAO{

	@Autowired private SqlSessionTemplate sqlSession;
	
	private String namespace="config.mybatis.mapper.oracle.ownerreviewcomment.";

	@Override
	public int insertComm(OwnerReviewCommentVO vo) {
		return sqlSession.insert(namespace+"insertComm",vo);
	}

	@Override
	public List<Map<String, Object>> selectReView(int storeNo) {
		return sqlSession.selectList(namespace+"selectReView",storeNo);
	}

	@Override
	public List<Map<String, Object>> selectOptionView(int storeNo) {
		return sqlSession.selectList(namespace+"selectOptionView",storeNo);
	}
	
	
	
}
