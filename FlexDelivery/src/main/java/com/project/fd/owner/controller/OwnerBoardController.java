package com.project.fd.owner.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.project.fd.common.FileUploadUtil;
import com.project.fd.owner.model.OwnerService;

@Controller
@RequestMapping("/owner/menu3")
public class OwnerBoardController {

	private static final Logger logger
	=LoggerFactory.getLogger(OwnerBoardController.class);
	
	@Autowired
	private OwnerService ownerService;
	
	@Autowired
	private FileUploadUtil fileUtil;
	
	
	
	

	
	//공지사항 부분 시작
		
		//공지사항 보여주기
			@RequestMapping("/notice/notice.do")
			public void notice(){
				logger.info("공지사항 보여주기 ");
			
				
			}

			/*
			


		@RequestMapping("/list.do")
		public String list(@ModelAttribute SearchVO searchVo, Model model) {
			//1
			logger.info("글 목록 페이지, 파라미터 searchVo={}", searchVo);

			//2
			//페이징 처리 관련 셋팅
			//[1] PaginationInfo 생성
			PaginationInfo pagingInfo = new PaginationInfo();
			pagingInfo.setBlockSize(Utility.BLOCK_SIZE);
			pagingInfo.setRecordCountPerPage(Utility.RECORD_COUNT);
			pagingInfo.setCurrentPage(searchVo.getCurrentPage());

			//[2] SearchVo 셋팅
			searchVo.setRecordCountPerPage(Utility.RECORD_COUNT);
			searchVo.setFirstRecordIndex(pagingInfo.getFirstRecordIndex());

			List<ReBoardVO> list=reBoardService.selectAll(searchVo);
			logger.info("글목록 결과, list.size={}", list.size());

			int totalRecord=reBoardService.selectTotalRecord(searchVo);
			logger.info("글 개수, totalRecord={}", totalRecord);		
			pagingInfo.setTotalRecord(totalRecord);

			//3. 모델에 결과 저장
			model.addAttribute("list", list);
			model.addAttribute("pagingInfo", pagingInfo);

			//4. 뷰페이지 리턴
			return "reBoard/list";
		}

		@RequestMapping("/countUpdate.do")
		public String countUpdate(@RequestParam(defaultValue = "0") int no,
				Model model) {
			//1
			logger.info("조회수 증가, 파라미터 no={}", no);
			if(no==0) {
				model.addAttribute("msg", "잘못된 url입니다.");
				model.addAttribute("url", "/reBoard/list.do");

				return "common/message";
			}

			//2
			int cnt=reBoardService.updateReadCount(no);
			logger.info("조회수 증가 결과, cnt={}", cnt);

			//3
			return "redirect:/reBoard/detail.do?no="+no;
		}

		@RequestMapping("/detail.do")
		public String detail(@RequestParam(defaultValue = "0") int no,
				HttpServletRequest request, Model model) {
			//1
			logger.info("상세보기 파라미터 no={}", no);
			if(no==0) {
				model.addAttribute("msg", "잘못된 url입니다.");
				model.addAttribute("url", "/reBoard/list.do");

				return "common/message";
			}

			//2
			ReBoardVO reBoardVo=reBoardService.selectByNo(no);
			logger.info("상세보기 결과,vo={}", reBoardVo);

			String fileInfo
			=reBoardService.getFileInfo(reBoardVo.getOriginalFileName(), 
					reBoardVo.getFileSize(), request);
			String downInfo = "다운 : "+reBoardVo.getDownCount();
			logger.info("fileInfo={}, downInfo={}", fileInfo, downInfo);

			//3
			model.addAttribute("vo", reBoardVo);
			model.addAttribute("fileInfo", fileInfo);
			model.addAttribute("downInfo", downInfo);

			//4
			return "reBoard/detail";
		}

	

	
	
	
	*/
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
//이벤트 부분 시작
	
	//관리자, 점포 공통 뷰 보여주기(점포)
	@RequestMapping("/event/event.do")
	public void event(){
		logger.info("이벤트 보여주기");
	
	}
	
	
	


}
