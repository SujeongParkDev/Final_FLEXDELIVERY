package com.project.fd.admin.stores.model;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.fd.owner.store.model.OwnerTemporaryVO;

@Repository
public class AdminStoresDAOMybatis implements AdminStoresDAO{
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	private String namespace ="config.mybatis.mapper.oracle.adminStores.";

	@Override
	public List<AdminStoresVO> adminApprovalList() {
		List<AdminStoresVO> list = sqlSession.selectList(namespace+"approvalList");
		return list;
	}

	@Override
	public AdminStoresVO adminApprovalDetail(int no) {
		AdminStoresVO vo = sqlSession.selectOne(namespace+"approvalDetail", no);
		return vo;
	}

	@Override
	public int adminApprovalAgree(int no) {
		return sqlSession.update(namespace+"approvalAgree", no);
	}

	@Override
	public int adminApprovalDeny(int no) {
		return sqlSession.update(namespace+"approvalDeny");
	}	
}
