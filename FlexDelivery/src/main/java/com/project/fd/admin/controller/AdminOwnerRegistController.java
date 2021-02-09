package com.project.fd.admin.controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.project.fd.admin.ownerregister.model.AdminOwnerRegisterService;
import com.project.fd.admin.ownerregister.model.AdminOwnerRegisterVo;

@Controller
@RequestMapping("/admin")
public class AdminOwnerRegistController {
	public static final Logger logger
	=LoggerFactory.getLogger(AdminOwnerRegistController.class);
	
	@Autowired
	AdminOwnerRegisterService registerService;
	
	@RequestMapping("/menu2/registList.do")
	public String adminOwnerRegistList(Model model) {
		logger.info("사업자등록증 승인 목록 화면");
		
		List<AdminOwnerRegisterVo> list= registerService.adminOwnerRegistList();
		logger.info("사업증등록증 승인 목록  list={}", list);		
		model.addAttribute("list", list);		
	
		return "admin/menu2/registList";
	}
	
	@RequestMapping("/menu2/registDetail.do")
	public String adminOwnerRegistDetail(@RequestParam (defaultValue = "0") long no, Model model) {
		logger.info("사업자등록증 승인 세부 화면");
		
		AdminOwnerRegisterVo vo= registerService.adminOwnerRegistDetail(no);
		logger.info("사업증등록증 승인 세부  vo={}", vo);
		
		model.addAttribute("vo", vo);
	
		return "admin/menu2/registDetail";
	}
	
	@RequestMapping(value="/menu2/registApproval.do", method = RequestMethod.POST)
	public String adminOwnerRegistApproval(@ModelAttribute AdminOwnerRegisterVo registerVo) {
		logger.info("사업자등록증 승인 화면, 파라미터 vo={}",registerVo);
		
		long registerNo = registerVo.getoRegisterNo();
		int cnt= registerService.adminOwnerRegistApproval(registerNo);
		logger.info("사업증등록증 승인 결과 cnt={}", cnt);
		
		int ownerNo= registerVo.getOwnerNo();
		cnt=registerService.adminOwnerRegistDeny(ownerNo);
		logger.info("점포주 권한 변경 결과 cnt={}", cnt);

		
		return "redirect:/admin/menu2/registList.do";
	}
}
