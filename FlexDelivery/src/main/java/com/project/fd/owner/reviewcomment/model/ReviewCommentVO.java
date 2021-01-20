package com.project.fd.owner.reviewcomment.model;

public class ReviewCommentVO {
	private int reviewNo; /* 리뷰번호 */
	private int storeNo; /* 점포번호 - fk */
	private String rCommentContent; /* 코멘트내용 */
	private String rCommentRegdate; /* 코멘트등록일 */
	
	public int getReviewNo() {
		return reviewNo;
	}
	public void setReviewNo(int reviewNo) {
		this.reviewNo = reviewNo;
	}
	public int getStoreNo() {
		return storeNo;
	}
	public void setStoreNo(int storeNo) {
		this.storeNo = storeNo;
	}
	public String getrCommentContent() {
		return rCommentContent;
	}
	public void setrCommentContent(String rCommentContent) {
		this.rCommentContent = rCommentContent;
	}
	public String getrCommentRegdate() {
		return rCommentRegdate;
	}
	public void setrCommentRegdate(String rCommentRegdate) {
		this.rCommentRegdate = rCommentRegdate;
	}
	@Override
	public String toString() {
		return "ReviewCommentVO [reviewNo=" + reviewNo + ", storeNo=" + storeNo + ", rCommentContent=" + rCommentContent
				+ ", rCommentRegdate=" + rCommentRegdate + "]";
	}
	
}
