package com.project.fd.admin.mediumcategory.model;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class AdminMediumCategoryDAOMybatis implements AdminMediumCategoryDAO{
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	private String namespace="config.mybatis.mapper.oracle.adminmediumcategory.";
	
	/*
	public List<Map<String, Object>> selectAll2(int mCategoryNo) {
		return sqlSession.selectList(namespace+"selectAll2", mCategoryNo);
		}
	*/
	
	@Override
	public List<AdminMediumCategoryViewVO> selectAll2() {
		return sqlSession.selectList(namespace+"selectAll2");
	}

	@Override
	public int insertMediumcategory(AdminMediumCategoryVO mediumCategoryVo) {
		int cnt=sqlSession.insert(namespace+"insertMediumcategory", mediumCategoryVo);
		return cnt;
	}
}
