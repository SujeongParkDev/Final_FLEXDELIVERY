package com.project.fd.member.review.model;

import java.sql.Timestamp;

public class MemberReviewVO {
	private int reviewNo;
	private int reviewRating;
	private String reviewContent;
	private int reviewLike;
	private Timestamp reviewRegdate;
	private String reviewReport;
	private String reviewFilename;
	private String reviewDelFlag;
	private int memberNo;
	private int ordersNo;
	private int storeNo;
	private String memberName;
	
	
	public String getMemberName() {
		return memberName;
	}
	public void setMemberName(String memberName) {
		this.memberName = memberName;
	}
	public int getReviewNo() {
		return reviewNo;
	}
	public void setReviewNo(int reviewNo) {
		this.reviewNo = reviewNo;
	}
	public int getReviewRating() {
		return reviewRating;
	}
	public void setReviewRating(int reviewRating) {
		this.reviewRating = reviewRating;
	}
	public String getReviewContent() {
		return reviewContent;
	}
	public void setReviewContent(String reviewContent) {
		this.reviewContent = reviewContent;
	}
	public int getReviewLike() {
		return reviewLike;
	}
	public void setReviewLike(int reviewLike) {
		this.reviewLike = reviewLike;
	}
	public Timestamp getReviewRegdate() {
		return reviewRegdate;
	}
	public void setReviewRegdate(Timestamp reviewRegdate) {
		this.reviewRegdate = reviewRegdate;
	}
	public String getReviewReport() {
		return reviewReport;
	}
	public void setReviewReport(String reviewReport) {
		this.reviewReport = reviewReport;
	}
	public String getReviewFilename() {
		return reviewFilename;
	}
	public void setReviewFilename(String reviewFilename) {
		this.reviewFilename = reviewFilename;
	}
	public String getReviewDelFlag() {
		return reviewDelFlag;
	}
	public void setReviewDelFlag(String reviewDelFlag) {
		this.reviewDelFlag = reviewDelFlag;
	}
	public int getMemberNo() {
		return memberNo;
	}
	public void setMemberNo(int memberNo) {
		this.memberNo = memberNo;
	}
	public int getOrdersNo() {
		return ordersNo;
	}
	public void setOrdersNo(int ordersNo) {
		this.ordersNo = ordersNo;
	}
	public int getStoreNo() {
		return storeNo;
	}
	public void setStoreNo(int storeNo) {
		this.storeNo = storeNo;
	}
	@Override
	public String toString() {
		return "MemberReviewVO [reviewNo=" + reviewNo + ", reviewRating=" + reviewRating + ", reviewContent="
				+ reviewContent + ", reviewLike=" + reviewLike + ", reviewRegdate=" + reviewRegdate + ", reviewReport="
				+ reviewReport + ", reviewFilename=" + reviewFilename + ", reviewDelFlag=" + reviewDelFlag
				+ ", memberNo=" + memberNo + ", ordersNo=" + ordersNo + ", storeNo=" + storeNo + "]";
	}
	
	
}
