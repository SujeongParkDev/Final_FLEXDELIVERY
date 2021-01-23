package com.project.fd.admin.controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.project.fd.admin.temporary.model.AdminTemporaryService;
import com.project.fd.admin.temporary.model.AdminTemporaryVO;

@RequestMapping("/admin/menu2")
@Controller
public class AdminApprovalController {
	public static final Logger logger
	= LoggerFactory.getLogger(AdminApprovalController.class);
	
	@Autowired
	AdminTemporaryService temporaryService;
	
	@RequestMapping("/approvalList.do")
	public String adminApprovalList(@RequestParam String approvalFlag, Model model) {
		//승인/변경 상태 목록 보여주기
		logger.info("점포 승인/변경 화면");
		//1
		//2
		List<AdminTemporaryVO> list= temporaryService.approvalList(approvalFlag);
 
		//3
		model.addAttribute("list", list);
		
		return "admin/menu2/approvalList";
	}
	
	@RequestMapping("/approvalEdit.do")
	public String adminApprovalEdit(Model model) {
		//승인/변경 상태 목록 보여주기
		logger.info("점포 변경 세부 화면");
		//1
		//2
		
 
		//3
		
		return "admin/menu2/approvalEdit";
	}
	
	@RequestMapping("/approvalDetail.do")
	public String adminApprovalDetail(Model model) {
		//승인/변경 상태 목록 보여주기
		logger.info("점포 등록 세부 화면");
		//1
		//2
 
		//3
		
		return "admin/menu2/approvalDetail";
	}

}
