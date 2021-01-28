package com.project.fd.admin.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/admin/menu1")
public class AdminMemberController {
	public static final Logger logger
	= LoggerFactory.getLogger(AdminStoresApprovalController.class);
	
	@RequestMapping("/memberGrade.do")
	public void adminMemberGrade(Model model) {
		//승인/변경 상태 목록 보여주기
		logger.info("회원 등급 조회/변경 화면");
		//1
		//2
 
		//3
		
	}
	
	@RequestMapping("/memberMg.do")
	public void adminMemberMg(Model model) {
		//승인/변경 상태 목록 보여주기
		logger.info("회원 조회 화면");
		//1
		//2
 
		//3
		
	}
	
	@RequestMapping("/reviewMg.do")
	public void adminReviewMg(Model model) {
		//승인/변경 상태 목록 보여주기
		logger.info("회원 등급 조회/변경 화면");
		//1
		//2
 
		//3
		
	}
}
