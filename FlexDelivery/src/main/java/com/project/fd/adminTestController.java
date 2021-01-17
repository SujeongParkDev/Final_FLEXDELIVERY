package com.project.fd;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/admin")
public class adminTestController {
	private static final Logger logger
	=LoggerFactory.getLogger(adminTestController.class);

	@RequestMapping("/adminLogin/login.do")
	public void adminLogin() {
		logger.info("관리자 로그인 화면");
	}
	
	@RequestMapping("/index.do")
	public void adminMain() {
		logger.info("관리자 메인 화면 보여주기");
	}
	
	@RequestMapping("/chart/index.do")
	public void adminChartMain() {
		logger.info("관리자 - 통계용 화면 보여주기");
	}
	
	@RequestMapping("/menu1/memberMg.do")
	public void adminMemberSummary() {
		logger.info("관리자 - 회원관리 요약화면 보여주기");
	}
	
	@RequestMapping("/menu1/member.do")
	public void adminMember() {
		logger.info("관리자 - 회원조회 화면 보여주기");
	}
	
	@RequestMapping("/menu1/memberGrade.do")
	public void admin() {
		logger.info("관리자 - 회원등급관리 화면 보여주기");
	}

	@RequestMapping("/menu1/review.do")
	public void adminReview() {
		logger.info("관리자 - 리뷰 화면 보여주기");
	}
	
	@RequestMapping("/menu2/storeMg.do")
	public void adminStoreMg() {
		logger.info("관리자 - 점포관리 요약 화면 보여주기");
	}
	
	@RequestMapping("/menu2/approval.do")
	public void adminApproval() {
		logger.info("관리자 - 점포 승인관리 화면 보여주기");
	}
	
	@RequestMapping("/menu2/store.do")
	public void adminStore() {
		logger.info("관리자 - 점포조회 화면 보여주기");
	}
	
	@RequestMapping("/menu3/honeyTip.do")
	public void adminHoneyTip() {
		logger.info("관리자 - 사장님꿀팁 화면 보여주기");
	}
	
	@RequestMapping("/menu3/notice.do")
	public void adminNotice() {
		logger.info("관리자 - 공지사항 화면 보여주기");
	}
	
	@RequestMapping("/menu3/event.do")
	public void adminEvent() {
		logger.info("관리자 - 이벤트 화면 보여주기");
	}

	@RequestMapping("/menu4/introduce.do")
	public void adminIntroduce() {
		logger.info("관리자 - 플렉스 딜리버리 소개 보여주기");
	}
		
	@RequestMapping("/menu5/faq.do")
	public void adminFaq() {
		logger.info("관리자 - 자주하는질문 화면 보여주기");
	}
	
	@RequestMapping("/menu5/oneToOne.do")
	public void adminOneToOne() {
		logger.info("관리자 - 1:1 문의 내역 화면 보여주기");
	}
	
	@RequestMapping("/menu6/category.do")
	public void adminCategory() {
		logger.info("관리자 - 카테고리 화면 보여주기");
	}
	
	@RequestMapping("/menu6/coupons.do")
	public void adminCoupons() {
		logger.info("관리자 - 쿠폰 요약 화면 보여주기");
	}
	
	@RequestMapping("/menu6/storeCoupon.do")
	public void adminStoreCoupon() {
		logger.info("관리자 - 정기 쿠폰 화면 보여주기");
	}
	
	@RequestMapping("/menu6/eventCoupon.do")
	public void adminEventCoupon() {
		logger.info("관리자 - 이벤트 쿠폰 화면 보여주기");
	}
	
	@RequestMapping("/menu6/todayFoods.do")
	public void adminTodayFoods() {
		logger.info("관리자 - 오늘 뭐 먹지 화면 보여주기");
	}
	
	@RequestMapping("/menu6/gift.do")
	public void adminGift() {
		logger.info("관리자 - 선물하기 관리 화면 보여주기");
	}
	
	
}
