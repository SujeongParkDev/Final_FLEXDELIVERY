package com.project.fd.member.model;

public class MemberVO {
	private int memberNo;
	private String memberName;
	private String memberId;
	private String memberPwd;
	private String memberZipcode;
	private String memberAddress;
	private String memberAddressDetail;
	private String memberRegdate;
	private String memberOutdate;
	private String memberHp1;
	private String memberHp2;
	private String memberHp3;
	private String memberEmail1;
	private String memberEmail2;
	private String authorityNo;
	private String locationNo;
	public int getMemberNo() {
		return memberNo;
	}
	public void setMemberNo(int memberNo) {
		this.memberNo = memberNo;
	}
	public String getMemberName() {
		return memberName;
	}
	public void setMemberName(String memberName) {
		this.memberName = memberName;
	}
	public String getMemberId() {
		return memberId;
	}
	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}
	public String getMemberPwd() {
		return memberPwd;
	}
	public void setMemberPwd(String memberPwd) {
		this.memberPwd = memberPwd;
	}
	public String getMemberZipcode() {
		return memberZipcode;
	}
	public void setMemberZipcode(String memberZipcode) {
		this.memberZipcode = memberZipcode;
	}
	public String getMemberAdress() {
		return memberAddress;
	}
	public void setMemberAdress(String memberAdress) {
		this.memberAddress = memberAdress;
	}
	public String getMemberAdressDetail() {
		return memberAddressDetail;
	}
	public void setMemberAdressDetail(String memberAdressDetail) {
		this.memberAddressDetail = memberAdressDetail;
	}
	public String getMemberRegdate() {
		return memberRegdate;
	}
	public void setMemberRegdate(String memberRegdate) {
		this.memberRegdate = memberRegdate;
	}
	public String getMemberOutdate() {
		return memberOutdate;
	}
	public void setMemberOutdate(String memberOutdate) {
		this.memberOutdate = memberOutdate;
	}
	public String getMemberHp1() {
		return memberHp1;
	}
	public void setMemberHp1(String memberHp1) {
		this.memberHp1 = memberHp1;
	}
	public String getMemberHp2() {
		return memberHp2;
	}
	public void setMemberHp2(String memberHp2) {
		this.memberHp2 = memberHp2;
	}
	public String getMemberHp3() {
		return memberHp3;
	}
	public void setMemberHp3(String memberHp3) {
		this.memberHp3 = memberHp3;
	}
	public String getMemberEmail1() {
		return memberEmail1;
	}
	public void setMemberEmail1(String memberEmail1) {
		this.memberEmail1 = memberEmail1;
	}
	public String getMemberEmail2() {
		return memberEmail2;
	}
	public void setMemberEmail2(String memberEmail2) {
		this.memberEmail2 = memberEmail2;
	}
	public String getAuthorityNo() {
		return authorityNo;
	}
	public void setAuthorityNo(String authorityNo) {
		this.authorityNo = authorityNo;
	}
	public String getLocationNo() {
		return locationNo;
	}
	public void setLocationNo(String locationNo) {
		this.locationNo = locationNo;
	}
	@Override
	public String toString() {
		return "MemberVO [memberNo=" + memberNo + ", memberName=" + memberName + ", memberId=" + memberId
				+ ", memberPwd=" + memberPwd + ", memberZipcode=" + memberZipcode + ", memberAdress=" + memberAddress
				+ ", memberAdressDetail=" + memberAddressDetail + ", memberRegdate=" + memberRegdate + ", memberOutdate="
				+ memberOutdate + ", memberHp1=" + memberHp1 + ", memberHp2=" + memberHp2 + ", memberHp3=" + memberHp3
				+ ", memberEmail1=" + memberEmail1 + ", memberEmail2=" + memberEmail2 + ", authorityNo=" + authorityNo
				+ ", locationNo=" + locationNo + "]";
	}
	
	
	
}
