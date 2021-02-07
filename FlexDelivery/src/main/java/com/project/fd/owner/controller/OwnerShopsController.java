package com.project.fd.owner.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.project.fd.common.FileUploadUtil;
import com.project.fd.owner.store.model.OwnerStoresService;

@Controller
@RequestMapping("/owner")
public class OwnerShopsController {
	private static final Logger logger 
	= LoggerFactory.getLogger(OwnerShopsController.class);
	
	@Autowired OwnerStoresService ownerStoresService;
	
	@Autowired private FileUploadUtil fileUtil;

	@RequestMapping("/menu2/basic/basic.do")
	public void ownerbasic(Model model) {
		logger.info("내 점포 - 기본정보 보여주기");
	}
	
	@RequestMapping("/menu2/basic/basicLogo.do")
	public void ownerbasicLogo() {
		logger.info("내 점포 - 기본정보 로고수정 보여주기");
	}
	
	@RequestMapping("/menu2/operation/operation.do")
	public void owneroperation() {
		logger.info("내 점포 - 운영정보 보여주기");
	}


}
