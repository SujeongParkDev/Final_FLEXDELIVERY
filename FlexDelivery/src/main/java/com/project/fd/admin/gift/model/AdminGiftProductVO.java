package com.project.fd.admin.gift.model;

public class AdminGiftProductVO {
	private int gProductNo;
	private String gProductName;
	private String gProductFile;
	private int gCategoryNo;
	
	public int getgProductNo() {
		return gProductNo;
	}
	public void setgProductNo(int gProductNo) {
		this.gProductNo = gProductNo;
	}
	public String getgProductName() {
		return gProductName;
	}
	public void setgProductName(String gProductName) {
		this.gProductName = gProductName;
	}
	public String getgProductFile() {
		return gProductFile;
	}
	public void setgProductFile(String gProductFile) {
		this.gProductFile = gProductFile;
	}
	public int getgCategoryNo() {
		return gCategoryNo;
	}
	public void setgCategoryNo(int gCategoryNo) {
		this.gCategoryNo = gCategoryNo;
	}
	
	@Override
	public String toString() {
		return "GiftProductVO [gProductNo=" + gProductNo + ", gProductName=" + gProductName + ", gProductFile="
				+ gProductFile + ", gCategoryNo=" + gCategoryNo + "]";
	}
	
	
	
}
