package com.project.fd.member.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.mail.Session;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.project.fd.admin.controller.AdminStoreAdController;
import com.project.fd.admin.largecategory.model.AdminLargeCategoryService;
import com.project.fd.admin.largecategory.model.AdminLargeCategoryVO;
import com.project.fd.member.stores.model.MemberStoresService;
import com.project.fd.member.stores.model.MemberStoresVO;

@Controller
@RequestMapping("/member/store")
public class MemberStoreController {
	private static final Logger logger
	=LoggerFactory.getLogger(MemberController.class);

	@Autowired private MemberStoresService memStoresServ;
	
	@RequestMapping("/storeList.do")
	public void storeList(@RequestParam int lCategoryNo) {
		logger.info("점포 리스트 보여주기, 대분류카테고리번호={}",lCategoryNo);
	}
	
	@RequestMapping("/flexAdList.do")
	public void flexAdList(@RequestParam int lCategoryNo,HttpSession session,Model model) {
		logger.info("Flex광고 import, 대분류카테고리번호={},회원 지역번호={}",lCategoryNo,(Integer)session.getAttribute("locationNo"));
		int locationNo=(Integer)session.getAttribute("locationNo");
		Map<String, Object> map=new HashMap<String, Object>();
		map.put("locationNo",locationNo);
		map.put("lCategoryNo",lCategoryNo);
		List<MemberStoresVO> list=memStoresServ.selectFlexAdStores(map);
		logger.info("리스트 출력결과 list.size={}",list.size());
		model.addAttribute("list",list);
	}
	
	@RequestMapping("/openAdList.do")
	public void openAdList(@RequestParam int lCategoryNo,HttpSession session,Model model) {
		logger.info("오픈리스트광고 import, 대분류카테고리번호={},회원 지역번호={}",lCategoryNo,(Integer)session.getAttribute("locationNo"));
		int locationNo=(Integer)session.getAttribute("locationNo");
		Map<String, Object> map=new HashMap<String, Object>();
		map.put("locationNo",locationNo);
		map.put("lCategoryNo",lCategoryNo);
		List<MemberStoresVO> list=memStoresServ.selectOpenAdStores(map);
		logger.info("리스트 출력결과 list.size={}",list.size());
		model.addAttribute("list",list);
	}
	@RequestMapping("/categorySlider.do")
	public void categorySlider(Model model) {
		logger.info("카테고리 슬라이드 출력");
		List<AdminLargeCategoryVO> list=memStoresServ.categorySlider();
		model.addAttribute("list",list);
	}
	
	@RequestMapping(value="/storeAll.do",method = RequestMethod.GET)
	public void storeAll_get(HttpSession session,HttpServletRequest req,Model model) {
		logger.info("메뉴전체 출력");
		int locationNo=(Integer)session.getAttribute("locationNo");
		int startIndex=Integer.parseInt(req.getParameter("startIndex"));
		int lastIndex=Integer.parseInt(req.getParameter("lastIndex"));
		int lCategoryNo=Integer.parseInt(req.getParameter("lCategoryNo"));
		
		Map<String, Object> map=new HashMap<String, Object>();
		map.put("locationNo",locationNo);
		map.put("lCategoryNo",lCategoryNo);
		map.put("startIndex", startIndex);
		map.put("lastIndex", lastIndex);
		logger.info("locationNo={},lCategoryNo={}",locationNo,lCategoryNo);
		logger.info("startIndex={},lastIndex={}",startIndex,lastIndex);
		
		List<MemberStoresVO> list=memStoresServ.selectAllStores(map);
		int totalRecords=memStoresServ.selectAllStoresCount(map);
		map.put("totalRecords",totalRecords);
		model.addAttribute("list",list);
		model.addAttribute("map",map);
	}
	
	@ResponseBody
	@RequestMapping(value="/storeAll.do",method = RequestMethod.POST)
	public Map<String, Object> storeAll_post(HttpSession session,HttpServletRequest req) {
		logger.info("ajax반응");
		int locationNo=(Integer)session.getAttribute("locationNo");
		int startIndex=Integer.parseInt(req.getParameter("startIndex"));
		int lastIndex=Integer.parseInt(req.getParameter("lastIndex"));
		int lCategoryNo=Integer.parseInt(req.getParameter("lCategoryNo"));
		Map<String, Object> map=new HashMap<String, Object>();
		map.put("locationNo",locationNo);
		map.put("lCategoryNo",lCategoryNo);
		map.put("startIndex", startIndex);
		map.put("lastIndex", lastIndex);
		logger.info("locationNo={},lCategoryNo={}",locationNo,lCategoryNo);
		logger.info("startIndex={},lastIndex={}",startIndex,lastIndex);
		List<MemberStoresVO> list=memStoresServ.selectAllStores(map);
		int totalRecords=memStoresServ.selectAllStoresCount(map);
		logger.info("list.size={},totalRecords={}",list.size(),totalRecords);
		map.put("list", list);
		map.put("totalRecords",totalRecords);
		return map;
	}
	
	@RequestMapping(value="/storeDetail.do",method = RequestMethod.GET)
	public String storeDetail_get(@RequestParam(defaultValue = "0") int storeNo,Model model){
		logger.info("점포 상세보기");
		if(storeNo<1) {
			model.addAttribute("msg","잘못된 접근입니다.");
			model.addAttribute("url","/member/index.do");
			return "common/message"; 
		}
		return "member/store/detail";		
	}
}
