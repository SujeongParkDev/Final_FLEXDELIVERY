package com.project.fd.member.model;

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
			if (dbPwd.equals(pwd)) {
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
	
	
}
