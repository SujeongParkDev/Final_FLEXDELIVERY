package com.project.fd.member.model;

public interface MemberDAO {
	public int insertMember(MemberVO vo);
	public String selectPwd(String userid);
	MemberVO selectMember(String userid);
}
