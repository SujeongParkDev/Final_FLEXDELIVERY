package com.project.fd.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.project.fd.common.Utility;

@Controller
public class LoginController {
	
	@Autowired
	private static final Logger logger=LoggerFactory.getLogger(LoginController.class);
	
	/*
	@RequestMapping("/login.do")
	public String login(@RequestParam int idx) {
		if(idx==Utility.MEMBER_LOGIN) {
			return "";
		}
	}
	*/
}
