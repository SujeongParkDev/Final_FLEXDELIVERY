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

import com.project.fd.admin.largecategory.model.AdminLargeCategoryService;
import com.project.fd.admin.largecategory.model.AdminLargeCategoryVO;
import com.project.fd.admin.mediumcategory.model.AdminMediumCategoryService;
import com.project.fd.admin.mediumcategory.model.AdminMediumCategoryVO;
import com.project.fd.admin.mediumcategory.model.AdminMediumCategoryViewVO;
import com.project.fd.admin.weather.model.AdminWeatherService;
import com.project.fd.admin.weather.model.AdminWeatherVO;


@Controller
@RequestMapping("/admin/menu6")
public class AdminMediumCategoryController {
	private static final Logger logger
		=LoggerFactory.getLogger(AdminMediumCategoryController.class);
	
	@Autowired
	private AdminMediumCategoryService mediumCategoryService;
	@Autowired
	private AdminLargeCategoryService largeCategoryService;
	@Autowired
	private AdminWeatherService weatherService;
	
	@RequestMapping(value="/mediumCategory.do", method=RequestMethod.GET)
	public String list_get(Model model) {
		logger.info("list_get 중분류 카테고리 페이지");
		
		//LargeCategory select
		List<AdminLargeCategoryVO> lCList=  largeCategoryService.selectAll();
		logger.info("select 대분류 출력 결과, lCList.size()={}", lCList.size());
		
		//WeatherCategory select
		List<AdminWeatherVO> wList=weatherService.selectAll();
		logger.info("select 날씨 출력 결과, wList.size()={}", wList.size());
		
		//AllView
		List<AdminMediumCategoryViewVO> list=mediumCategoryService.selectAll2();
		logger.info("글 목록 결과, list.size={}", list.size());
		
		model.addAttribute("list", list);
		model.addAttribute("lCList", lCList);
		model.addAttribute("wList", wList);
		
		return "/admin/menu6/mediumCategory";
	}
	
	@RequestMapping(value="/mediumCategory.do", method=RequestMethod.POST)
	public String list_post(@ModelAttribute AdminMediumCategoryVO mediumCategoryVo,
			HttpServletRequest request) {
		logger.info("list_post 중분류 카테고리 페이지 출력, 파라미터 vo={}", mediumCategoryVo);
		

		int cnt=mediumCategoryService.insertMediumcategory(mediumCategoryVo);
		logger.info("중분류 등록 처리 결과, cnt={}", cnt);
		//int cnt=mediumCategoryService.selectAll2();
		return "redirect:/admin/menu6/mediumCategory.do";
	}
	
	/*
	@RequestMapping(value="/mediumCategory.do", method=RequestMethod.POST)
	public String list_post(@ModelAttribute AdminMediumCategoryViewVO viewVo,
			HttpServletRequest request) {
		logger.info("list_post 중분류 카테고리 페이지 출력, 파라미터 vo={}", viewVo);
		
		
		int cnt=mediumCategoryService.insertMediumcategory(mediumCategoryVo);
		logger.info("중분류 등록 처리 결과, cnt={}", cnt);
		//int cnt=mediumCategoryService.selectAll2();
		return "redirect:/admin/menu6/mediumCategory.do";
	}
	*/
	
	@RequestMapping(value="/mediumCategory/write.do", method=RequestMethod.GET)
	public String write_Get(){
		logger.info("write_get 중분류 페이지 출력");
		
		return "/admin/menu6/mediumCategory/write";
	}
	
	@RequestMapping(value="/mediumCategory/write.do", method=RequestMethod.POST)
	public String write_post(@ModelAttribute AdminMediumCategoryVO mediumCategoryVo,
			HttpServletRequest request) {
		logger.info("write_post 중분류 카테고리 등록 처리, 파라미터 vo={}", mediumCategoryVo);
		
		int cnt=mediumCategoryService.insertMediumcategory(mediumCategoryVo);
		logger.info("중분류 등록 처리 결과, cnt={}", cnt);
		
		return "redirect:/admin/menu6/mediumCategory.do";
	}
		
}
