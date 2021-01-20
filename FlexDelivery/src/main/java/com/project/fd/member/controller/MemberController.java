package com.project.fd.member.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.project.fd.common.Utility;

@Controller
@RequestMapping("/member")
public class MemberController {
	private static final Logger logger
		=LoggerFactory.getLogger(MemberController.class);

	
	@RequestMapping("/register/register.do")
	public String register(){
		logger.info("회원가입 화면 보여주기");
		
		return "member/register/register";
	}
	
	@RequestMapping("/register2.do")
	public String register2(){
		logger.info("회원가입2 화면 보여주기");
		
		return "member/register2";
	}
	
	@RequestMapping("/store/storeDetail.do")
	public String store() {
		logger.info("점포 화면 보여주기");
		
		return "member/store/storeDetail";
	}
	
	@RequestMapping("/member.do")
	public String membermainjw() {
		logger.info("회원 메인 보여주기");
		
		return "member/member";
	}
	
	@RequestMapping("/index.do")
	public String memberIndex() {
		logger.info("회원 메인화면 보여주기");
		
		return "member/index";
	}
	
}
