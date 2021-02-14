package com.project.fd.owner.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.apache.commons.collections4.map.HashedMap;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.project.fd.owner.chart.model.OwnerChartService;
import com.project.fd.owner.store.model.OwnerStoresService;

@Controller
@RequestMapping("/owner/menu2/charts")
public class OwnerChartController {
	
	@Autowired
	private static final  Logger logger = 
		LoggerFactory.getLogger(OwnerChartController.class);
	
	@Autowired
	private OwnerChartService ownerChartService;
	
	@Autowired
	private OwnerStoresService ownerStoresService;
	
	@ResponseBody
	@RequestMapping("/ordersCount.do")
	public  Map<String, Object> ordersCount(HttpSession session){
		int ownerNo = (Integer) session.getAttribute("ownerNo");
		logger.info("count 구하기 ajax ownerNo={}",ownerNo);
		
		
		int storeNo = ownerStoresService.selectStoreNoByNo(ownerNo);
		logger.info("storeNo 구하기 결과 storeNo={}", storeNo);
		
		List<Map<String, Object>> lList = ownerChartService.selectLastWeekOrderCount(storeNo);
		logger.info("지난 주 주문수  lList={} , lList.size={}", lList, lList.size());
		
		List<Map<String, Object>> tList = ownerChartService.selectThisWeekOrderCount(storeNo);
		logger.info("이번주 주문수  tList={} , tList.size={}", tList, tList.size());
		
		Map<String, Object> map = new HashedMap<String, Object>();
		
		map.put("lList",lList);
		map.put("tList",tList);
		
		logger.info("map={}" , map);
		return map;
	}
	
	
	@ResponseBody
	@RequestMapping("/ordersBestMenu.do")
	public  List<Map<String, Object>> ordersBestMenu(HttpSession session){
		int ownerNo = (Integer) session.getAttribute("ownerNo");
		logger.info("best 메뉴 구하기 ajax ownerNo={}",ownerNo);
		
		
		int storeNo = ownerStoresService.selectStoreNoByNo(ownerNo);
		logger.info("storeNo 구하기 결과 storeNo={}", storeNo);
		
		List<Map<String, Object>> mList = ownerChartService.selectBestMenu(storeNo);
		logger.info("베스트 메뉴 구하기  mList={} , lList.size={}", mList, mList.size());
		 
		return mList;
	}
	
	@ResponseBody
	@RequestMapping("/ordersPrice.do")
	public  Map<String, Object> ordersPrice(HttpSession session){
		int ownerNo = (Integer) session.getAttribute("ownerNo");
		logger.info("price 구하기 ajax ownerNo={}",ownerNo);
		
		
		int storeNo = ownerStoresService.selectStoreNoByNo(ownerNo);
		logger.info("storeNo 구하기 결과 storeNo={}", storeNo);
		
		List<Map<String, Object>> lList = ownerChartService.selectLastWeekOrderPrice(storeNo);
		logger.info("지난 주 주문 가격  lList={} , lList.size={}", lList, lList.size());
		
		List<Map<String, Object>> tList = ownerChartService.selectThisWeekOrderPrice(storeNo);
		logger.info("이번주 주문 가격  tList={} , tList.size={}", tList, tList.size());
		
		Map<String, Object> map = new HashedMap<String, Object>();
		
		map.put("lList",lList);
		map.put("tList",tList);
		
		logger.info("map={}" , map);
		return map;
	}
	
}
