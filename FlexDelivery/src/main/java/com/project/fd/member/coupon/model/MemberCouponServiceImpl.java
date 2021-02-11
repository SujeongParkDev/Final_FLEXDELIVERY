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
	public List<MemberRegularCouponBoxVO> memberCouponList(Map<String, Object> map) {
		return coupDao.memberCouponList(map);
	}

	@Override
	public int addCoupon(MemberRegularCouponBoxVO vo) {
		return coupDao.addCoupon(vo);
	}

	@Override
	public boolean chkCoupon(int storeNo) {
		int cnt=coupDao.storeCouponCount(storeNo);
		if(cnt>0) {
			return true;
		}
		return false;
	}

	@Override
	public List<MemberEventCouponBoxVO> eventCouponBoxList(int memberNo) {
		return coupDao.eventCouponBoxList(memberNo);
				
	}
	
}
