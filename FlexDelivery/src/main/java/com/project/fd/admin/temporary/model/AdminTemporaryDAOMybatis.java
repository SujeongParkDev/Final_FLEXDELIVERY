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
	public List<AdminTemporaryVO> approvalList(String approvalFlag) {
		List<AdminTemporaryVO> list = sqlSession.selectList(namespace+"approvalList", approvalFlag);
		return list;
	}
}
