package com.project.fd.member.gift.model;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MemberGiftDAOMybatis implements MemberGiftDAO{
	@Autowired private SqlSessionTemplate sqlSession;
	private String namespace="config.mybatis.mapper.oracle.memberGift.";
	@Override
	public List<MemberGiftVO> selectTakeGiftList(int memberNo) {
		return sqlSession.selectList(namespace+"selectTakeGiftList",memberNo);
	}
	@Override
	public int useGift(int giftNo) {
		return sqlSession.update(namespace+"useGift",giftNo);
	}
	
}
