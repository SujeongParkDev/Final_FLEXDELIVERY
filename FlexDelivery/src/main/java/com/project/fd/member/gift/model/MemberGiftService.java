package com.project.fd.member.gift.model;

import java.util.List;

public interface MemberGiftService {
	List<MemberGiftVO> selectTakeGiftList(int memberNo);
}	
