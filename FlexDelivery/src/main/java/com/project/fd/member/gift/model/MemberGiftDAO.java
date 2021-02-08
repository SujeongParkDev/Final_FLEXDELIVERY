package com.project.fd.member.gift.model;

import java.util.List;

public interface MemberGiftDAO {
	List<MemberGiftVO> selectTakeGiftList(int memberNo);
	int useGift(int giftNo);
	
}
