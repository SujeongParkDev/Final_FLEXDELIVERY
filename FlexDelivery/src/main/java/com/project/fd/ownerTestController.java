package com.project.fd;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/owner")
public class ownerTestController {
	private static final Logger logger
	=LoggerFactory.getLogger(ownerTestController.class);

	
	 @RequestMapping("/index.do") 
	 public void ownerMain() {
		 logger.info("사장님 메인 화면 보여주기"); 
	 }
	 
	 @RequestMapping("/menu1/launch.do")
	 public void ownerlaunch() {
		 logger.info("점포 - 입점 메인 화면 보여주기");
	}
	 
	 @RequestMapping("/menu2/myStore.do")
	 public void ownermyStore() {
		 logger.info("점포 - 내 가게 메인 화면 보여주기");
	}
	 
	
}
