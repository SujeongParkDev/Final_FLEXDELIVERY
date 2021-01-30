package com.project.fd.owner.menu.model;

import java.util.List;

public class OptionResultVO {
	private List<OwnerOptionRankVO> list;
	private int sMGroupNo;
	private int menuNo;
	private String sMGroupName;
	private String menuName;
	public List<OwnerOptionRankVO> getList() {
		return list;
	}
	public void setList(List<OwnerOptionRankVO> list) {
		this.list = list;
	}
	public int getsMGroupNo() {
		return sMGroupNo;
	}
	public void setsMGroupNo(int sMGroupNo) {
		this.sMGroupNo = sMGroupNo;
	}
	public int getMenuNo() {
		return menuNo;
	}
	public void setMenuNo(int menuNo) {
		this.menuNo = menuNo;
	}
	public String getsMGroupName() {
		return sMGroupName;
	}
	public void setsMGroupName(String sMGroupName) {
		this.sMGroupName = sMGroupName;
	}
	public String getMenuName() {
		return menuName;
	}
	public void setMenuName(String menuName) {
		this.menuName = menuName;
	}
	@Override
	public String toString() {
		return "OptionResultVO [list=" + list + ", sMGroupNo=" + sMGroupNo + ", menuNo=" + menuNo + ", sMGroupName="
				+ sMGroupName + ", menuName=" + menuName + "]";
	}
	
	
	
	
}
