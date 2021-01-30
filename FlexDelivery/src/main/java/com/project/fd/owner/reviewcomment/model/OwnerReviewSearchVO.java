package com.project.fd.owner.reviewcomment.model;

import com.project.fd.common.DateSearchVO;

public class OwnerReviewSearchVO extends DateSearchVO{
	private int storeNo;

	public int getStoreNo() {
		return storeNo;
	}

	public void setStoreNo(int storeNo) {
		this.storeNo = storeNo;
	}

	@Override
	public String toString() {
		return "OwnerReviewSearchVO [storeNo=" + storeNo + "]";
	}
	
}
