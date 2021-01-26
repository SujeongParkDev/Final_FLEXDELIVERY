package com.project.fd.admin.coupons.model;

import java.util.List;

public interface AdminRegularCouponDAO {

	List<AdminRegularCouponVO> selectAll();

	int insertRegularCoupon(AdminRegularCouponVO regularCouponVo);

	int updateRegularCoupon(AdminRegularCouponVO regularCouponVo);

	int deleteRegularCoupon(AdminRegularCouponVO regularCouponVo);

}
