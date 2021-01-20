package com.project.fd.owner.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/owner")
public class OwnerReviewController {
	private static final Logger logger
	=LoggerFactory.getLogger(OwnerReviewController.class);
	
	@RequestMapping("/menu1/reviewOwner.do")
	public void reviewList_get() {
		 logger.info("점포 - 리뷰관리 보여주기");
	}
}
