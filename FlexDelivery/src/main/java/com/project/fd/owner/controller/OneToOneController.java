package com.project.fd.owner.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/owner")
public class OneToOneController {
	private static final Logger logger
	=LoggerFactory.getLogger(OneToOneController.class);
	
	@RequestMapping("/menu5/oneToOne.do")
	public void reviewList_get() {
		 logger.info("점포 - 일대일 문의 보여주기");
	}
}
