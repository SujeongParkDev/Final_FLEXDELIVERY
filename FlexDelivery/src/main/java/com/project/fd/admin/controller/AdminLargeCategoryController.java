package com.project.fd.admin.controller;

import java.io.IOException;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.project.fd.admin.largecategory.model.LargeCategoryService;
import com.project.fd.admin.largecategory.model.LargeCategoryVO;
import com.project.fd.common.FileUploadUtil;
import com.project.fd.common.PaginationInfo;
import com.project.fd.common.SearchVO;
import com.project.fd.common.Utility;

@Controller
@RequestMapping("/admin/menu6")
public class LargeCategoryController {
	private static final Logger logger
		=LoggerFactory.getLogger(LargeCategoryController.class);
	
	@Autowired
	private LargeCategoryService largeCategoryService;
	
	@Autowired
	private FileUploadUtil fileUtil;
	
	@RequestMapping(value="/largecategory/write.do", method=RequestMethod.GET)
	public String write_get() {
		logger.info("대분류 카테고리 등록 페이지 보여주기");
		
		return "/largecategory/write";
	}
	
	@RequestMapping(value="/largecategory/write.do", method=RequestMethod.POST)
	public String write_post(@ModelAttribute LargeCategoryVO largeCategoryVo,
			HttpServletRequest request) {
		//1. 
		logger.info("대분류 카테고리 등록 처리, 파라미터  vo={}", largeCategoryVo);
		
		//파일 업로드 처리
		String originName="", fileName="";
		long fileSize=0;
		
		try {
			List<Map<String, Object>> fileList
				=fileUtil.fileUplaod(request, FileUploadUtil.PDS_TYPE);
			for(Map<String, Object> fileMap : fileList) {
				originName=(String) fileMap.get("originalFileName");
				fileName=(String) fileMap.get("fileName");
				fileSize=(Long)fileMap.get("fileSize");	
			}//for
		} catch (IllegalStateException e) {
			logger.info("파일 업로드 실패!");
			e.printStackTrace();
		} catch (IOException e) {
			logger.info("파일 업로드 실패!");
			e.printStackTrace();
		}
		
		
		return "/largecategory/write";
	}
	
	@RequestMapping(value="/largeCategory.do")
	public String list(@ModelAttribute SearchVO searchVo, Model model) {
		//1.
		logger.info("대분류 카테고리 목록 페이지, 파라미터 searchVo={}", searchVo);
		
		//2.
		//페이징 처리 관련 세팅
		//[1] PaginationInfo 생성
		PaginationInfo pagingInfo=new PaginationInfo();
		pagingInfo.setBlockSize(Utility.BLOCKSIZE);
		pagingInfo.setRecordCountPerPage(Utility.RECORD_COUNT);
		pagingInfo.setCurrentPage(searchVo.getCurrentPage());
		
		//[2] SearchVo 세팅
		searchVo.setRecordCountPerPage(Utility.RECORD_COUNT);
		searchVo.setFirstRecordIndex(pagingInfo.getFirstRecordIndex());
		
		List<LargeCategoryVO> list=largeCategoryService.selectAll(searchVo);
		logger.info("글목록 결과, list.size={}", list.size());
		
		int totalRecord=largeCategoryService.selectTotalRecord(searchVo);
		logger.info("글 개수, totalRecord={}", totalRecord);
		
		//3. 모델에 결과 저장
		model.addAttribute("list", list);
		model.addAttribute("pagingInfo", pagingInfo);
		
		//4. 뷰페이지 리턴
		return "/admin/menu6/largeCategory";
	}
	
}
