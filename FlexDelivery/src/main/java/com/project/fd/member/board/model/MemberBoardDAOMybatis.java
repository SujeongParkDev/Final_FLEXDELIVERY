package com.project.fd.member.board.model;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MemberBoardDAOMybatis implements MemberBoardDAO{
	@Autowired private SqlSessionTemplate sqlSession;
	private String namespace="config.mybatis.mapper.oracle.memberBoard.";
	
	@Override
	public List<MemberBoardVO> selectEvent(MemberBoardSearchVO vo) {
		return sqlSession.selectList(namespace+"selectEvent",vo);
	}
	@Override
	public List<MemberBoardVO> selectNotice(MemberBoardSearchVO vo) {
		return sqlSession.selectList(namespace+"selectNotice",vo);
	}
}
