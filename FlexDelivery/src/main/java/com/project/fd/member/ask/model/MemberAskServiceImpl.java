package com.project.fd.member.ask.model;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MemberAskServiceImpl implements MemberAskService{
	@Autowired private MemberAskDAO memberAskDao;

	@Override
	public int askWrite(MemberAskVO vo) {
		return memberAskDao.askWrite(vo);
	}
	
	

}
