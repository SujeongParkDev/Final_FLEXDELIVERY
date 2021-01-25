package com.project.fd.member.stores.model;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.fd.admin.largecategory.model.AdminLargeCategoryVO;

@Repository
public class MemberStoresDAOMybatis implements MemberStoresDAO{
	@Autowired private SqlSessionTemplate sqlSession;
	private String namespace="config.mybatis.mapper.oracle.memberStores.";
	
	@Override
	public List<MemberStoresVO> selectFlexAdStores(Map<String, Object> map) {
		return sqlSession.selectList(namespace+"selectFlexAdStores",map);
	}

	@Override
	public List<MemberStoresVO> selectOpenAdStores(Map<String, Object> map) {
		return sqlSession.selectList(namespace+"selectOpenAdStores",map);
	}

	@Override
	public List<AdminLargeCategoryVO> categorySlider() {
		return sqlSession.selectList(namespace+"categorySlider");
	}

	@Override
	public List<MemberStoresVO> selectAllStores(Map<String, Object> map) {
		return sqlSession.selectList(namespace+"selectAllStores",map);
	}
	
}
