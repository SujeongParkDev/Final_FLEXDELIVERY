package com.project.fd.admin.controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.project.fd.admin.largecategory.model.AdminLargeCategoryService;
import com.project.fd.admin.largecategory.model.AdminLargeCategoryVO;
import com.project.fd.admin.mediumcategory.model.AdminMediumCategoryService;
import com.project.fd.admin.mediumcategory.model.AdminMediumCategoryViewVO;
import com.project.fd.admin.weather.model.AdminWeatherService;
import com.project.fd.admin.weather.model.AdminWeatherVO;

@Controller
@RequestMapping("/admin/menu7")
public class AdminChartController {
	private static final Logger logger=LoggerFactory.getLogger(AdminChartController.class);
	
	@Autowired
	private AdminMediumCategoryService mediumCategoryService;
	@Autowired
	private AdminLargeCategoryService largeCategoryService;
	@Autowired
	private AdminWeatherService weatherService;
	
	@RequestMapping("/chartDefault.do")
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
		
		List<AdminMediumCategoryViewVO> MClist=largeCategoryService.selectAll2();
		logger.info("글 목록 결과, MClist.size={}", MClist.size());
		
		model.addAttribute("list", list);
		model.addAttribute("lCList", lCList);
		model.addAttribute("wList", wList);
		
		model.addAttribute("MClist", MClist);
		
		return "admin/menu7/member";

	}
	
}
