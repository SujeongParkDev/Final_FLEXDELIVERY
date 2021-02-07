package com.project.fd.owner.coupon.model;

import java.util.List;
import java.util.Map;

import com.project.fd.admin.coupons.model.AdminRegularCouponDAO;
import com.project.fd.admin.coupons.model.AdminRegularCouponVO;

public interface OwnerCouponService {
	public List<Map<String, Object>> Allcoupons(OwnerCouponSearchVO searchVo);
	public int getTotalRecord(OwnerCouponSearchVO searchVo);
	
	// all regular coupon
	public List<AdminRegularCouponVO> Allselect();
	public int registerCoupon(OwnerCouponVO vo);
}
