package com.project.fd.admin.gift.model;

public class AdminGiftCategoryProductVO {
	//giftCategory
	private int gCategoryNo;
	private String gCategoryName;

	//giftProduct
	private int gProductNo;
	private String gProductName;
	private String gProductFile;
	public int getgCategoryNo() {
		return gCategoryNo;
	}
	public String getgCategoryName() {
		return gCategoryName;
	}
	public int getgProductNo() {
		return gProductNo;
	}
	public String getgProductName() {
		return gProductName;
	}
	public String getgProductFile() {
		return gProductFile;
	}
	public void setgCategoryNo(int gCategoryNo) {
		this.gCategoryNo = gCategoryNo;
	}
	public void setgCategoryName(String gCategoryName) {
		this.gCategoryName = gCategoryName;
	}
	public void setgProductNo(int gProductNo) {
		this.gProductNo = gProductNo;
	}
	public void setgProductName(String gProductName) {
		this.gProductName = gProductName;
	}
	public void setgProductFile(String gProductFile) {
		this.gProductFile = gProductFile;
	}
	
	@Override
	public String toString() {
		return "AdminGiftCategoryProductVO [gCategoryNo=" + gCategoryNo + ", gCategoryName=" + gCategoryName
				+ ", gProductNo=" + gProductNo + ", gProductName=" + gProductName + ", gProductFile=" + gProductFile
				+ "]";
	}
	
}
