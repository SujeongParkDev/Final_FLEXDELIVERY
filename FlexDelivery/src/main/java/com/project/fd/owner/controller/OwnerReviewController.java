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

import com.project.fd.common.PaginationInfo;
import com.project.fd.common.Utility;
import com.project.fd.owner.reviewcomment.model.OwnerReivewCommentService;
import com.project.fd.owner.reviewcomment.model.OwnerReviewSearchVO;

@Controller
@RequestMapping("/owner/menu2/reviewOwner")
public class OwnerReviewController {
	private static final Logger logger
	=LoggerFactory.getLogger(OwnerReviewController.class);
	
	@Autowired OwnerReivewCommentService ownerReCommService;
	//@Autowired MemberReviewService. memberReviewService;
	
	
	// review List 
	@RequestMapping("/orderList.do")
	public String orderList(@ModelAttribute OwnerReviewSearchVO searchVo,
			HttpSession session, Model model) {
		int storeNo=(Integer)session.getAttribute("storeNo");
		logger.info("점포 - 리뷰관리 보여주기 storeNo={}",storeNo);
		
		searchVo.setStoreNo(storeNo);
		logger.info("주문내역, 파라미터 searchVo={}", searchVo);
		
		//[1]
		PaginationInfo pagingInfo = new PaginationInfo();
		pagingInfo.setBlockSize(Utility.BLOCKSIZE);
		pagingInfo.setRecordCountPerPage(Utility.RECORD_COUNT);
		pagingInfo.setCurrentPage(searchVo.getCurrentPage());
		
		//[2]
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
		
		List<Map<String, Object>> reviewList=ownerReCommService.selectReView(searchVo);
		logger.info("주문내역 조회 결과, reviewList.size={}", reviewList.size());
		
		int totalRecord=ownerReCommService.getTotalRecord(searchVo);
		logger.info("주문내역-레코드 개수 조회 결과, totalRecord={}", totalRecord);
		
		pagingInfo.setTotalRecord(totalRecord);
		
		model.addAttribute("reviewList", reviewList);
		model.addAttribute("pagingInfo", pagingInfo);
		
		return "shop/order/orderList";
	}
	
	/*
	@RequestMapping(value="/reviewOwner.do",method=RequestMethod.GET)
	public String reviewList_get(HttpSession session, Model model) {
		//int storeNo=(Integer) session.getAttribute("storeNo");
		int storeNo=1;
		 logger.info("점포 - 리뷰관리 보여주기 storeNo={}",storeNo);
		 
		 List<Map<String, Object>> reviewList=ownerReCommService.selectReView(storeNo);
			logger.info("리뷰 전체 조회, 결과 reviewList.size={}", reviewList.size());
			
			List<Map<String, Object>> optionList=ownerReCommService.selectOptionView(storeNo);
			logger.info("리뷰 점포  조회, 결과 optionList={}", optionList);
			
			model.addAttribute("reviewList", reviewList);
			model.addAttribute("optionList", optionList);
			
			return "owner/menu2/reviewOwner/reviewOwner";
	}
	@ResponseBody
	@RequestMapping(value="/reviewOwnerWrite.do",method=RequestMethod.POST)
	public OwnerReviewCommentVO reviewWrite(@ModelAttribute OwnerReviewCommentVO vo) {
		int reviewNo=1;
		int storeNo=1;
		vo.setReviewNo(reviewNo);
		vo.setStoreNo(storeNo);
		
		logger.info("ownercomment ajax page, parameter={}",vo.getrCommentContent());
	
		//OwnerReviewCommentVO vo=new OwnerReviewCommentVO();
		//vo.setrCommentContent(content);
		
		int cnt=ownerReCommService.insertComm(vo);
		logger.info("댓글달기 결과 : cnt={}",cnt);
		if(cnt>0) {
			logger.info("댯글 등록 성공");
		}
		return vo;
	}
	
	 */
}
