package com.project.fd.member.controller;

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

import com.project.fd.member.model.MemberService;
import com.project.fd.member.model.MemberVO;
import com.project.fd.member.today.model.MemberTodayService;

@Controller
@RequestMapping("/member/today")
public class MemberTodayController {
	
	@Autowired
	private static final Logger logger
	=LoggerFactory.getLogger(MemberTodayController.class);
	
	@Autowired
	private MemberTodayService memberTodayService;
	
	@Autowired
	private MemberService memberService;
	
	@RequestMapping("/todayList.do")
	public void todayList(Model model) {
		logger.info("오늘 뭐먹지 뷰 띄우기");
		
		Map<String,Object> map = memberTodayService.selectMCategory();
		logger.info("map={}", map);
		 
		int num = (int)(Math.random() * 13)+1;

		  String emoji ="";
	       if(num==1) {
	          emoji="😍";
	       }else if(num==2) {
	          emoji="😜";
	       }else if(num==3) {
	          emoji="😘";
	       }else if(num==4) {
	          emoji="💖";
	       }else if(num==5) {
	          emoji="🤔";
	       }else if(num==6) {
	          emoji="✨";
	       }else if(num==7) {
	          emoji="💜";
	       }else if(num==8) {
	          emoji="💛";
	       }else if(num==9) {
	          emoji="💚";
	       }else if(num==10) {
	          emoji="🧡";
	       }else if(num==11) {
	          emoji="🌈";
	       }else if(num==12) {
	          emoji="💃";
	       }else if(num==13) {
	          emoji="😉";
	       }
	       
	       logger.info("num = {}",num);
	       
	    model.addAttribute("map", map);
	    model.addAttribute("emoji" , emoji);
	
	}
	/*
	@ResponseBody
	@RequestMapping("/todayListStores.do")
	public List<Map<String, Object>> todayListStores(HttpSession session,
				@RequestParam(defaultValue = "0") int mCategoryNo){
		String memberId = (String) session.getAttribute("memberId");
		logger.info("중분류에 해당하는 가게 목록 구하기 ajax memberId={}, mCategoryNo={}",memberId, mCategoryNo);
		
		MemberVO memberVo = memberService.selectMember(memberId);
		logger.info("멤버 아이디로 멤버 정보 불러오기 결과 memberVo={}", memberVo);
		
		int LocationNo = memberVo.getLocationNo();
		
		
	}
	*/
}
