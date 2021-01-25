package com.project.fd.owner.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.project.fd.owner.model.OwnerService;



@Controller
@RequestMapping("/owner/menu3/honeyTip")
public class OwnerHoneyTipController {


	private static final Logger logger
	=LoggerFactory.getLogger(OwnerHoneyTipController.class);
	
	@Autowired
	OwnerService ownerService;
	

	//관리자, 점포 공통 뷰 보여주기(점포)
	@RequestMapping("/honeyTip.do")
	public void event(){
		logger.info("이벤트 보여주기");
	
	}
}
