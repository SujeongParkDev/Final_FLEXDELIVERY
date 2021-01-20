package com.project.fd.member.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/member/ask")
public class MemberAskController {
	@Autowired private static final Logger logger=LoggerFactory.getLogger(MemberAskController.class);
	
	@RequestMapping("/askList.do")
	public void askList() {
		logger.info("1:1문의 내역 보여주기");
	}
}
