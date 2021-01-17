package com.project.fd.member.model;


public interface MemberService {
	//아이디 중복확인시 사용
		public static final int EXIST_ID=1;  //아이디가 이미 존재하는 경우
		public static final int NON_EXIST_ID=2; //존재하지 않는 경우

		//로그인 처리시 사용
		public static final int LOGIN_OK=1; //로그인 성공
		public static final int ID_NONE=2; //아이디가 없는 경우
		public static final int PWD_DISAGREE=3; //비밀번호 불일치

		public int insertMember(MemberVO vo);
}