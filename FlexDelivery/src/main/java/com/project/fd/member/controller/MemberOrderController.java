package com.project.fd.member.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.project.fd.member.cart.model.MemberCartService;
import com.project.fd.member.cart.model.MemberCartViewVO;
import com.project.fd.member.coupon.model.MemberCouponService;
import com.project.fd.member.coupon.model.MemberRegularCouponBoxVO;
import com.project.fd.member.gift.model.MemberGiftService;
import com.project.fd.member.gift.model.MemberGiftVO;
import com.project.fd.member.model.MemberService;
import com.project.fd.member.model.MemberVO;
import com.project.fd.member.order.model.MemberOrderService;
import com.project.fd.member.order.model.MemberOrderVO;
import com.project.fd.member.stores.model.MemberStoresService;
import com.project.fd.member.stores.model.MemberStoresVO;

@Controller
@RequestMapping("/member/order")
public class MemberOrderController {
	@Autowired private static final Logger logger=LoggerFactory.getLogger(MemberOrderController.class);
	@Autowired private MemberService memServ;
	@Autowired private MemberCouponService coupServ;
	@Autowired private MemberCartService cartServ;
	@Autowired private MemberStoresService storeServ;
	@Autowired private MemberGiftService giftServ;
	@Autowired private MemberOrderService orderServ;
	
	@RequestMapping("/orderSheet.do")
	public void orderSheet(HttpSession session,Model model) {
		logger.info("주문서 작성페이지");
		String memberId=(String)session.getAttribute("memberId");
		MemberVO memVo=memServ.selectMember(memberId);
		List<MemberCartViewVO> cartList=cartServ.selectCartList(memVo.getMemberNo());
		Map<String, Object> map=new HashMap<String, Object>();
		map.put("memberNo", memVo.getMemberNo());
		map.put("storeNo", cartList.get(0).getStoreNo());
		List<MemberRegularCouponBoxVO> coupList=coupServ.memberCouponList(map);
		List<MemberGiftVO> giftList=giftServ.selectTakeGiftList(memVo.getMemberNo());
		
		MemberStoresVO vo=storeServ.selectStoresDetail(cartList.get(0).getStoreNo());
		
		Date d = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmssSSS");
		String today =sdf.format(d);
		
		model.addAttribute("today",today);
		model.addAttribute("memVo",memVo);
		model.addAttribute("coupList",coupList);
		model.addAttribute("giftList",giftList);
		model.addAttribute("cartList",cartList);
		model.addAttribute("storeMinPrice",vo.getStoreMinPrice());
	}
	
	@RequestMapping("/orderSuccess.do")
	public String orderSuccess(@ModelAttribute MemberOrderVO vo,@RequestParam(defaultValue = "0",required = false) int giftSelect
			,@RequestParam(defaultValue = "0",required = false) int couponSelect,Model model) {
		logger.info("주문처리, MemberOrderVO={}",vo);
		List<MemberCartViewVO> cartList=cartServ.selectCartList(vo.getMemberNo());
		int cnt=0;
		int type=0;
		int dcNo=0;
		if(vo.getOrdersDiscount()!=0) {
			if(giftSelect!=0) {
				type=MemberOrderService.GIFT_USE; //상품권 사용한경우
				dcNo=giftSelect;
			}else if(couponSelect!=0) {
				type=MemberOrderService.COUPON_USE; //쿠폰 사용한경우
				dcNo=couponSelect;
			}
		}
		cnt=orderServ.insertOrder(vo, cartList,type,dcNo);
		String msg="주문 실패하였습니다.";
		String url="/member/order/orderSheet.do";
		if(cnt>0) {
			msg="주문성공!";
			url="/member/index.do";
		}
		model.addAttribute("msg",msg);
		model.addAttribute("url",url);
		return "common/message";
	}
	
}
