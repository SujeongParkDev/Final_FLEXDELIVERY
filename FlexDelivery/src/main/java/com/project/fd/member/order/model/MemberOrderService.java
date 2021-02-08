package com.project.fd.member.order.model;

import java.util.List;

import com.project.fd.member.cart.model.MemberCartViewVO;


public interface MemberOrderService {
	public static final int COUPON_USE=1;
	public static final int GIFT_USE=2;
	
	int insertOrder(MemberOrderVO vo,List<MemberCartViewVO> list,int type,int dcNo);
}
