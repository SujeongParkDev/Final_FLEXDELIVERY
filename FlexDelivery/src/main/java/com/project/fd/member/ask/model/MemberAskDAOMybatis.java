package com.project.fd.member.ask.model;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MemberAskDAOMybatis implements MemberAskDAO{
	
	@Autowired private SqlSessionTemplate sqlSession;
	
	private String namespace="config.mybatis.mapper.oracle.memberAsk.";

	@Override
	public int askWrite(MemberAskVO vo) {
		return sqlSession.insert(namespace+"askWrite", vo);
	}

	@Override
	public List<MemberAskVO> selectICAsk(String askId) {
		return sqlSession.selectList(namespace+"selectICAsk", askId);
	}
	
	

}
