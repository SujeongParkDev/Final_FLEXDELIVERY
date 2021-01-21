package com.project.fd.admin.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/admin")
public class AdminController {
	private static final Logger logger
	=LoggerFactory.getLogger(AdminController.class);

	@RequestMapping("/login/login.do")
	public void adminLogin() {
		logger.info("관리자 - 로그인 화면");
	}

	@RequestMapping("/myPage/myPage.do")
	public void adminMyPage() {
		logger.info("관리자 - 마이페이지 비밀번호 확인 화면");
	}
	
	@RequestMapping("/myPage/myPage2.do")
	public void adminMyPage2() {
		logger.info("관리자 - 마이페이지 화면");
	}
	
	@RequestMapping("/index.do")
	public void adminMain() {
		logger.info("관리자 메인 화면 보여주기");
	}

	/*
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
	
	@RequestMapping("/menu2/approval.do")
	public void adminApproval() {
		logger.info("관리자 - 점포 승인관리 화면 보여주기");
	}
	
	@RequestMapping("/menu2/approvalDetail.do")
	public void adminApprovalDetail() {
		logger.info("관리자 - 점포 승인 디테일 화면 보여주기");
	}
	
	@RequestMapping("/menu2/approvalEdit.do")
	public void adminApprovalEdit() {
		logger.info("관리자 - 점포 승인 변경 화면 보여주기");
	}
	
	@RequestMapping("/menu2/storeAD.do")
	public void adminStore() {
		logger.info("관리자 - 광고승인 리스트 화면 보여주기");
	}
	
	@RequestMapping("/menu2/storeAdDetail.do")
	public void adminStoreDetail() {
		logger.info("관리자 - 광고승인 리스트 화면 보여주기");
	}
	
	@RequestMapping("/menu2/storeMg.do")
	public void adminStoreManage() {
		logger.info("관리자 - 점포 현황 화면 보여주기");
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
	
	@RequestMapping("/menu6/categoryLarge.do")
	public void adminCategoryLarge() {
		logger.info("관리자 - 카테고리 대분류 화면 보여주기");
	}
	
	@RequestMapping("/menu6/categoryMiddle.do")
	public void adminCategoryMiddle() {
		logger.info("관리자 - 카테고리 중분류 화면 보여주기");
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
	
	@RequestMapping("/menu6/todayFoodsRandom.do")
	public void adminTodayFoodsRandom() {
		logger.info("관리자 - 오늘 뭐 먹지 - 랜덤 추천 화면 보여주기");
	}

	@RequestMapping("/menu6/todayFoodsWeather.do")
	public void adminTodayFoodsWeather() {
		logger.info("관리자 - 오늘 뭐 먹지 - 날씨 추천 화면 보여주기");
	}
	
	@RequestMapping("/menu6/gift.do")
	public void adminGift() {
		logger.info("관리자 - 선물하기 관리 화면 보여주기");
	}
	
	@RequestMapping("/menu6/giftCategory.do")
	public void adminGiftCategory() {
		logger.info("관리자 - 선물하기 - 카테고리 화면 보여주기");
	}
	
	@RequestMapping("/menu6/giftPrice.do")
	public void adminGiftPrice() {
		logger.info("관리자 - 선물하기 - 금액 화면 보여주기");
	}
	*/
	
}
