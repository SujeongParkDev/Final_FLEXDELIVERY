package com.project.fd.admin.menu3.model;

public class AdminHoneytipVO {
	private int honeytipNo;
	private String honeytipTitle;
	private String honeytipContent;
	private String honeytipThumbnail;
	private String honeytipRegdate;
	
	public int getHoneytipNo() {
		return honeytipNo;
	}
	public void setHoneytipNo(int honeytipNo) {
		this.honeytipNo = honeytipNo;
	}
	public String getHoneytipTitle() {
		return honeytipTitle;
	}
	public void setHoneytipTitle(String honeytipTitle) {
		this.honeytipTitle = honeytipTitle;
	}
	public String getHoneytipContent() {
		return honeytipContent;
	}
	public void setHoneytipContent(String honeytipContent) {
		this.honeytipContent = honeytipContent;
	}
	public String getHoneytipThumbnail() {
		return honeytipThumbnail;
	}
	public void setHoneytipThumbnail(String honeytipThumbnail) {
		this.honeytipThumbnail = honeytipThumbnail;
	}
	public String getHoneytipRegdate() {
		return honeytipRegdate;
	}
	public void setHoneytipRegdate(String honeytipRegdate) {
		this.honeytipRegdate = honeytipRegdate;
	}
	
	@Override
	public String toString() {
		return "HoneyTipVO [honeytipNo=" + honeytipNo + ", honeytipTitle=" + honeytipTitle + ", honeytipContent="
				+ honeytipContent + ", honeytipThumbnail=" + honeytipThumbnail + ", honeytipRegdate=" + honeytipRegdate
				+ "]";
	}
	
	
	
}
