package com.project.fd.owner.controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.project.fd.admin.faq.model.AdminFaqCategoryService;
import com.project.fd.admin.faq.model.AdminFaqCategoryVO;
import com.project.fd.common.PaginationInfo;
import com.project.fd.common.Utility;
import com.project.fd.owner.faq.model.OwnerFaqSearchVO;
import com.project.fd.owner.faq.model.OwnerFaqVO;
import com.project.fd.owner.faq.model.OwnerfaqService;

@Controller
@RequestMapping("/owner")
public class OwnerFAQcontroller {

	private static final Logger logger
	=LoggerFactory.getLogger(OwnerOneToOneController.class);
	
	@Autowired AdminFaqCategoryService categoryService;
	@Autowired OwnerfaqService faqService;
	
	//faq 뷰 보여주기 (점포)
	@RequestMapping("/menu5/faq.do")
	public String faq(@ModelAttribute OwnerFaqSearchVO searchVo,
			
			Model model){
		logger.info("자주묻는 질문  글 목록, 파라미터 BoardSearchVO={}", searchVo);
		
		PaginationInfo pagingInfo = new PaginationInfo();
		pagingInfo.setBlockSize(Utility.BLOCKSIZE);
		pagingInfo.setRecordCountPerPage(Utility.RECORD_COUNT);
		pagingInfo.setCurrentPage(searchVo.getCurrentPage());

		searchVo.setRecordCountPerPage(Utility.RECORD_COUNT); 
		searchVo.setFirstRecordIndex(pagingInfo.getFirstRecordIndex());
		logger.info("자주묻는 질문  searchVo, searchVo={}",searchVo);
		//List<> list=ownerBoardService.selectAll(searchVo);
		List<OwnerFaqVO> list=faqService.selectAll(searchVo);
		logger.info("자주 묻는 질문  조회 결과, list.size={}", list.size());

		int totalRecord=faqService.getTotalRecord(searchVo);
		logger.info("글 개수, totalRecord={}", totalRecord);		
		pagingInfo.setTotalRecord(totalRecord);
		
		List<AdminFaqCategoryVO> cgList = categoryService.selectCategoryAll();
		//List<AdminFaqAllViewVO> list = categoryService.selectAll2();
		
		//List<AdminFaqCategoryVO> cgList = faqService.selectCategoryAll();
		model.addAttribute("cgList",cgList);
		model.addAttribute("list",list);
		model.addAttribute("pagingInfo",pagingInfo);
	
		return "owner/menu5/faq";
	}
	
	
	
}
