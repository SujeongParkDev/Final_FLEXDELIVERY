package com.project.fd.owner.store.model;

public class OwnerStoresVO {
	/*NOT NULL*/
	private int storeNo;/* 점포번호 */
	private String storeName; /* 점포명 */
	private String storeAddress;/* 점포주소 */
	private String storeAddressDetail; /* 점포상세주소 */
	private String storeRegdate;/* 점포등록일 */
	private String storeLogo;/* 점포로고이미지 */
	
	
	private String storeContent; /* 점포소개 */
	private String storeOutdate; /* 점포탈퇴일 */
	private String storeOpenTime; /* 점포오픈시간 */
	private String storeCloseTime ; /* 점포마감시간 */
	private int storeMinPrice;/* 최소주문금액 */
	
	/*포린키*/
	private int ownerNo; /* 점주번호 */
	private int lCategoryNo;  /* 대분류카테고리번호 */
	private int locationNo;  /* 지역코드번호 */
	private int  sStatusNo;  /* 점포영업상태번호1 */
	private int hCategoryNo; /* 휴무요일번호 7*/
	private int aAgreeNo; /* 관리자승인번호1 */
	private int oRegisterNo;/* 사업자등록번호 */
	
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
	public String getStoreRegdate() {
		return storeRegdate;
	}
	public void setStoreRegdate(String storeRegdate) {
		this.storeRegdate = storeRegdate;
	}
	public String getStoreLogo() {
		return storeLogo;
	}
	public void setStoreLogo(String storeLogo) {
		this.storeLogo = storeLogo;
	}
	public String getStoreContent() {
		return storeContent;
	}
	public void setStoreContent(String storeContent) {
		this.storeContent = storeContent;
	}
	public String getStoreOutdate() {
		return storeOutdate;
	}
	public void setStoreOutdate(String storeOutdate) {
		this.storeOutdate = storeOutdate;
	}
	public String getStoreOpenTime() {
		return storeOpenTime;
	}
	public void setStoreOpenTime(String storeOpenTime) {
		this.storeOpenTime = storeOpenTime;
	}
	public String getStoreCloseTime() {
		return storeCloseTime;
	}
	public void setStoreCloseTime(String storeCloseTime) {
		this.storeCloseTime = storeCloseTime;
	}
	public int getStoreMinPrice() {
		return storeMinPrice;
	}
	public void setStoreMinPrice(int storeMinPrice) {
		this.storeMinPrice = storeMinPrice;
	}
	public int getOwnerNo() {
		return ownerNo;
	}
	public void setOwnerNo(int ownerNo) {
		this.ownerNo = ownerNo;
	}
	public int getlCategoryNo() {
		return lCategoryNo;
	}
	public void setlCategoryNo(int lCategoryNo) {
		this.lCategoryNo = lCategoryNo;
	}
	public int getLocationNo() {
		return locationNo;
	}
	public void setLocationNo(int locationNo) {
		this.locationNo = locationNo;
	}
	public int getsStatusNo() {
		return sStatusNo;
	}
	public void setsStatusNo(int sStatusNo) {
		this.sStatusNo = sStatusNo;
	}
	public int gethCategoryNo() {
		return hCategoryNo;
	}
	public void sethCategoryNo(int hCategoryNo) {
		this.hCategoryNo = hCategoryNo;
	}
	public int getaAgreeNo() {
		return aAgreeNo;
	}
	public void setaAgreeNo(int aAgreeNo) {
		this.aAgreeNo = aAgreeNo;
	}
	public int getoRegisterNo() {
		return oRegisterNo;
	}
	public void setoRegisterNo(int oRegisterNo) {
		this.oRegisterNo = oRegisterNo;
	}
	@Override
	public String toString() {
		return "StoresVO [storeNo=" + storeNo + ", storeName=" + storeName + ", storeAddress=" + storeAddress
				+ ", storeAddressDetail=" + storeAddressDetail + ", storeRegdate=" + storeRegdate + ", storeLogo="
				+ storeLogo + ", storeContent=" + storeContent + ", storeOutdate=" + storeOutdate + ", storeOpenTime="
				+ storeOpenTime + ", storeCloseTime=" + storeCloseTime + ", storeMinPrice=" + storeMinPrice
				+ ", ownerNo=" + ownerNo + ", lCategoryNo=" + lCategoryNo + ", locationNo=" + locationNo
				+ ", sStatusNo=" + sStatusNo + ", hCategoryNo=" + hCategoryNo + ", aAgreeNo=" + aAgreeNo
				+ ", oRegisterNo=" + oRegisterNo + "]";
	}
	
	
}
