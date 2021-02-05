package com.project.fd.member.coupon.model;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MemberCouponServiceImpl implements MemberCouponService{

	@Autowired MemberCouponDAO coupDao;

	@Override
	public List<MemberStoresCouponVO> storeCouponList(Map<String, Object> map) {
		return coupDao.storeCouponList(map);
	}
	
	@Override
	public List<MemberRegularCouponBoxVO> memberCouponList(int memberNo) {
		return coupDao.memberCouponList(memberNo);
	}

	@Override
	public int addCoupon(MemberRegularCouponBoxVO vo) {
		return coupDao.addCoupon(vo);
	}
	
}
