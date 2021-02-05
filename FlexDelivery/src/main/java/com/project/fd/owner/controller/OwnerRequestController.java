package com.project.fd.owner.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.project.fd.owner.menu.model.OwnerMenuVO;
import com.project.fd.owner.ownerregister.model.OwnerRegisterVO;
import com.project.fd.owner.request.model.OwnerRequestService;

@Controller
@RequestMapping("/owner/menu2/requests")
public class OwnerRequestController {
	private static final Logger logger  = LoggerFactory.getLogger(OwnerRequestController.class);
	
	@Autowired OwnerRequestService requestService;
	
	@RequestMapping("/requests.do")
	public String ownerrequests(@RequestParam(defaultValue = "0")int no,
			HttpSession session,Model model) {
		int ownerNo=5;
		//int ownerNo=(Integer)session.getAttribute("ownerNo");
		logger.info("요청처리현황 보여주기 no={}",no);
		
		//List<OwnerAllRegisterVO> list =selectStore(ownerNo);
		
		List<Map<String, Object>> RegiList =requestService.selectRegi(ownerNo);
		logger.info("요청처리현황 사업자 등록  RegiList={}",RegiList);
		List<Map<String, Object>> selectStore =requestService.selectStore(ownerNo);
		logger.info("요청처리현황 점포 등록  selectStore={}",selectStore);
		List<Map<String, Object>>  selectAd =requestService.selectAd(ownerNo);
		logger.info("요청처리현황 광고 등록  selectAd={}",selectAd);
		List<Map<String, Object>> selectTemp =requestService.selectTemp(ownerNo);
		logger.info("요청처리현황 점포 수정  selectTemp={}",selectTemp);
		
		model.addAttribute("RegiList", RegiList);
		model.addAttribute("selectStore", selectStore);
		model.addAttribute("selectAd", selectAd);
		model.addAttribute("selectTemp", selectTemp);
		
		
		return "owner/menu2/requests/requests";
	}
	
	@ResponseBody
	@RequestMapping("/selectRegi.do")
	public List<Map<String, Object>> selectMenuAll(@RequestParam(defaultValue = "0") int ownerNo){
		ownerNo=5;
		//int ownerNo=(Integer)session.getAttribute("ownerNo");
		
		logger.info("ajax이용-요청처리현황,   ownerNo={}", ownerNo);
		
		List<Map<String, Object>> RegiList =requestService.selectRegi(ownerNo);
		logger.info("요청처리현황 사업자 등록  RegiList={}",RegiList);
		
		return RegiList;
	}
	
	@ResponseBody
	@RequestMapping("/detailRegi.do")
	public OwnerRegisterVO detailRegi(@RequestParam(defaultValue = "0") long oRegisterNo){
		logger.info("ajax이용-detailRegi, no={}", oRegisterNo);
		
		OwnerRegisterVO vo  = requestService.selectRegiVo(oRegisterNo);
		logger.info("그룹 넘버로  메뉴 리스트 조회,   vo={}", vo);
		
		
		return vo;
	}
}
