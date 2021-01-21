package com.project.fd.owner.controller;

import java.io.IOException;
import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.project.fd.common.FileUploadUtil;
import com.project.fd.owner.ownerregister.model.OwnerRegisterVO;

@Controller
@RequestMapping("/owner")
public class OwnerStoresController {
	private static final Logger logger
	=LoggerFactory.getLogger(OwnerStoresController.class);
	
	@RequestMapping("/index.do") 
	public void ownerMain() {
		logger.info("사장님 메인 화면 보여주기"); 
	}
	
	 @RequestMapping("/menu1/launchNext.do")
	 public void ownerlaunchNext() {
		 logger.info("점포 - 입점 약관 보여주기");
	 }
	 
	 @RequestMapping("/menu1/launchRegister.do")
	 public void register_get() { //requestparam=>사업자등록했는지
		 logger.info("점포 - 입점 시작하기 보여주기");
	 }
	 
	 @RequestMapping("/menu1/businessLicense.do")
	 public void License_get() {
		 logger.info("점포 - 라이센스 등록 화면");
	 }
	 
	 @RequestMapping("/menu1/launch.do")
	 public void ownerlaunch() {
		 logger.info("점포 - 입점 메인 화면 보여주기");
	}
	 
	 @RequestMapping(value="/menu1/businessLicense.do",method=RequestMethod.POST)
	 public String ownerLicenseOk(@ModelAttribute OwnerRegisterVO vo, 
			
			 Model model) {
		 logger.info("사업자등록증 업로드 페이지 파라미터 vo={}",vo);
		 
	
		 
		 return "redirect:/menu1/businessLicense.do";
	 }
	 
}
