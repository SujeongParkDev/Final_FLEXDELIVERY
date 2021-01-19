package com.project.fd.member.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.project.fd.common.Utility;

@Controller
@RequestMapping("/member/login")
public class MemberLoginController {

	@RequestMapping("/memberLogin.do")
	public String memberLogin_view(Model model) {
		int idx=Utility.MEMBER_LOGIN;
		model.addAttribute("idx",idx);
		return "member/login/memberLogin";
	}
}
