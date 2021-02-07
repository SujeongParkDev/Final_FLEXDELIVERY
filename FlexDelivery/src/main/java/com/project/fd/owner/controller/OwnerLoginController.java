package com.project.fd.owner.controller;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;

import com.project.fd.common.Utility;
import com.project.fd.owner.model.OwnerService;



@Controller
@RequestMapping("/owner")
public class OwnerLoginController {
	
	private static final Logger logger
	=LoggerFactory.getLogger(OwnerLoginController.class);

	@RequestMapping("/login/login.do")
	public void ownerLogin(Model model) {
		int idx=Utility.OWNER_LOGIN;
		logger.info("로그인화면 보여주기,idx={} ,2이면 점포",idx);
		model.addAttribute("idx",idx);
		
	}
	
	//로그아웃 처리
	@RequestMapping("/logout.do")
	public String logout(HttpSession session) {
		String ownerId=(String) session.getAttribute("ownerId");
		
		if(session.getAttribute("storeNo")!=null) {
			session.removeAttribute("storeNo");
		}
	
		logger.info("로그아웃 처리, 파라미터 userid={}, storeNO={}", ownerId);
		
		
		
		session.removeAttribute("ownerId");
		session.removeAttribute("ownerName");
		session.removeAttribute("ownerNo");
		session.removeAttribute("authorityNo");
		session.removeAttribute("result");
	
		
		/* logger.info("storeNo={}",session.getAttribute("storeNo")); */
		
		
		return "redirect:/owner/index.do";
	}
	
	
	//아이디찾기
	@RequestMapping("/login/forgotId.do")
	public String forgotId() {
		return "owner/login/forgotId";
	}
	
	//비밀번호찾기
	
	@RequestMapping("/login/forgotPwd.do")
	public String forgotPwd() {
		return "owner/login/forgotPwd";
	}
}
