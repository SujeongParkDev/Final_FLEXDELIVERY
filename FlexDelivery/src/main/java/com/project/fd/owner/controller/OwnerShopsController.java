package com.project.fd.owner.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/owner")
public class OwnerShopsController {
	private static final Logger logger 
	= LoggerFactory.getLogger(OwnerShopsController.class);

	@RequestMapping("/menu2/basic/basic.do")
	public void ownerbasic() {
		logger.info("내 점포 - 기본정보 보여주기");
	}
	
	@RequestMapping("/menu2/operation/operation.do")
	public void owneroperation() {
		logger.info("내 점포 - 운영정보 보여주기");
	}
	
	@RequestMapping("/menu2/couponused/couponUsed.do")
	public void ownercouponused() {
		logger.info("혜택 - 쿠폰관리 보여주기");
	}
	
	@RequestMapping("/menu2/requests/requests.do")
	public void ownerrequests() {
		logger.info("요청처리현황 보여주기");
	}
}
