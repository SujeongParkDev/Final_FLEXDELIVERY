package com.project.fd.member.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/member/faq")
public class MemberFaqController {
	@Autowired private static final Logger logger=LoggerFactory.getLogger(MemberFaqController.class);
	
	@RequestMapping("/faqList.do")
	public void memberFaqList() {
		logger.info("FAQ보여주기");
	}
	
	
}
