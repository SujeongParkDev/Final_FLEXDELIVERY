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
import org.springframework.web.bind.annotation.RequestParam;

import com.project.fd.common.FileUploadUtil;
import com.project.fd.owner.advertise.model.OwnerAdvertiseService;
import com.project.fd.owner.ownerregister.model.OwnerRegisterService;


@Controller
@RequestMapping("/owner/menu2")
public class OwnerAdminAgreeListcontroller {
	private static final Logger logger
	=LoggerFactory.getLogger(OwnerReviewController.class);
	
	@Autowired private OwnerRegisterService ownerRService;
	@Autowired private FileUploadUtil fileUtil;
	@Autowired private OwnerAdvertiseService ownerAdvertiseService;
	
	/* @RequestMapping(value="/temporary/tempList.do",method=RequestMethod.GET)
	 public void TempList_get() {
		 logger.info("점포 - 승인 목록 조회  화면");
	 }
	 */
	 //datapicker 사용 리스트 조회
	/* 
	 @RequestMapping("/temporary/tempList.do")
		public String adminAgreeList(@ModelAttribute DateSearchVO searchVo,
				HttpSession session, Model model) {
			String ownerId=(String) session.getAttribute("ownerId"); //사업자ID
			searchVo.setCustomerId(ownerId);		
			logger.info("adminAgreeListTempList , 파라미터 searchVo={}", searchVo);
			
			//[1]
			PaginationInfo pagingInfo = new PaginationInfo();
			//pagingInfo.setBlockSize(Utility.BLOCK_SIZE);
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
			
			List<OwnerAllRegisterVO> tempList=ownerRService.selectTempList(searchVo);
			logger.info("tempList조회 결과, tempList.size={}", tempList.size());
			
			int totalRecord=ownerRService.getTotalRecord(searchVo);
			logger.info("tempList-레코드 개수 조회 결과, totalRecord={}", totalRecord);
			
			pagingInfo.setTotalRecord(totalRecord);
			
			model.addAttribute("tempList", tempList);
			model.addAttribute("pagingInfo", pagingInfo);
			//model.addAttribute("dateSearchVO", searchVo);
			
			
			return "owner/menu2/temporary/tempList";
	 }
			*/
	 
	 
	 //장바구니처럼 
		@RequestMapping("/temporary/tempList.do")
		public String tempList(HttpSession session,
				Model model) {
			//int ownerNo=(Integer) session.getAttribute("ownerNo");
			int ownerNo=1;
			logger.info("승인 신청  목록 조회, 파라미터 ownerNo = {}", ownerNo);
			
			List<Map<String, Object>> tempList =ownerRService.selectLSJAgreeListView(ownerNo);
			logger.info("승인 대기  목록 조회 결과, tempList.size={}", tempList.size());

			model.addAttribute("tempList", tempList);
			
			return "owner/menu2/temporary/tempList";
		}
		
	 /*
		@RequestMapping("/detail.do")
		public String temp_detail(@RequestParam(defaultValue = "0") int no,
				HttpServletRequest request, Model model) {
			//1
			logger.info("사업자등록증 신청  상세보기 파라미터 no={}", no);
			if(no==0) {
				model.addAttribute("msg", "잘못된 url입니다.");
				model.addAttribute("url", "/reBoard/list.do");

				return "common/message";
			}

			//2
			OwnerRegisterVO ownerRegisterVO=ownerRService.selectByNo(no);
			logger.info("상세보기 결과,ownerRegisterVO={}", ownerRegisterVO);

			String fileInfo
			=ownerRService.getFileInfo(ownerRegisterVO.getoRegisterOriginalFileName() 
					, request);
			logger.info("fileInfo={}", fileInfo);

			//3
			model.addAttribute("vo", ownerRegisterVO);
			model.addAttribute("fileInfo", fileInfo);

			//4
			return "";
		} */
		
		@RequestMapping("/tempDelete.do")
		public String temp_Delete(
				@ModelAttribute int storeadNo,
			@RequestParam String mode,
				Model model){
			int cnt=0;
			if(mode.equals("stores")) {
				
			}else if(mode.equals("btAd")) {
				cnt=ownerRService.deleteAd(storeadNo);
			}else if(mode.equals("btRegi")) {
				//int cnt=ownerRService.deleteLicense(ownerRegisterVo);
				//logger.debug("사업자등록증  삭제 결과 : cnt={}", cnt);
				/*
				String upPath 
				= fileUtil.getUploadPath(FileUploadUtil.PDS_TYPE, request);
				File oldFile = new File(upPath, oldFileName);
				if(oldFile.exists()) {
					boolean bool=oldFile.delete();
					logger.info("기존 파일 삭제 여부 :{}", bool);
				}		
				 */
			}
			
			//1. 파라미터
			logger.debug(" 취소 , 파라미터: storeadNo={}",storeadNo );
			
			//2. db작업
			String msg="신청 취소  실패", 
					url="owner/menu2/temporary/tempList.do";
			if(cnt>0) {
				msg="취소 처리 성공 ";
			}
			
			
			//3
			model.addAttribute("msg", msg);
			model.addAttribute("url", url);

			//4
			return "common/message";
		}
}

