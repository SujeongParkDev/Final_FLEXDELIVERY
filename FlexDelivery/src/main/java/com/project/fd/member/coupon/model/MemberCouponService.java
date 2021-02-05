package com.project.fd.member.coupon.model;

import java.util.List;
import java.util.Map;

public interface MemberCouponService {
	List<MemberStoresCouponVO> storeCouponList(Map<String, Object> map);
	List<MemberRegularCouponBoxVO> memberCouponList(int memberNo);
	int addCoupon(MemberRegularCouponBoxVO vo);
}
