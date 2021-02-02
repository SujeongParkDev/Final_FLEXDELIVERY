package com.project.fd.member.model;


import org.mindrot.jbcrypt.BCrypt;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service
public class MemberServiceImpl implements MemberService{
	@Autowired private MemberDAO memberDao;

	@Override
	public int insertMember(MemberVO vo) {
		int cnt = memberDao.insertMember(vo);
		return cnt;
	}

	@Override
	public int loginChk(String userId,String pwd) {
		int result=0;
		String dbPwd=memberDao.selectPwd(userId);
		if(dbPwd==null || dbPwd.isEmpty()) {
			result=ID_NONE;
		}else{
			if (BCrypt.checkpw(pwd, dbPwd)) {
				result=LOGIN_OK;				
			}else {
				result=PWD_DISAGREE;
			}
		}
		return result;
	}
	
	@Override
	public MemberVO selectMember(String userid) {
		return memberDao.selectMember(userid);
	}

	@Override
	public String selectMemberId(MemberVO vo) {
		return memberDao.selectMemberId(vo);
	}

	@Override
	public boolean chkMember(MemberVO vo) {
		int cnt=memberDao.chkMember(vo);
		if(cnt<1) {
			return false;
		}
		return true;
	}

	@Override
	public int pwdUpd(MemberVO vo) {
		return memberDao.pwdUpd(vo);
	}

	@Override
	public String selectAuth(int no) {
		return memberDao.selectAuth(no);
	}
	
	public int checkDup(String memberid){
		int count=memberDao.checkDup(memberid);
		
		int result=0;
		if(count>0) {
			result=EXIST_ID;  //이미 해당 아이디 존재
		}else {
			result=NON_EXIST_ID; //해당 아이디 없다
		}
		
		return result;
	}

	@Override
	public int memloNo(String locationName) {
		
		return memberDao.memloNo(locationName);
	}


	
}
