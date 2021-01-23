package com.project.fd.owner.controller;

import java.io.IOException;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.project.fd.common.FileUploadUtil;
import com.project.fd.owner.ownerregister.model.OwnerRegisterVO;
/*
@Controller
@RequestMapping("/owner")
public class OwnerStoresController {
	private static final Logger logger
	=LoggerFactory.getLogger(OwnerStoresController.class);
	
	@Autowired
	private FileUploadUtil fileUtil;
	
	@RequestMapping("/index.do") 
	public void ownerMain() {
		logger.info("사장님 메인 화면 보여주기"); 
	}
	 
	

}
*/