package com.project.fd.owner.advertise.model;

public class StoreAdVO {
	private int storeNo;
	private int advertiseNo;
	private String adValidate;
	private String AdPayFlag;
	
	
	public int getStoreNo() {
		return storeNo;
	}
	public void setStoreNo(int storeNo) {
		this.storeNo = storeNo;
	}
	public int getAdvertiseNo() {
		return advertiseNo;
	}
	public void setAdvertiseNo(int advertiseNo) {
		this.advertiseNo = advertiseNo;
	}
	public String getAdValidate() {
		return adValidate;
	}
	public void setAdValidate(String adValidate) {
		this.adValidate = adValidate;
	}
	public String getAdPayFlag() {
		return AdPayFlag;
	}
	public void setAdPayFlag(String adPayFlag) {
		AdPayFlag = adPayFlag;
	}
	@Override
	public String toString() {
		return "StoreAdVO [storeNo=" + storeNo + ", advertiseNo=" + advertiseNo + ", adValidate=" + adValidate
				+ ", AdPayFlag=" + AdPayFlag + "]";
	}
	
	
	
}
