package com.project.fd.member.order.model;

public interface MemberOrderDAO {
	int insertOrder(MemberOrderVO vo);
	int insertOrderDetail(MemberOrderDetailVO vo);
}
