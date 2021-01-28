package com.project.fd.admin.controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.project.fd.admin.hoenytip.AdminHoneytipService;
import com.project.fd.admin.hoenytip.AdminHoneytipVO;

@Controller
@RequestMapping("/admin/menu3")
public class AdminHoneytipController {
	
	private Logger logger=LoggerFactory.getLogger(AdminBoardController.class);
	
	@Autowired
	private AdminHoneytipService honeytipService;
	
	@RequestMapping(value="/honeytip.do", method = RequestMethod.GET)
	public String list_get(Model model) {
		logger.info("사장님꿀팁 list_get, 리스트 화면 보여주기");
		
		List<AdminHoneytipVO> list=honeytipService.selectAll();
		logger.info("list 출력, list.size={}", list.size());
		
		model.addAttribute("list", list);
		
		return "admin/menu3/honeytip.do";
	}
	
	

}
