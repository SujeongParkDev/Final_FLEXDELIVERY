package com.project.fd.member.model;


import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.fd.owner.common.LocationVO;

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
	
	@Override
	public int checkDup(String memberid) {
		int count = sqlSession.selectOne(namespace+"dupCheck", memberid);
		return count;
	}

	@Override
	public int memloNo(String locationName) {
		return sqlSession.selectOne(namespace+"memloNo",locationName);
	}

	@Override
	public int updateMember(MemberVO vo) {
		return sqlSession.update(namespace+"updateMember",vo);
	}

	@Override
	public int rupdateMember(MemberVO vo) {
		return sqlSession.update(namespace+"rupdateMember",vo);
	}

	@Override
	public int giftChk(MemberVO vo) {
		return sqlSession.selectOne(namespace+"giftChk",vo);
	}

	@Override
	public int selectMemNo(Map<String, Object> map) {
		return sqlSession.selectOne(namespace+"selectMemNo",map);
	}
	
	




}
