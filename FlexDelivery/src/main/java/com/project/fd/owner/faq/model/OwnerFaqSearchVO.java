package com.project.fd.owner.faq.model;


import com.project.fd.common.SearchVO;

public class OwnerFaqSearchVO extends SearchVO{
	private int fCategoryNo;

	public int getfCategoryNo() {
		return fCategoryNo;
	}

	public void setfCategoryNo(int fCategoryNo) {
		this.fCategoryNo = fCategoryNo;
	}

	@Override
	public String toString() {
		return "OwnerFaqSearchVO [fCategoryNo=" + fCategoryNo + "]";
	}

}
