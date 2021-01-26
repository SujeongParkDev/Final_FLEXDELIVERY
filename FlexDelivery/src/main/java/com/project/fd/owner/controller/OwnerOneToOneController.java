package com.project.fd.owner.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.project.fd.common.PaginationInfo;
import com.project.fd.common.SearchVO;
import com.project.fd.common.Utility;
import com.project.fd.owner.ask.model.OwnerAskSearchVO;
import com.project.fd.owner.ask.model.OwnerAskService;
import com.project.fd.owner.ask.model.OwnerAskVO;

@Controller
@RequestMapping("/owner")
public class OwnerOneToOneController {
	private static final Logger logger
	=LoggerFactory.getLogger(OwnerOneToOneController.class);
	
	@Autowired OwnerAskService ownerAskService;
	

	
	@RequestMapping(value="/menu5/oneToOne.do", method=RequestMethod.POST)
	public String write_post(@ModelAttribute OwnerAskVO ownerAskVo,
			HttpSession session) {
		logger.info("문의글 등록 페이지 ownerAskVo={}",ownerAskVo);
		String askId="lee";
		//String askId=(String)session.getAttribute("ownerId");
		//int authorityNo=(Integer)session.getAttribute("authorityNo");
		int askGroupNo=1; // tkd수처리??
		int authorityNo=4; //세션에서 읽어오기
		ownerAskVo.setAskGroupNo(askGroupNo);
		ownerAskVo.setAuthorityNo(authorityNo);
		ownerAskVo.setAskId(askId);
		logger.info("문의글 등록 처리 파라미터 22 ownerAskVo={}",ownerAskVo);
		
		//2
		int cnt=ownerAskService.insertASK(ownerAskVo);
		logger.info("문의글쓰기 처리 결과, cnt={}", cnt);
		
		//3
		return "redirect:/owner/menu5/oneToOne.do";
	}
	
	
	@RequestMapping("/menu5/oneToOne.do")
	public String askList_get(@ModelAttribute OwnerAskSearchVO searchVo, Model model) {
		String askId="lee";
		searchVo.setAskId(askId);
		//String askId=(String)session.getAttribute("ownerId");
		logger.info("점포 - 일대일 문의 보여주기");
		logger.info("글 목록 페이지, 파라미터 searchVo={},askId={}", searchVo,askId);
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
				
		List<OwnerAskVO> list=ownerAskService.selectAllAsk(searchVo);
		logger.info("글목록 결과, list.size={}", list.size());
		
		int totalRecord=ownerAskService.selectTotalRecord(searchVo);
		logger.info("글 개수, totalRecord={}", totalRecord);		
		pagingInfo.setTotalRecord(totalRecord);

		//3. 모델에 결과 저장
		model.addAttribute("list", list);
		model.addAttribute("pagingInfo", pagingInfo);
		
		//4. 뷰페이지 리턴
		return "redirect:/owner/menu5/oneToOne.do";
	}
	
	
}
