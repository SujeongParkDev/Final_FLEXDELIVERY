package com.project.fd.member.coupon.model;

import java.sql.Timestamp;

public class MemberRegularCouponBoxVO {
	private int memberNo;
	private int sCBoxNo;
	private Timestamp rCBoxEnd;
	private String rCBoxUse;
	public int getMemberNo() {
		return memberNo;
	}
	public void setMemberNo(int memberNo) {
		this.memberNo = memberNo;
	}
	public int getsCBoxNo() {
		return sCBoxNo;
	}
	public void setsCBoxNo(int sCBoxNo) {
		this.sCBoxNo = sCBoxNo;
	}
	public Timestamp getrCBoxEnd() {
		return rCBoxEnd;
	}
	public void setrCBoxEnd(Timestamp rCBoxEnd) {
		this.rCBoxEnd = rCBoxEnd;
	}
	public String getrCBoxUse() {
		return rCBoxUse;
	}
	public void setrCBoxUse(String rCBoxUse) {
		this.rCBoxUse = rCBoxUse;
	}
	@Override
	public String toString() {
		return "MemberCouponVO [memberNo=" + memberNo + ", sCBoxNo=" + sCBoxNo + ", rCBoxEnd=" + rCBoxEnd
				+ ", rCBoxUse=" + rCBoxUse + "]";
	}
	
	
}
