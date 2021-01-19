package com.project.fd.member.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.project.fd.common.Utility;

@Controller
@RequestMapping("/member/login")
public class MemberLoginController {
	@Autowired
	private static final Logger logger=LoggerFactory.getLogger(MemberLoginController.class);
	
	@RequestMapping("/memberLogin.do")
	public String memberLogin_view(Model model) {
		int idx=Utility.MEMBER_LOGIN;
		logger.info("로그인화면 보여주기,idx={} ,1이면 회원",idx);
		model.addAttribute("idx",idx);
		return "member/login/memberLogin";
	}
	
	@RequestMapping(value="/forgotPwd.do",method = RequestMethod.GET)
	public void forgotPwd_view() {
		logger.info("비밀번호 찾기 화면 보여주기");
	}
	
	@RequestMapping(value="/forgotId.do",method = RequestMethod.GET)
	public void forgotId_view() {
		logger.info("아이디 찾기 화면 보여주기");
	}
}
