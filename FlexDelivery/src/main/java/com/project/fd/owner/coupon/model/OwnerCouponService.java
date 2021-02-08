package com.project.fd.owner.coupon.model;

import java.util.List;
import java.util.Map;

import com.project.fd.admin.coupons.model.AdminRegularCouponVO;

public interface OwnerCouponService {
	public List<Map<String, Object>> Allcoupons(OwnerCouponSearchVO searchVo);
	public int getTotalRecord(OwnerCouponSearchVO searchVo);
	
	List<Map<String, Object>> useCoupons(int storeNo);
	
	// all regular coupon
	public List<AdminRegularCouponVO> Allselect();
	public int registerCoupon(OwnerCouponVO vo);
	
	public int deleteCoupon(List<OwnerCouponVO> cpList);
	
	public boolean dupck(List<AdminRegularCouponVO> list, int storeNo);
}
