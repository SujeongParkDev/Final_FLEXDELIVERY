package com.project.fd.member.controller;

import javax.mail.MessagingException;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.project.fd.member.model.MemberEmailSender;
/*
@Controller
@RequestMapping("member/SendvalidateKey")
public class MemberEmailController {
	@Autowired private MemberEmailSender mailSender;
	private static final Logger logger=LoggerFactory.getLogger(MemberEmailController.class);
	
	@RequestMapping("/send.do")
	public String send() {
		logger.info("email 발송");
	
		String subject="문의에 대한 답변입니다. 안녕하세요!";
		String content="<h1>FLEX-DELIVERY<h1><p>인증번호 :";
		String receiver="dgd2763@naver.com";	//받는사람 이메일주소
		String sender="admin@herbmall.com";		//보내는사람 이메일주소
		
		try {
			mailSender.sendEmail(subject, content, receiver, sender);
			logger.info("이메일 발송 성공!");
		} catch (MessagingException e) {
			logger.info("이메일 발송 실패!");
			e.printStackTrace();
		}
		
		return "redirect:/index.do";
	}
	
}
*/