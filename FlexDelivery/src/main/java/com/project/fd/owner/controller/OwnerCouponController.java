package com.project.fd.owner.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
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
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.project.fd.admin.coupons.model.AdminRegularCouponDAO;
import com.project.fd.admin.coupons.model.AdminRegularCouponVO;
import com.project.fd.common.PaginationInfo;
import com.project.fd.common.Utility;
import com.project.fd.owner.coupon.model.OwnerCouponSearchVO;
import com.project.fd.owner.coupon.model.OwnerCouponService;
import com.project.fd.owner.coupon.model.OwnerCouponVO;
import com.project.fd.owner.request.model.OwnerRequestService;

@Controller
@RequestMapping("/owner/menu2/couponused")
public class OwnerCouponController {
	@Autowired
	private static final Logger logger = LoggerFactory.getLogger(OwnerCouponController.class);
	
	@Autowired OwnerCouponService couponService;
	@Autowired OwnerRequestService requestService;
	
	@RequestMapping("/couponUsed.do")
	public String ownercouponused(@ModelAttribute OwnerCouponSearchVO searchVo ,
			HttpSession session,Model model) {
		int storeNo=5;
		//int storeNo= (Integer)session.getAttribute("storeNo");
		logger.info("혜택 - 쿠폰관리 보여주기 storeNo={}",storeNo);
		
		searchVo.setStoreNo(storeNo);
		logger.info("coupon 전체 보여주기 , 파라미터 searchVo={}", searchVo);
		
		PaginationInfo pagingInfo = new PaginationInfo();
		pagingInfo.setBlockSize(Utility.BLOCKSIZE);
		pagingInfo.setRecordCountPerPage(Utility.RECORD_COUNT);
		pagingInfo.setCurrentPage(searchVo.getCurrentPage());
		
		searchVo.setFirstRecordIndex(pagingInfo.getFirstRecordIndex());
		searchVo.setRecordCountPerPage(Utility.RECORD_COUNT);
		
		//날짜가 넘어오지 않은 경우 현재일자를 셋팅
		String startDay=searchVo.getStartDay();
		if(startDay==null || startDay.isEmpty()) {
			Date d = new Date();
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
			String today=sdf.format(d);
			searchVo.setStartDay(today);
			searchVo.setEndDay(today);			
		}
		logger.info("searchVo={}",searchVo);
		int totalRecord=couponService.getTotalRecord(searchVo);
		logger.info("coupon 전체 조회,  레코드 개수 조회 결과, totalRecord={}", totalRecord);
		pagingInfo.setTotalRecord(totalRecord);
		
		List<Map<String, Object>> list = couponService.Allcoupons(searchVo);
		logger.info("list={}, list.size={}",list,list.size());
		
		model.addAttribute("list", list);
		model.addAttribute("pagingInfo", pagingInfo);
		model.addAttribute("searchVo", searchVo);
		
		return "owner/menu2/couponused/couponUsed";
	}
	
	@RequestMapping(value="/couponRegi.do",method=RequestMethod.GET)
	public String couponList_get( Model model) {
		logger.info("coupon Register page !!");
		List<AdminRegularCouponVO> list=couponService.Allselect();
		model.addAttribute("list", list);
		return "owner/menu2/couponused/couponRegi";
	}
	
	// register coupon
	@RequestMapping(value="/couponRegi.do",method=RequestMethod.POST)
	public String couponList_post(@RequestParam(defaultValue = "0") int no, 
			@RequestParam String pwd, HttpSession session , Model model) {
		logger.info("coupon Register page !! parameter rCouponNo={}",no);
		int storeNo=5;
		//int storeNo=(Integer)session.getAttribute("storeNo");
		OwnerCouponVO vo = new OwnerCouponVO();
		vo.setStoreNo(storeNo);
		vo.setrCouponNo(no);
		
		int ownerNo=(Integer)session.getAttribute("ownerNo");
		logger.info("pwdCK  처리  파라미터 ownerNo={}",ownerNo);
		
		String msg="쿠폰 등록에 실패하였습다. ", url="/owner/menu2/couponused/couponRegi.do";
		if(requestService.pwdCk(pwd,ownerNo)) {
			int cnt =couponService.registerCoupon(vo);
			logger.info("쿠폰 등록  결과, cnt={}", cnt);
			
			if(cnt>0) {
				msg="정상적으로 등록되었습니다.";
			}
		}else {
			msg="비밀번호가 일치하지 않습니다.";
		}
	
		model.addAttribute("msg", msg);
		model.addAttribute("url", url);
		
		return "owner/menu2/couponused/couponRegi";
	}
	/*
	 * 
	@RequestMapping(value="/couponRegi.do",method = RequestMethod.POST)
	public String couponRegi(@RequestParam(defaultValue = "0")int no) {
		logger.info(msg);
	}
	 * */
	
}
