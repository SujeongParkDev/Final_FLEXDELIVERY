package com.project.fd.admin.coupons.model;

public class AdminRegularCouponVO {
	private int rCouponNo;
	private int rCouponDv;
	private int rCouponMin;
	
	public int getrCouponNo() {
		return rCouponNo;
	}
	public void setrCouponNo(int rCouponNo) {
		this.rCouponNo = rCouponNo;
	}
	public int getrCouponDv() {
		return rCouponDv;
	}
	public void setrCouponDv(int rCouponDv) {
		this.rCouponDv = rCouponDv;
	}
	public int getrCouponMin() {
		return rCouponMin;
	}
	public void setrCouponMin(int rCouponMin) {
		this.rCouponMin = rCouponMin;
	}
	
	@Override
	public String toString() {
		return "RegularCouponVO [rCouponNo=" + rCouponNo + ", rCouponDv=" + rCouponDv + ", rCouponMin=" + rCouponMin
				+ "]";
	}
	
}
