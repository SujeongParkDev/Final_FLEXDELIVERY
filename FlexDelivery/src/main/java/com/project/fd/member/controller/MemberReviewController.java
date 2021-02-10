package com.project.fd.member.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
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
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.google.api.client.http.HttpRequest;
import com.project.fd.common.FileUploadUtil;
import com.project.fd.member.review.model.MemberReviewService;
import com.project.fd.member.review.model.MemberReviewVO;

@Controller
@RequestMapping("/member/review")
public class MemberReviewController {
	@Autowired private static final Logger logger=LoggerFactory.getLogger(MemberReviewController.class);
	@Autowired private MemberReviewService reServ;
	@Autowired private FileUploadUtil fileUtil;
	@RequestMapping(value="/storeReview.do",method = RequestMethod.GET)
	public String storeReview_View(@RequestParam int storeNo,HttpServletRequest req,HttpSession session,Model model) {
		logger.info("점포상세에서 리뷰노출 , 파라미터 storeNo={}",storeNo);
		int startIndex=Integer.parseInt(req.getParameter("startIndex"));
		int lastIndex=Integer.parseInt(req.getParameter("lastIndex"));
		int totalRecords=Integer.parseInt(req.getParameter("totalRecords"));
		int memberNo=(Integer)session.getAttribute("memberNo");
		Map<String, Object> map=new HashMap<String, Object>();
		map.put("startIndex", startIndex);
		map.put("lastIndex", lastIndex);
		map.put("storeNo",storeNo);
		map.put("totalRecords", totalRecords);
		
		List<MemberReviewVO> list=reServ.selectStoreReview(map); // 점포별 리뷰리스트 출력
		
		boolean reviewChk=reServ.reviewChk(memberNo); // 현재 로그인한 회원의 리뷰작성가능 여부 체크, true면 작성가능
		
		List<Map<String, Object>> orderList=reServ.orderListForReview(memberNo); //회원의 주문내역중 리뷰가 작성되지 않은 리스트
		
		model.addAttribute("orderList",orderList);
		model.addAttribute("map",map);
		model.addAttribute("list",list);
		model.addAttribute("reviewChk",reviewChk);
		return "member/store/review/storeReview";
	}
	
	@ResponseBody
	@RequestMapping(value="/storeReview.do", method = RequestMethod.POST)
	public Map<String, Object> storeReview_Post(HttpServletRequest req,HttpSession session) {
		int storeNo=Integer.parseInt(req.getParameter("storeNo"));
		int startIndex=Integer.parseInt(req.getParameter("startIndex"));
		int lastIndex=Integer.parseInt(req.getParameter("lastIndex"));
		int totalRecords=Integer.parseInt(req.getParameter("totalRecords")); 
		logger.info("ajax리뷰노출 , 파라미터 storeNo={}",storeNo);
		logger.info("totalRecords={}",totalRecords);
		logger.info("startIndex={},lastIndex={}",startIndex,lastIndex);
		
		Map<String, Object> map=new HashMap<String, Object>();
		map.put("startIndex", startIndex);
		map.put("lastIndex", lastIndex);
		map.put("storeNo",storeNo);
		map.put("totalRecords", totalRecords);
		
		List<MemberReviewVO> list=reServ.selectStoreReview(map);
		map.put("list", list);
		
		return map;
	}
	
	@RequestMapping(value="/reviewReg.do",method = RequestMethod.POST)
	public String reviewRegister(@ModelAttribute MemberReviewVO vo,HttpSession session,Model model,HttpServletRequest request) {
		logger.info("vo={}",vo);
		int memberNo=(Integer)session.getAttribute("memberNo");
		vo.setMemberNo(memberNo);
		//파일 업로드 처리
		String fileName="";
		try {
			List<Map<String, Object>> fileList
			=fileUtil.fileUplaod(request, FileUploadUtil.REVIEW_TYPE);
			for(Map<String, Object> fileMap : fileList) {
				fileName=(String) fileMap.get("fileName");
			}//for
			vo.setReviewFilename(fileName);
		} catch (IllegalStateException e) {
			logger.info("파일 업로드 실패!");
			e.printStackTrace();
		} catch (IOException e) {
			logger.info("파일 업로드 실패!");
			e.printStackTrace();
		}
		logger.info("파일업로드 처리 후 vo={}",vo);
		int cnt=reServ.reviewWrite(vo);
		String msg="리뷰작성 실패",url="/member/store/storeDetail.do?storeNo="+vo.getStoreNo();
		if(cnt>0) {
			msg="리뷰작성 완료!";
		}
		
		model.addAttribute("msg",msg);
		model.addAttribute("url",url);
		return "common/message";
	}
	
	@RequestMapping("/delReview.do")
	public String reviewDel(@RequestParam int reviewNo,Model model) {
		logger.info("리뷰 삭제처리 ,reviewNo={}",reviewNo);
		int cnt=reServ.deleteReview(reviewNo);
		logger.info("삭제결과 cnt={}",cnt);
		int storeNo=reServ.selectStoreNoByReview(reviewNo);
		logger.info("삭제후 점포번호 구하기 storeNo={}",storeNo);
		String msg="삭제 실패",url="/member/store/storeDetail.do?storeNo="+storeNo;
		if(cnt>0) {
			msg="삭제 성공";
		}
		model.addAttribute("msg",msg);
		model.addAttribute("url",url);
		
		return "common/message";
	}
	
}
