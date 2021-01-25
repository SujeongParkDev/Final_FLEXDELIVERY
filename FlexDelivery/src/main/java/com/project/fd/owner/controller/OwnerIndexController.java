package com.project.fd.owner.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.project.fd.owner.model.OwnerService;


@Controller
@RequestMapping("/owner")
public class OwnerIndexController {
	
	private static final Logger logger
	=LoggerFactory.getLogger(OwnerIndexController.class);
	
	@Autowired
	OwnerService ownerService;
	
	
	//관리자, 점포 공통 뷰 보여주기(점포)
		@RequestMapping("/index.do")
		public void index(Model model){
			
			model.addAttribute("NO_LICENSE", OwnerService.NO_LICENSE);
			model.addAttribute("NO_STORE", OwnerService.NO_STORE);
			model.addAttribute("HAVE_ALL", OwnerService.HAVE_ALL);
			model.addAttribute("LICENSE_STAY", OwnerService.LICENSE_STAY);
			model.addAttribute("STORE_STAY", OwnerService.STORE_STAY);
			
			
			logger.info("점포 공통 뷰 보여주기");
		
		}
		
		
		
		//내점포 메인 뷰 보여주기(점포)
		@RequestMapping("/menu2/myStoreIndex.do")
		public void myStoreIndex(){
			logger.info("내점포 메인 뷰 보여주기");
		
		}
}
