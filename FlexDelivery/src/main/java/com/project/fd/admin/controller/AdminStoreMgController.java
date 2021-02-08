package com.project.fd.admin.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/admin")
public class AdminStoreMgController {
	public static final Logger logger
	= LoggerFactory.getLogger(AdminStoreAdController.class);
	
	@RequestMapping("/menu2/storeMg.do")
	public void adminStroreMg(Model model) {
		
		logger.info("광고 승인/변경 세부 화면");
		//1
		//2
 
		//3

	}
}
