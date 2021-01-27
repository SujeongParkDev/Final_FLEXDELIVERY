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
	
	@RequestMapping("/editList.do")
	public String adminApprovalList(Model model) {
		//승인/변경 상태 목록 보여주기
		logger.info("점포 승인/변경 화면");
		//1
		//2
		List<AdminTemporaryVO> list= temporaryService.editList();
		logger.info("승인 list, list.size={}",list.size());
		//3
		model.addAttribute("list", list);
		
		return "admin/menu2/editList";
	}
	
	
	@RequestMapping("/editDetail.do")
	public String adminApprovalDetail(@RequestParam(defaultValue = "0")  int no ,Model model) {
		//승인/변경 상태 목록 보여주기
		logger.info("점포 등록 세부 화면, 파라미터 no={}", no);
		//1
		//2
		AdminTemporaryVO vo= temporaryService.editDetail(no);
		logger.info("점포 등록 세부 화면 결과 vo={} ",vo);
		//3
		model.addAttribute("vo", vo);
		
		return "admin/menu2/editDetail";
	}
	
	@RequestMapping("/editAgree.do")
	public String adminEditAgree(@RequestParam(defaultValue = "0") int no) {
		logger.info("점포 등록 승인 화면, 파라미터 no={}", no);
		
		int cnt= temporaryService.editAgree(no);
		logger.info("점포 등록 승인 처리, cnt={}", cnt);
		
		return "redirect:/admin/menu2/editList.do";
		
	}
	
	@RequestMapping("/approvalDeny.do")
	public String adminEditDeny(@RequestParam(defaultValue = "0") int no) {
		logger.info("점포 등록 반려, 파라미터 no={}", no);
		
		int cnt= temporaryService.editDeny(no);
		logger.info("점포 등록 승인 처리, cnt={}", cnt);
		
		return "redirect:/admin/menu2/editList.do";
	}

}
