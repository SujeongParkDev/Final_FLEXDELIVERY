package com.project.fd.admin.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/admin/menu2")
public class AdminStoreAdController {
	public static final Logger logger
	= LoggerFactory.getLogger(AdminStoreAdController.class);
	
	@RequestMapping("/storeAdList.do")
	public void adminStoreAdList(Model model) {
		
		logger.info("광고 승인/변경 리스트 화면");
		//1
		//2
 
		//3
	
	}
	
	@RequestMapping("/storeAdDetail.do")
	public void adminStroreAdDetail(Model model) {
		
		logger.info("광고 승인/변경 세부 화면");
		//1
		//2
 
		//3

	}
	
	@RequestMapping("/storeMg.do")
	public void adminStroreMg(Model model) {
		
		logger.info("광고 승인/변경 세부 화면");
		//1
		//2
 
		//3

	}
}
