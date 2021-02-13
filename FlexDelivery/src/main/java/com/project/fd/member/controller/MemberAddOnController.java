package com.project.fd.member.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/member/addOn")
public class MemberAddOnController {
	
	private static final Logger logger=LoggerFactory.getLogger(MemberAddOnController.class);
	
	@RequestMapping("/addOn.do")
	public String addOnView() {
		logger.info("부가기능 화면");
		return "member/addOn/addOn";
	}
	
}
