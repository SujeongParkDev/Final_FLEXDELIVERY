package com.project.fd.admin.board.model;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class AdminBoardDAOMybatis implements AdminBoardDAO{

	@Autowired
	private SqlSessionTemplate sqlSession;
	
	private String namespace="config.mybatis.mapper.oracle.adminboard.";

	@Override
	public List<AdminBoardVO> selectAll() {
		return sqlSession.selectList(namespace+"selectAll");
	}
	
	@Override
	public List<AdminBoardVO> selectNotice() {
		return sqlSession.selectList(namespace+"selectNotice");
	}
	
	@Override
	public List<AdminBoardVO> selectEvent() {
		return sqlSession.selectList(namespace+"selectEvent");
	}

	@Override
	public AdminBoardVO selectByNo(int no) {
		AdminBoardVO vo=sqlSession.selectOne(namespace+"selectByNo", no);
		return vo;
	}

	@Override
	public int insertBoard(AdminBoardVO vo) {
		int cnt=sqlSession.insert(namespace+"insertBoard", vo);
		return cnt;
	}

	@Override
	public int updateBoard(AdminBoardVO vo) {
		int cnt=sqlSession.update(namespace+"updateBoard", vo);
		return cnt;
	}

	@Override
	public int deleteBoard(AdminBoardVO vo) {
		int cnt=sqlSession.delete(namespace+"deleteBoard", vo);
		return cnt;
	}
}
