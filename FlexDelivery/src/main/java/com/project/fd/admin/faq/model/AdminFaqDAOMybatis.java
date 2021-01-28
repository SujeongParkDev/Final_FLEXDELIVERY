package com.project.fd.admin.faq.model;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class AdminFaqDAOMybatis implements AdminFaqDAO{

	@Autowired
	private SqlSessionTemplate sqlSession;
	
	private String namespace="config.mybatis.mapper.oracle.adminfaq.";

	@Override
	public List<AdminFaqVO> selectAll() {
		List<AdminFaqVO> list=sqlSession.selectList(namespace+"selectAll");
		return list;
	}

	@Override
	public List<AdminFaqAllViewVO> selectAll2() {
		List<AdminFaqAllViewVO> list=sqlSession.selectList(namespace+"selectAll2");
		return list;
	}

	@Override
	public int insertFaq(AdminFaqVO faqVo) {
		int cnt=sqlSession.insert(namespace+"insertFaq", faqVo);
		return cnt;
	}

	@Override
	public int updateFaq(AdminFaqVO faqVo) {
		int cnt=sqlSession.update(namespace+"updateFaq", faqVo);
		return cnt;
	}

	@Override
	public int deleteFaq(AdminFaqVO faqVo) {
		int cnt=sqlSession.delete(namespace+"deleteFaq", faqVo);
		return cnt;
	}
}
