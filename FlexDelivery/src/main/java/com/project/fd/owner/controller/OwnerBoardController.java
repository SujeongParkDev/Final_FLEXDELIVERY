package com.project.fd.owner.controller;

import java.io.File;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.project.fd.common.FileUploadUtil;
import com.project.fd.common.PaginationInfo;
import com.project.fd.common.Utility;
import com.project.fd.owner.board.model.OwnerBoardSearchVO;
import com.project.fd.owner.board.model.OwnerBoardService;
import com.project.fd.owner.board.model.OwnerBoardVO;
import com.project.fd.owner.common.OwnerFileUploadUtil;
import com.project.fd.owner.model.OwnerService;

@Controller
@RequestMapping("/owner/menu3")
public class OwnerBoardController {

	private static final Logger logger
	=LoggerFactory.getLogger(OwnerBoardController.class);
	
	@Autowired
	private OwnerService ownerService;
	@Autowired
	private OwnerBoardService ownerBoardService;
	
	@Autowired
	private FileUploadUtil fileUtil;
	
	
	
	

	
	//공지사항 부분 시작
		
		//공지사항 보여주기
	
			


		@RequestMapping("/notice/notice.do")
		public String noticeList(@ModelAttribute OwnerBoardSearchVO searchVo, Model model) {
			//1
			logger.info("공지사항 글 목록, 파라미터 BoardSearchVO={}", searchVo);
			
			
			//2
			//페이징 처리 관련 셋팅
			//[1] PaginationInfo 생성
			PaginationInfo pagingInfo = new PaginationInfo();
			pagingInfo.setBlockSize(Utility.BLOCKSIZE);
			pagingInfo.setRecordCountPerPage(Utility.RECORD_COUNT);
			pagingInfo.setCurrentPage(searchVo.getCurrentPage());

			//[2] SearchVo 셋팅
			searchVo.setRecordCountPerPage(Utility.RECORD_COUNT);
			searchVo.setFirstRecordIndex(pagingInfo.getFirstRecordIndex());
			searchVo.setBoardHead(OwnerBoardService.BOARD_NOTICE);
			
			//공지사항이면 공지사항 이벤트면 이벤트 
			
			List<OwnerBoardVO> list=ownerBoardService.selectAll(searchVo);
			logger.info("공지사항 또는 이벤트  조회 결과, list.size={}", list.size());

			int totalRecord=ownerBoardService.selectTotalRecord(searchVo);
			logger.info("글 개수, totalRecord={}", totalRecord);		
			pagingInfo.setTotalRecord(totalRecord);

			//3. 모델에 결과 저장
			model.addAttribute("list", list);
			model.addAttribute("pagingInfo", pagingInfo);

			return "owner/menu3/notice/notice";
		}

		
		@RequestMapping("/notice/noticeDetail.do")
		public String noticeDetail(@RequestParam(defaultValue = "0") int boardNo,
				HttpServletRequest request, Model model) {
			//1
			logger.info("상세보기 파라미터 no={}", boardNo);
			if(boardNo==0) {
				model.addAttribute("msg", "잘못된 url입니다.");
				model.addAttribute("url", "/owner/menu3/notice/notice.do");

				return "common/message";
			}

			//2
			OwnerBoardVO ownerBoardVo=ownerBoardService.selectByNo(boardNo);
			logger.info("상세보기 결과,vo={}", ownerBoardVo);

			
			//현재 파일이 인터넷 url 인지 파일 업로드한 url 인지 확인위해서
			String upPath 
			= fileUtil.getUploadPath(OwnerFileUploadUtil.OWNER_MENU_TYPE, request);
			File nowFile = new File(upPath, ownerBoardVo.getBoardThumbnail());
			boolean bool = false;
			if(nowFile.exists()) {
				bool=true;
				logger.info("기존 파일 존재 여부 :{}", bool);
			}
			
			
			//3
			model.addAttribute("ownerBoardVo", ownerBoardVo);
			model.addAttribute("bool",bool);


			//4
			return "owner/menu3/notice/noticeDetail";
		}

	
		
		
		
		
		
		


		/*


		//이벤트 시작
		
		@RequestMapping("/event/event.do")
		public String eventList(@ModelAttribute OwnerBoardSearchVO searchVo, Model model) {
			//1
			logger.info(" 이벤트  글 목록, 파라미터 BoardSearchVO={}", searchVo);
			
			
			//2
			//페이징 처리 관련 셋팅
			//[1] PaginationInfo 생성
			PaginationInfo pagingInfo = new PaginationInfo();
			pagingInfo.setBlockSize(Utility.BLOCKSIZE);
			pagingInfo.setRecordCountPerPage(Utility.RECORD_COUNT);
			pagingInfo.setCurrentPage(searchVo.getCurrentPage());

			//[2] SearchVo 셋팅
			searchVo.setRecordCountPerPage(Utility.RECORD_COUNT);
			searchVo.setFirstRecordIndex(pagingInfo.getFirstRecordIndex());
			searchVo.setBoardHead(OwnerBoardService.BOARD_EVENT);
			
			//공지사항이면 공지사항 이벤트면 이벤트 
			
			List<OwnerBoardVO> list=ownerBoardService.selectAll(searchVo);
			logger.info("공지사항 또는 이벤트  조회 결과, list.size={}", list.size());

			int totalRecord=ownerBoardService.selectTotalRecord(searchVo);
			logger.info("글 개수, totalRecord={}", totalRecord);		
			pagingInfo.setTotalRecord(totalRecord);

			//3. 모델에 결과 저장
			model.addAttribute("list", list);
			model.addAttribute("pagingInfo", pagingInfo);

			return "owner/menu3/event/event.do";
		}

		
		@RequestMapping("/event/eventDetail.do")
		public String eventDetail(@RequestParam(defaultValue = "0") int boardNo,
				HttpServletRequest request, Model model) {
			//1
			logger.info("상세보기 파라미터 no={}", boardNo);
			if(boardNo==0) {
				model.addAttribute("msg", "잘못된 url입니다.");
				model.addAttribute("url", "/owner/menu3/event/event.do");

				return "common/message";
			}

			//2
			OwnerBoardVO ownerBoardVo=ownerBoardService.selectByNo(boardNo);
			logger.info("상세보기 결과,vo={}", ownerBoardVo);

			
			//현재 파일이 인터넷 url 인지 파일 업로드한 url 인지 확인위해서
			String upPath 
			= fileUtil.getUploadPath(OwnerFileUploadUtil.OWNER_MENU_TYPE, request);
			File nowFile = new File(upPath, ownerBoardVo.getBoardThumbnail());
			boolean bool = false;
			if(nowFile.exists()) {
				bool=true;
				logger.info("기존 파일 존재 여부 :{}", bool);
			}
			
			
			//3
			model.addAttribute("ownerBoardVo", ownerBoardVo);
			model.addAttribute("bool",bool);


			//4
			return "owner/menu3/event/eventDetail";
		}


		*/


	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
//이벤트 부분 시작
	
	//관리자, 점포 공통 뷰 보여주기(점포)
	@RequestMapping("/event/event.do")
	public void event(){
		logger.info("이벤트 보여주기");
	
	}
	
	
	


}
