package com.project.fd.admin.controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.project.fd.admin.temporary.model.AdminTemporaryVO;

@RequestMapping("/admin/menu2")
@Controller
public class AdminApprovalController {
	public static final Logger logger
	= LoggerFactory.getLogger(AdminApprovalController.class);
	
	@RequestMapping("/approval.do")
	public String adminApprovalList(Model model) {
		//승인/변경 상태 목록 보여주기
		//1
		//2
 
		//3
		
		return "admin/menu2/approval";
	}

}
