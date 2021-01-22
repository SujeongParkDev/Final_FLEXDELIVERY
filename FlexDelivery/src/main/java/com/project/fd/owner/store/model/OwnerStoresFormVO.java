package com.project.fd.owner.store.model;

public class OwnerStoresFormVO {
private int storeNo;/* 점포번호 */
	
	private String storeName; /* 점포명 */
	private String storeLogo;/* 점포로고이미지 */
	private String storeAddress;/* 점포주소 */
	private String storeAddressDetail; /* 점포상세주소 */
	public int getStoreNo() {
		return storeNo;
	}
	public void setStoreNo(int storeNo) {
		this.storeNo = storeNo;
	}
	public String getStoreName() {
		return storeName;
	}
	public void setStoreName(String storeName) {
		this.storeName = storeName;
	}
	public String getStoreLogo() {
		return storeLogo;
	}
	public void setStoreLogo(String storeLogo) {
		this.storeLogo = storeLogo;
	}
	public String getStoreAddress() {
		return storeAddress;
	}
	public void setStoreAddress(String storeAddress) {
		this.storeAddress = storeAddress;
	}
	public String getStoreAddressDetail() {
		return storeAddressDetail;
	}
	public void setStoreAddressDetail(String storeAddressDetail) {
		this.storeAddressDetail = storeAddressDetail;
	}
	@Override
	public String toString() {
		return "OwnerStoresFormVO [storeNo=" + storeNo + ", storeName=" + storeName + ", storeLogo=" + storeLogo
				+ ", storeAddress=" + storeAddress + ", storeAddressDetail=" + storeAddressDetail + "]";
	}
	
	
}
