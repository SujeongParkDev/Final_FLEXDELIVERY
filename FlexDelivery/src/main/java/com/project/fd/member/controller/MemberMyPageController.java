package com.project.fd.member.controller;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.project.fd.member.model.MemberService;
import com.project.fd.member.model.MemberVO;

@Controller
@RequestMapping("/member/mypage")
public class MemberMyPageController {
	
	@Autowired
	private static final Logger logger=LoggerFactory.getLogger(MemberMyPageController.class);
	
	@Autowired MemberService memServ;
	
	@RequestMapping("/main.do")
	public void mypage(Model model,HttpSession session){
		String memberId=(String)session.getAttribute("memberId");
		logger.info("1:1문의 내역 보여주기,세션에 저장된 memberId={}",memberId);
		MemberVO vo=memServ.selectMember(memberId);
		model.addAttribute("vo",vo);
	}
}
