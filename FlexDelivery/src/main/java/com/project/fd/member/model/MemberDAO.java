package com.project.fd.member.model;


public interface MemberDAO {
	public int insertMember(MemberVO vo);
	public String selectPwd(String userid);
	MemberVO selectMember(String userid);
	String selectMemberId(MemberVO vo);
	int chkMember(MemberVO vo);
	int pwdUpd(MemberVO vo);
	String selectAuth(int no);
}
