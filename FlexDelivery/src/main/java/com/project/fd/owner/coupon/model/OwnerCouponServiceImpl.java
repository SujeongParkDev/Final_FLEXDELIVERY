package com.project.fd.owner.coupon.model;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.fd.admin.coupons.model.AdminRegularCouponVO;

@Service
public class OwnerCouponServiceImpl implements OwnerCouponService{
	@Autowired OwnerCouponDAO couponDao;

	@Override
	public List<Map<String, Object>> Allcoupons(OwnerCouponSearchVO searchVo) {
		return couponDao.Allcoupons(searchVo);
	}

	@Override
	public int getTotalRecord(OwnerCouponSearchVO searchVo) {
		return couponDao.getTotalRecord(searchVo);
	}

	@Override
	public List<AdminRegularCouponVO> Allselect() {
		return couponDao.Allselect();
	}

	@Override
	public int registerCoupon(OwnerCouponVO vo) {
		return couponDao.registerCoupon(vo);
	}
	
	
}
