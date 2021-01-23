package com.project.fd.owner.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;



@Controller
@RequestMapping("/owner")
public class OwnerLoginController {
	
	private static final Logger logger
	=LoggerFactory.getLogger(OwnerLoginController.class);

	@RequestMapping("/login/login.do")
	public void ownerLogin() {
		logger.info("점포- 로그인 화면");
	}
}
