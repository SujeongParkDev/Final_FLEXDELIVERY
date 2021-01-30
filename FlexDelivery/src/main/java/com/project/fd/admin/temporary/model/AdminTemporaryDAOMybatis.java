package com.project.fd.admin.temporary.model;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class AdminTemporaryDAOMybatis implements AdminTemporaryDAO {

	@Autowired private SqlSessionTemplate sqlSession;
	
	private String namespace="config.mybatis.mapper.oracle.adminTemporary.";

	@Override
	public List<AdminTemporaryVO> editList() {
		List<AdminTemporaryVO> list = sqlSession.selectList(namespace+"editList");
		return list;
	}

	@Override
	public AdminTemporaryVO editDetail(long no) {
		AdminTemporaryVO vo = sqlSession.selectOne(namespace+"editDetail", no);
		return vo;
	}

	@Override
	public int editAgree(long no) {
		return sqlSession.update(namespace+"editAgree", no);
	}

	@Override
	public int editDeny(long no) {
		return sqlSession.update(namespace+"editDeny", no);
	}		
}
