package com.project.fd.member.controller;


import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.project.fd.member.coupon.model.MemberCouponService;
import com.project.fd.member.coupon.model.MemberRegularCouponBoxVO;

@Controller
@RequestMapping("/member/coupon")
public class MemberCouponController {

	@Autowired private final static Logger logger=LoggerFactory.getLogger(MemberCouponController.class);
	@Autowired private MemberCouponService coupServ;
	
	
	@ResponseBody
	@RequestMapping(value="/addCoupon.do",method = RequestMethod.POST)
	public Boolean addCoupon(@ModelAttribute MemberRegularCouponBoxVO vo,Model model) {
		logger.info("쿠폰발급처리, MemberRegularCouponBoxVO={}",vo);
		int cnt=coupServ.addCoupon(vo);
		logger.info("쿠폰발급결과, cnt={}",cnt);
		if(cnt>0) {
			return true;
		}
		return false;
	}
}
