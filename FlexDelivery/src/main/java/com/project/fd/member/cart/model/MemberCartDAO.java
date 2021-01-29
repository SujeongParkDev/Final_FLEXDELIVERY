package com.project.fd.member.cart.model;

import java.util.Map;

public interface MemberCartDAO {
	int selectCartChk(Map<String, Object> map);
	int deleteByMemberNo(int memberNo);
	int addCart(MemberCartVO vo);
	int cartExist(MemberCartVO vo);
	int cartQtyPlus(MemberCartVO vo);
}
