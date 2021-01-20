package com.project.fd;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/owner")
public class ownerTestController {
	private static final Logger logger
	=LoggerFactory.getLogger(ownerTestController.class);

	 @RequestMapping("/index.do") 
	 public void ownerMain() {
		 logger.info("사장님 메인 화면 보여주기"); 
	 }
	 
	 @RequestMapping("/menu1/launch.do")
	 public void ownerlaunch() {
		 logger.info("점포 - 입점 메인 화면 보여주기");
	}
	 
	// @RequestMapping("/menu1/launchNext.do")
	// public void ownerlaunchNext() {
	//	 logger.info("점포 - 입점 약관 보여주기");
	//}
	 
	 @RequestMapping("/menu2/myStore.do")
	 public void ownermyStore() {
		 logger.info("점포 - 내 가게 메인 화면 보여주기");
	}
	 
	 @RequestMapping("/menu2/basic.do")
	 public void ownerbasic() {
		 logger.info("점포 - 내 가게 기본정보 화면 보여주기");
	}
	 
	 @RequestMapping("/menu2/operation.do")
	 public void owneroperation() {
		 logger.info("점포 - 내 가게 운영정보 화면 보여주기");
	}
	
	 @RequestMapping("/menu2/requests.do")
	 public void ownerrequests() {
		 logger.info("점포 - 내 가게 요청처리현황 화면 보여주기");
	}
	 
	 @RequestMapping("/menu2/couponUsed.do")
	 public void ownercouponUsed() {
		 logger.info("점포 - 내 가게 쿠폰내역 화면 보여주기");
	}
	 
}
