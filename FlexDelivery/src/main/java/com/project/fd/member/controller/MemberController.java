package com.project.fd.member.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/member/register")
public class MemberController {
	private static final Logger logger
		=LoggerFactory.getLogger(MemberController.class);

	
	@RequestMapping("/register.do")
	public String register(){
		logger.info("회원가입 화면 보여주기");
		
		return "member/register/register";
	}
	
	@RequestMapping("/register2.do")
	public String register2(){
		logger.info("회원가입 화면 보여주기");
		
		return "member/register";
	}

}
