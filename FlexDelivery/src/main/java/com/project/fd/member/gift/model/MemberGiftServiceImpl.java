package com.project.fd.member.gift.model;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MemberGiftServiceImpl implements MemberGiftService{
	@Autowired MemberGiftDAO giftDao;

	@Override
	public List<MemberGiftVO> selectTakeGiftList(int memberNo) {
		return giftDao.selectTakeGiftList(memberNo);
	}
	
	
}
