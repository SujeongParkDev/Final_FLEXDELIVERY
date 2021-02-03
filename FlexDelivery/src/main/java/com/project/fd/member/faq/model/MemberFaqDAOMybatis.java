package com.project.fd.member.faq.model;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;

public class MemberFaqDAOMybatis implements MemberFaqDAO{

	@Autowired private SqlSessionTemplate sqlSession;
	
	private String namespace="config.mybatis.mapper.oracle.memberFaq.";
	
	@Override
	public List<MemberFaqVo> selectFaq(int fCategoryNo) {
		return sqlSession.selectList(namespace+"faqSelect", fCategoryNo);
	}
	
	
	

}
