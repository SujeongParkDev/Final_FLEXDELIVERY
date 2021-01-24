package com.project.fd.admin.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/admin/menu6")
public class AdminGiftProductController {
	private Logger logger=LoggerFactory.getLogger(AdminGiftProductController.class);
	
	@RequestMapping(value="/giftProduct.do", method = RequestMethod.GET)
	public String list_get() {
		logger.info("list_get 목록 화면 출력");
		
		return "/admin/menu6/giftProduct";
	}
}
