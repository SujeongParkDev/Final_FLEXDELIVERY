package com.project.fd.member.order.model;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MemberOrderDAOMybatis implements MemberOrderDAO{
	@Autowired SqlSessionTemplate sqlSession;
	private String namespace="config.mybatis.mapper.oracle.memberOrder.";
	
	@Override
	public int insertOrder(MemberOrderVO vo) {
		return sqlSession.insert(namespace+"insertOrder",vo);
	}

	@Override
	public int insertOrderDetail(MemberOrderDetailVO vo) {
		return sqlSession.insert(namespace+"insertOrderDetail",vo);
	}
}
