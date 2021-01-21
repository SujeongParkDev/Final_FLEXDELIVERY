package com.project.fd.owner.advertise.model;

import com.project.fd.common.SearchVO;

public class OwnerAdvertiseSearchVO extends SearchVO{
	private int storeNo;

	public int getStoreNo() {
		return storeNo;
	}

	public void setStoreNo(int storeNo) {
		this.storeNo = storeNo;
	}

	@Override
	public String toString() {
		return "OwnerAdvertiseSearchVO [storeNo=" + storeNo + "]";
	}

	
}
