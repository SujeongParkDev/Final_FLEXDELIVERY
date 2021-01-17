package com.project.fd.member.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MemberController {
	private static final Logger logger
		=LoggerFactory.getLogger(MemberController.class);

	
	@RequestMapping("/login/memsignup.do")
	public String register(){
		logger.info("회원가입 화면 보여주기");
		
		return "login/memsignup";
	}
		
}
