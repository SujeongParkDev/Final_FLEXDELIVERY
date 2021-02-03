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
	public AdminStoresVO adminApprovalDetail(long no) {
		AdminStoresVO storesVo =sqlSession.selectOne(namespace+"approvalDetail", no);
		return storesVo;
	}

	@Override
	public int adminApprovalAgree(long no) {
		return sqlSession.update(namespace+"approvalAgree", no);
	}

	@Override
	public int adminApprovalDeny(long no) {
		return sqlSession.update(namespace+"approvalDeny", no);
	}

	@Override
	public int adminInitContent(long no) {
		return sqlSession.update(namespace+"initContent", no);
	}

}
