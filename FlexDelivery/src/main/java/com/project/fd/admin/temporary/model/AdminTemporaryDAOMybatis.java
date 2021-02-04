package com.project.fd.admin.temporary.model;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.fd.owner.model.OwnerVO;
import com.project.fd.owner.ownerregister.model.OwnerRegisterVO;
import com.project.fd.owner.store.model.OwnerStoresVO;

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

	@Override
	public int editOwner(OwnerVO ownerVo) {
		return 0;
	}

	@Override
	public int editOwnerRegister(OwnerRegisterVO registerVo) {
		return 0;
	}

	@Override
	public int editStores(OwnerStoresVO storesVo) {
		return 0;
	}		
}
