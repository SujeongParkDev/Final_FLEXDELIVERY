package com.project.fd;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/admin")
public class adminTestController {
	private static final Logger logger
	=LoggerFactory.getLogger(adminTestController.class);

	@RequestMapping("/adminLogin/login.do")
	public void adminLogin() {
		logger.info("관리자 로그인 화면");
	}
	
	@RequestMapping("/index.do")
	public void adminMain() {
		logger.info("관리자 메인 화면 보여주기");
	}
	@RequestMapping("/chart/index.do")
	public void adminChartMain() {
		logger.info("관리자 - 통계용 화면 보여주기");
	}
	
	@RequestMapping("/menu3/honeyTip.do")
	public void adminHoneyTip() {
		logger.info("관리자 - 사장님꿀팁 보여주기");
	}
	
	@RequestMapping("/menu3/notice.do")
	public void adminNotice() {
		logger.info("관리자 - 공지사항 보여주기");
	}
}
