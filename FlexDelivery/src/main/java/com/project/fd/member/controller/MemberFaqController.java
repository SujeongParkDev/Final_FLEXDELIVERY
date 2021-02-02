package com.project.fd.member.controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.project.fd.member.faq.model.MemberFaqVo;

@Controller
@RequestMapping("/member/faq")
public class MemberFaqController {
	@Autowired private static final Logger logger=LoggerFactory.getLogger(MemberFaqController.class);
	
	@Autowired 
	
	@RequestMapping("/faqList.do")
	public void memberFaqList() {
		logger.info("FAQ보여주기");
	}
	
	@RequestMapping("/faqQ.do")
	public String faaQ(@RequestParam String faqC, Model model) {
		logger.info("faq 카테고리 보여주기, 파라미터 faqC={}", faqC);
		
		/* List<MemberFaqVo> list= */
		
		return "faqC";
	}
}
