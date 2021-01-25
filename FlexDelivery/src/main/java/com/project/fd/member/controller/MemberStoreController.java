package com.project.fd.member.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.mail.Session;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

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

	@RequestMapping("/storeDetail.do")
	public String store() {
		logger.info("점포 화면 보여주기");
		return "member/store/storeDetail";
	}
	
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
	
	@RequestMapping("/storeAll.do")
	public void storeAll(HttpSession session,@RequestParam int lCategoryNo,Model model) {
		logger.info("메뉴전체 출력");
		int locationNo=(Integer)session.getAttribute("locationNo");
		Map<String, Object> map=new HashMap<String, Object>();
		map.put("locationNo",locationNo);
		map.put("lCategoryNo",lCategoryNo);
		List<MemberStoresVO> list=memStoresServ.selectAllStores(map);
		model.addAttribute("list",list);
	}
}
