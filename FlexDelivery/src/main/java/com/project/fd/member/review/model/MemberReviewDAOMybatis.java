package com.project.fd.member.review.model;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MemberReviewDAOMybatis implements MemberReviewDAO{
	@Autowired SqlSessionTemplate sqlSession;
	private String namespace="config.mybatis.mapper.oracle.memberReview.";
	
	@Override
	public List<MemberReviewVO> selectStoreReview(Map<String, Object> map) {
		return sqlSession.selectList(namespace+"selectStoreReview",map);
	}

	@Override
	public int reviewChk(int memberNo) {
		return sqlSession.selectOne(namespace+"reviewChk",memberNo);
	}

	@Override
	public List<Map<String, Object>> orderListForReview(int memberNo) {
		return sqlSession.selectList(namespace+"orderListForReview",memberNo);
	}

	@Override
	public int reviewWrite(MemberReviewVO vo) {
		return sqlSession.insert(namespace+"reviewWrite",vo);
	}

	@Override
	public int deleteReview(int reviewNo) {
		return sqlSession.update(namespace+"deleteReview",reviewNo);
	}

	@Override
	public int selectStoreNoByReview(int reviewNo) {
		return sqlSession.selectOne(namespace+"selectStoreNoByReview",reviewNo);
	}
	
	
	
	
	
}
