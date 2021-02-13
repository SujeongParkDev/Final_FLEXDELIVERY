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
		
		return map;
	}
}
