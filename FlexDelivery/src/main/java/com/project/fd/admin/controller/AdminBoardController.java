package com.project.fd.admin.controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.project.fd.admin.board.model.AdminBoardService;
import com.project.fd.admin.board.model.AdminBoardVO;
import com.project.fd.admin.coupons.model.AdminEventCouponVO;

@Controller
@RequestMapping("/admin/menu3")
public class AdminBoardController {
	
	private Logger logger=LoggerFactory.getLogger(AdminBoardController.class);
	
	@Autowired
	private AdminBoardService boardService;
	
	@RequestMapping(value="/notice.do", method = RequestMethod.GET)
	public String notice_list_get(Model model) {
		logger.info("공지사항 list_get, 리스트 화면 보여주기");
		
		List<AdminBoardVO> list=boardService.selectAll();
		logger.info("list 출력, list.size={}", list.size());
		
		model.addAttribute("list", list);
		
		return "admin/menu3/notice.do";
	}
	
	@RequestMapping(value="/event.do", method = RequestMethod.GET)
	public String event_list_get(Model model) {
		logger.info("이벤트 list_get, 리스트 화면 보여주기");
		
		List<AdminBoardVO> list=boardService.selectAll();
		logger.info("list 출력, list.size={}", list.size());
		
		model.addAttribute("list", list);
		
		return "admin/menu3/event.do";
	}
	
	@RequestMapping(value="/notice/write.do", method = RequestMethod.GET)
	public String notice_write_get(Model model) {
		logger.info("공지사항 write_get, 글쓰기 보여주기");
		
		
		return "admin/menu3/notice/write";
	}
	
	@RequestMapping(value="/event/write.do", method = RequestMethod.GET)
	public String event_write_get(Model model) {
		logger.info("이벤트 write_get, 글쓰기 보여주기");
		
		
		return "admin/menu3/event/write";
	}
	

}
