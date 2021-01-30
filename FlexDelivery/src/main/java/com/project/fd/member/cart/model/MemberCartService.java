package com.project.fd.member.cart.model;

import java.util.List;
import java.util.Map;

public interface MemberCartService {
	boolean CartChk(Map<String, Object> map);
	int deleteByMemberNo(int memberNo);
	int addCart(List<MemberCartVO> list);
}
