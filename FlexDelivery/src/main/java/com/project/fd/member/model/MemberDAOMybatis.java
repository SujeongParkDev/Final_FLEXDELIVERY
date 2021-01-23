package com.project.fd.member.model;


import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MemberDAOMybatis implements MemberDAO{

	@Autowired private SqlSessionTemplate sqlSession;
	
	private String namespace="config.mybatis.mapper.oracle.member.";	
	
	@Override
	public int insertMember(MemberVO vo) {
		int cnt = sqlSession.insert(namespace+"insertMember", vo);
		return cnt;
	}
	
	@Override
	public String selectPwd(String memberId) {
		return sqlSession.selectOne(namespace+"selectPwd",memberId);
	}

	@Override
	public MemberVO selectMember(String userid) {
		return sqlSession.selectOne(namespace+"selectMember",userid);
	}

	@Override
	public String selectMemberId(MemberVO vo) {
		return sqlSession.selectOne(namespace+"selectMemberId",vo);
	}

	@Override
	public int chkMember(MemberVO vo) {
		return sqlSession.selectOne(namespace+"chkMember",vo);
	}

	@Override
	public int pwdUpd(MemberVO vo) {
		return sqlSession.update(namespace+"pwdUpd",vo);
	}

	@Override
	public String selectAuth(int no) {
		return sqlSession.selectOne(namespace+"selectAuth",no);
	}

}
