package com.project.fd.admin.controller;

import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.project.fd.admin.ask.model.AdminAskService;
import com.project.fd.admin.board.model.AdminBoardAllVO;
import com.project.fd.admin.board.model.AdminBoardService;
import com.project.fd.admin.hoenytip.AdminHoneytipService;
import com.project.fd.admin.hoenytip.AdminHoneytipVO;

@Controller
public class AdminIndexController {

	private static final Logger logger=LoggerFactory.getLogger(AdminIndexController.class);
	
	@Autowired
	private AdminBoardService boardService;
	@Autowired
	private AdminHoneytipService honeytipService;
	
	@Autowired
	private AdminAskService askService;
	

	@RequestMapping("/admin/index.do")
	public String adminIndex(Model model) {
		logger.info("관리자 - 메인 페이지 보여주기");
		
		List<Map<String, Object>> askList=askService.selectNewAsk();
		logger.info("답변 대기중인 1:1 문의글, askList={}", askList);
		
		model.addAttribute("askList", askList);
		
		int cnt=askService.selectNewAsk2();
		logger.info("cnt={}",cnt);
		
		model.addAttribute("cnt", cnt);
		
		List<AdminBoardAllVO> nList=boardService.selectNotice();
		logger.info("공지사항 list 출력, nList.size={}", nList.size());
		
		List<AdminBoardAllVO> eList=boardService.selectEvent();
		logger.info("이벤트 list 출력, eLlist.size={}", eList.size());
		
		List<AdminHoneytipVO> hList=honeytipService.selectAll();
		logger.info("꿀팁 list 출력, hList.size={}", hList.size());
		
		model.addAttribute("eList", eList);
		model.addAttribute("nList", nList);
		model.addAttribute("hList", hList);
	
		return "admin/index";
	}

}
