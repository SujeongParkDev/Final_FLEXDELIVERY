package com.project.fd;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/owner")
public class testController {
	private static final Logger logger
	=LoggerFactory.getLogger(testController.class);

	
	@RequestMapping("/index.do")
	public void ownerMain() {
		logger.info("사장님 메인 화면 보여주기");
	}
	
	
}
