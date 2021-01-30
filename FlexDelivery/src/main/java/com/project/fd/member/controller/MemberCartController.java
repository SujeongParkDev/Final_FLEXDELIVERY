package com.project.fd.member.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.project.fd.member.cart.model.MemberCartService;
import com.project.fd.member.cart.model.MemberCartVO;
import com.project.fd.member.menu.model.MemberMenuOptionListVO;
import com.project.fd.member.menu.model.MemberMenuOptionVO;

@Controller
@RequestMapping("/member/cart")
public class MemberCartController {
	
	@Autowired MemberCartService cartServ;
	private static Logger logger=LoggerFactory.getLogger(MemberCartController.class);
	
	@ResponseBody
	@RequestMapping("/deleteOtherStore.do")
	public boolean deleteOtherStore(@RequestParam int memberNo) {
		logger.info("멤버번호로 다른 점포 장바구니 비우기 memberNo={}",memberNo);
		int cnt=cartServ.deleteByMemberNo(memberNo);
		logger.info("장바구니 삭제결과 cnt={}",cnt);
		if(cnt>0) {
			return true;
		}
		return false;
	}
	
	@ResponseBody
	@RequestMapping("/addCart.do")
	public boolean addCart(@ModelAttribute MemberMenuOptionListVO optionList
			,@ModelAttribute MemberCartVO cartVo
			,HttpSession session) {
		
		List<MemberMenuOptionVO> optionlist=optionList.getOptionList();
		List<MemberCartVO> cartList=new ArrayList<MemberCartVO>();
		logger.info("장바구니 담기 메뉴옵션 가져오기, optionList.size={},cartVo={}",optionlist.size(),cartVo);
		for(int i=0;i<optionlist.size();i++) {
			logger.info("선택한 메뉴옵션 찍어주기 menuoption={}",optionlist.get(i));
			if(optionlist.get(i).getmOptionNo()!=0) {
				if(optionlist.get(i).getmOptionNo()==-1) {
					optionlist.get(i).setmOptionNo(0);
				}
				MemberCartVO tqVo=new MemberCartVO(cartVo.getStoreNo(),cartVo.getMenuNo(),cartVo.getCartQty(),cartVo.getStoreName());
				tqVo.setmOptionNo(optionlist.get(i).getmOptionNo());
				tqVo.setMemberNo((Integer)session.getAttribute("memberNo"));
				cartList.add(tqVo);
			}
		}
		logger.info("cartList.size={}",cartList.size());
		
		int cnt=cartServ.addCart(cartList);
		if(cnt>0) {
			return true;
		}
		return false;
	}
	
	/*
	기존거
	@RequestMapping("/addCart.do")
	public String addCart(@ModelAttribute MemberMenuOptionListVO optionList
			,@ModelAttribute MemberCartVO cartVo
			,HttpSession session
			,Model model) {
		List<MemberMenuOptionVO> optionlist=optionList.getOptionList();
		logger.info("장바구니 담기 메뉴옵션 가져오기, optionList.size={},cartVo={}",optionlist.size(),cartVo);
		List<MemberCartVO> cartList=new ArrayList<MemberCartVO>();
		for(int i=0;i<optionlist.size();i++) {
			logger.info("선택한 메뉴옵션 찍어주기 menuoption={}",optionlist.get(i));
			if(optionlist.get(i).getmOptionNo()>0) {
				//int idx=0;
				MemberCartVO tqVo=new MemberCartVO(cartVo.getStoreNo(),cartVo.getMenuNo(),cartVo.getCartQty(),cartVo.getStoreName());
				tqVo.setmOptionNo(optionlist.get(i).getmOptionNo());
				tqVo.setMemberNo((Integer)session.getAttribute("memberNo"));
				cartList.add(tqVo);
				
					// logger.info("선택한 옵션을 cartvo로 세팅해줘서 cartList에 담아주기,tqVo={}",tqVo);
					// logger.info("cartList 나와라={}",cartList.get(idx)); idx++;
				 
			}
		}
		logger.info("cartList.size={}",cartList.size());
		
		  //for(int i=0;i<cartList.size();i++) {
		  //logger.info("cartList 나와라2222={}",cartList.get(i)); }
		
		int cnt=cartServ.addCart(cartList);
		String msg="",url="";
		if(cnt>0) {
			msg="장바구니에 상품을 담았습니다";
			url="/member/store/storeDetail.do?storeNo="+cartVo.getStoreNo();
		}else {
			msg="장바구니 등록 실패";
			url="/member/store/storeDetail.do?storeNo="+cartVo.getStoreNo();
		}
		model.addAttribute("msg",msg);
		model.addAttribute("url",url);
		return "common/message";
	}
	*/
	
}
