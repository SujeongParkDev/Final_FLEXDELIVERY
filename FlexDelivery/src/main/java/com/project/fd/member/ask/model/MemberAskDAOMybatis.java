package com.project.fd.member.ask.model;

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
	
	

}
