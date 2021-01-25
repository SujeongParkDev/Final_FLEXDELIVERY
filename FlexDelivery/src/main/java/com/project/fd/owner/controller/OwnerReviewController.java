package com.project.fd.owner.controller;

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
import org.springframework.web.bind.annotation.ResponseBody;

import com.project.fd.member.model.MemberVO;
import com.project.fd.owner.reviewcomment.model.OwnerReivewCommentService;
import com.project.fd.owner.reviewcomment.model.OwnerReviewCommentVO;

@Controller
@RequestMapping("/owner/menu2")
public class OwnerReviewController {
	private static final Logger logger
	=LoggerFactory.getLogger(OwnerReviewController.class);
	
	@Autowired OwnerReivewCommentService ownerReCommService;
	//@Autowired MemberReviewService. memberReviewService;
	
	@RequestMapping(value="/reviewOwner/reviewOwner.do",method=RequestMethod.GET)
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
	@RequestMapping(value="/reviewOwner/reviewOwnerWrite.do",method=RequestMethod.POST)
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
	
}
