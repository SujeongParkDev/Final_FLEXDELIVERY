package com.project.fd.owner.store.model;

public class OwnerTemporaryVO {
	private int tNo ; /* 임시저장번호 */
	private int storeNo; /* 점포번호 */
	private String tStoreName; /* 변경점포명 */
	private String tStoreAddress ; /* 변경점포주소 */
	private String tStoreAddressDetail; /* 변경점포상세주소 */
	private int locationNo ;/* 지역코드번호 */
	private String oRegisterNo ;/* 사업자등록번호 */
	private String tFileName ; /* 변경사업자등록증파일이름 */
	private String tOriginalFileName; /* 변경사업자등록증원본파일이름 */
	private int ownerno;/* 점주번호 */
	private String tOwnerName ;/* 변경점주이름 */
	private int tOwnerHp1 ;/* 변경점주연락처1 */
	private int tOwnerHp2 ; /* 변경점주연락처2 */
	private int tOwnerHp3 ; /* 변경점주연락처3 */
	private String tDetail ;/* 변경내용상세 */
	private String tRegdate ;/* 변경신청일 */
	private String tSubmitDate;/* 변경승인일 */
	private int aAgreeNo; /* 관리자승인번호 */
	public int gettNo() {
		return tNo;
	}
	public void settNo(int tNo) {
		this.tNo = tNo;
	}
	public int getStoreNo() {
		return storeNo;
	}
	public void setStoreNo(int storeNo) {
		this.storeNo = storeNo;
	}
	public String gettStoreName() {
		return tStoreName;
	}
	public void settStoreName(String tStoreName) {
		this.tStoreName = tStoreName;
	}
	public String gettStoreAddress() {
		return tStoreAddress;
	}
	public void settStoreAddress(String tStoreAddress) {
		this.tStoreAddress = tStoreAddress;
	}
	public String gettStoreAddressDetail() {
		return tStoreAddressDetail;
	}
	public void settStoreAddressDetail(String tStoreAddressDetail) {
		this.tStoreAddressDetail = tStoreAddressDetail;
	}
	public int getLocationNo() {
		return locationNo;
	}
	public void setLocationNo(int locationNo) {
		this.locationNo = locationNo;
	}
	public String getoRegisterNo() {
		return oRegisterNo;
	}
	public void setoRegisterNo(String oRegisterNo) {
		this.oRegisterNo = oRegisterNo;
	}
	public String gettFileName() {
		return tFileName;
	}
	public void settFileName(String tFileName) {
		this.tFileName = tFileName;
	}
	public String gettOriginalFileName() {
		return tOriginalFileName;
	}
	public void settOriginalFileName(String tOriginalFileName) {
		this.tOriginalFileName = tOriginalFileName;
	}
	public int getOwnerno() {
		return ownerno;
	}
	public void setOwnerno(int ownerno) {
		this.ownerno = ownerno;
	}
	public String gettOwnerName() {
		return tOwnerName;
	}
	public void settOwnerName(String tOwnerName) {
		this.tOwnerName = tOwnerName;
	}
	public int gettOwnerHp1() {
		return tOwnerHp1;
	}
	public void settOwnerHp1(int tOwnerHp1) {
		this.tOwnerHp1 = tOwnerHp1;
	}
	public int gettOwnerHp2() {
		return tOwnerHp2;
	}
	public void settOwnerHp2(int tOwnerHp2) {
		this.tOwnerHp2 = tOwnerHp2;
	}
	public int gettOwnerHp3() {
		return tOwnerHp3;
	}
	public void settOwnerHp3(int tOwnerHp3) {
		this.tOwnerHp3 = tOwnerHp3;
	}
	public String gettDetail() {
		return tDetail;
	}
	public void settDetail(String tDetail) {
		this.tDetail = tDetail;
	}
	public String gettRegdate() {
		return tRegdate;
	}
	public void settRegdate(String tRegdate) {
		this.tRegdate = tRegdate;
	}
	public String gettSubmitDate() {
		return tSubmitDate;
	}
	public void settSubmitDate(String tSubmitDate) {
		this.tSubmitDate = tSubmitDate;
	}
	public int getaAgreeNo() {
		return aAgreeNo;
	}
	public void setaAgreeNo(int aAgreeNo) {
		this.aAgreeNo = aAgreeNo;
	}
	@Override
	public String toString() {
		return "OwnerTemporaryVO [tNo=" + tNo + ", storeNo=" + storeNo + ", tStoreName=" + tStoreName
				+ ", tStoreAddress=" + tStoreAddress + ", tStoreAddressDetail=" + tStoreAddressDetail + ", locationNo="
				+ locationNo + ", oRegisterNo=" + oRegisterNo + ", tFileName=" + tFileName + ", tOriginalFileName="
				+ tOriginalFileName + ", ownerno=" + ownerno + ", tOwnerName=" + tOwnerName + ", tOwnerHp1=" + tOwnerHp1
				+ ", tOwnerHp2=" + tOwnerHp2 + ", tOwnerHp3=" + tOwnerHp3 + ", tDetail=" + tDetail + ", tRegdate="
				+ tRegdate + ", tSubmitDate=" + tSubmitDate + ", aAgreeNo=" + aAgreeNo + "]";
	}
	
	
}
