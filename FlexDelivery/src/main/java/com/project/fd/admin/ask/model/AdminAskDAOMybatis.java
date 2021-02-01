package com.project.fd.admin.ask.model;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class AdminAskDAOMybatis implements AdminAskDAO{

	@Autowired
	private SqlSessionTemplate sqlSession;
	
	private String namespace="config.mybatis.mapper.oracle.adminonetoone.";
	
	@Override
	public List<AdminAskVO> selectAll() {
		return sqlSession.selectList(namespace+"selectAll");
	}

	@Override
	public List<AdminAskVO> selectByAuthority(int no) {
		return sqlSession.selectList(namespace+"selectByAuthority", no);
	}

	@Override
	public List<AdminAskVO> selectByReply(String flag) {
		return sqlSession.selectList(namespace+"selectByReply", flag);
	}

	@Override
	public int insertAskReply(AdminAskVO askVo) {
		int cnt=sqlSession.insert(namespace+"insertAskReply", askVo);
		return cnt;
	}

	@Override
	public int updateAskReply(AdminAskVO askVo) {
		int cnt=sqlSession.update(namespace+"insertAskReply", askVo);
		return cnt;
	}

	@Override
	public int deleteAskReply(AdminAskVO askVo) {
		int cnt=sqlSession.delete(namespace+"insertAskReply", askVo);
		return cnt;
	}

	@Override
	public AdminAskVO selectByNo(int no) {
		return sqlSession.selectOne(namespace+"selectByNo", no);
	}

}
