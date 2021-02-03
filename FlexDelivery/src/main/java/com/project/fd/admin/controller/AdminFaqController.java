package com.project.fd.admin.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.project.fd.admin.faq.model.AdminFaqAllViewVO;
import com.project.fd.admin.faq.model.AdminFaqCategoryService;
import com.project.fd.admin.faq.model.AdminFaqCategoryVO;
import com.project.fd.admin.faq.model.AdminFaqService;
import com.project.fd.admin.faq.model.AdminFaqVO;

@Controller
@RequestMapping("/admin/menu5")
public class AdminFaqController {
	
	@Autowired
	private AdminFaqService faqService;
	
	@Autowired
	private AdminFaqCategoryService faqCategoryService;
	
	
	private Logger logger=LoggerFactory.getLogger(AdminFaqController.class);
	
	@RequestMapping(value="/faq.do", method = RequestMethod.GET)
	public String list_get(Model model) {
		logger.info("자주 하는 질문 list_get, 리스트 화면 보여주기");
		
		List<AdminFaqAllViewVO> list=faqService.selectAll2();
		logger.info("list 출력, list.size={}", list.size());
		
		List<AdminFaqCategoryVO> ctList=faqCategoryService.selectCategoryAll();
		logger.info("카테고리 list 출력, ctList.size={}", ctList.size());
		
		model.addAttribute("list", list);
		model.addAttribute("ctList", ctList);
		
		return "admin/menu5/faq";
	}
	
	@RequestMapping(value="/faq/category/list.do", method = RequestMethod.GET)
	@ResponseBody
	public List<AdminFaqCategoryVO> category_list_get(Model model) {
		logger.info("자주 하는 질문: 카테고리 list_get, 리스트 화면 보여주기");
		
		List<AdminFaqCategoryVO> cList=faqCategoryService.selectCategoryAll();
		logger.info("카테고리 list 출력, cList.size={}", cList.size());
		
		model.addAttribute("cList", cList);
		
		return cList;
	}
	
	@RequestMapping(value="/faq/category/write.do", method=RequestMethod.POST)
	public String category_write_post(@ModelAttribute AdminFaqCategoryVO faqCategoryVo,
			HttpServletRequest request) {
		logger.info("FAQ 카테고리 등록 처리");
		
		int cnt=faqCategoryService.insertFaqCategory(faqCategoryVo);
		
		if (cnt>0) {
			logger.info("FAQ 카테고리 등록 완료, cnt={}", cnt);
		}
		
		return "redirect:/admin/menu5/faq.do";
	}
	
	@RequestMapping(value="/faq/write.do", method = RequestMethod.POST)
	public String write_post(@ModelAttribute AdminFaqVO faqVo, HttpServletRequest request) {
		logger.info("FAQ 등록 처리");
		
		int cnt=faqService.insertFaq(faqVo);
		
		if (cnt>0) {
			logger.info("FAQ 등록 완료, cnt={}", cnt);
		}
		
		return "redirect:/admin/menu5/faq.do";
	}
}
