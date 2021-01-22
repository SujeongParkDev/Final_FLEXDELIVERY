package com.project.fd.owner.controller;

import java.io.File;

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

import com.project.fd.common.FileUploadUtil;
import com.project.fd.owner.ownerregister.model.OwnerRegisterService;
import com.project.fd.owner.ownerregister.model.OwnerRegisterVO;


@Controller
@RequestMapping("/owner/menu2")
public class OwnerAdminAgreeListcontroller {
	// 승인 받아야하는거 3가지 사업자등록증, 메뉴, 입점폼 
	//리스트 뿌리려면 공통된거 점주번호 관리자 승인구분체크  합쳐서 맵으로 받으면되나?? 
	// 3개 조인해서??
	private static final Logger logger
	=LoggerFactory.getLogger(OwnerReviewController.class);
	
	@Autowired private OwnerRegisterService ownerRService;
	@Autowired private FileUploadUtil fileUtil;
	
	 @RequestMapping(value="/temporary/tempList.do",method=RequestMethod.GET)
	 public void TempList_get() {
		 logger.info("점포 - 승인 목록 조회  화면");
	 }
	 
	 // 우선 사업자 등록현황만 뿌려주기 그 후에 뷰하던 추가할것! 
		@RequestMapping("/temporary/tempList.do")
		public String tempList(HttpSession session,
				Model model) {
			int ownerNo=(Integer) session.getAttribute("ownerNo");
			logger.info("상품 목록 조회, 파라미터 ownerNo = {}", ownerNo);
			
			//[1]
			/*PaginationInfo pagingInfo = new PaginationInfo();
			pagingInfo.setBlockSize(Utility.BLOCK_SIZE);
			pagingInfo.setCurrentPage(evPdVo.getCurrentPage());
			pagingInfo.setRecordCountPerPage(Utility.RECORD_COUNT);
			
			//[2]
			evPdVo.setFirstRecordIndex(pagingInfo.getFirstRecordIndex());
			evPdVo.setRecordCountPerPage(Utility.RECORD_COUNT);
			
			model.addAttribute("pagingInfo", pagingInfo);
			int totalRecord=productService.getTotalRecord(evPdVo);
			logger.info("totalRecord={}", totalRecord);
			pagingInfo.setTotalRecord(totalRecord);  */
			
			//OwnerRegisterVO registerVo =oRService.selectAll(ownerNo);
			//logger.info("상품 목록 조회, 결과 registerVo={}", registerVo);
			
			//model.addAttribute("registerVo", registerVo);
			
			return "owner/temporary/tempList";
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
		public String temp_Delete(@ModelAttribute OwnerRegisterVO ownerRegisterVo,
			@RequestParam String oldFileName, HttpServletRequest request
				,Model model){
			//1. 파라미터
			logger.debug(" 취소 , 파라미터: ownerRegisterVo={}", ownerRegisterVo);
			
			//2. db작업
			String msg="신청 취소  실패", 
					url="owner/menu2/temporary/tempList.do";
			
			//int cnt=ownerRService.deleteLicense(ownerRegisterVo);
			//logger.debug("장바구니 삭제 결과 : cnt={}", cnt);
			
			String upPath 
			= fileUtil.getUploadPath(FileUploadUtil.PDS_TYPE, request);
			File oldFile = new File(upPath, oldFileName);
			if(oldFile.exists()) {
				boolean bool=oldFile.delete();
				logger.info("기존 파일 삭제 여부 :{}", bool);
			}		
			
			//3
			model.addAttribute("msg", msg);
			model.addAttribute("url", url);

			//4
			return "common/message";
		}
		
}
