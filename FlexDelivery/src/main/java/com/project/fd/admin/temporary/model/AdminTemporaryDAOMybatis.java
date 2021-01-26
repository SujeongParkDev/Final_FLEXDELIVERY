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
	public List<AdminTemporaryVO> approvalList() {
		List<AdminTemporaryVO> list = sqlSession.selectList(namespace+"approvalList");
		return list;
	}

	@Override
	public AdminTemporaryVO approvalDetail(int no) {
		AdminTemporaryVO vo= sqlSession.selectOne(namespace+"approvalDetail", no);
		return vo;
	}
}
