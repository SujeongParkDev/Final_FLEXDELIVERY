package com.project.fd.member.coupon.model;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MemberCouponDAOMybatis implements MemberCouponDAO{
	@Autowired SqlSessionTemplate sqlSesssion;
	private String namespace="config.mybatis.mapper.oracle.memberCoupon.";
	
	@Override
	public List<MemberStoresCouponVO> storeCouponList(Map<String, Object> map) {
		return sqlSesssion.selectList(namespace+"storeCouponList",map);
	}

	@Override
	public List<MemberRegularCouponBoxVO> memberCouponList(int memberNo) {
		return sqlSesssion.selectList(namespace+"memberCouponList",memberNo);
	}

	@Override
	public int addCoupon(MemberRegularCouponBoxVO vo) {
		return sqlSesssion.insert(namespace+"addCoupon",vo);
	}
	
	
}
