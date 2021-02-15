package com.project.fd.member.controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.project.fd.member.board.model.MemberBoardPaging;
import com.project.fd.member.board.model.MemberBoardSearchVO;
import com.project.fd.member.board.model.MemberBoardService;
import com.project.fd.member.board.model.MemberBoardVO;

@Controller
@RequestMapping("/member/board")
public class MemberBoardController {
	@Autowired private static final Logger logger=LoggerFactory.getLogger(MemberBoardController.class);
	@Autowired private MemberBoardService boardServ;
	
	
	@RequestMapping("/board.do")
	public void boardMain(@ModelAttribute MemberBoardSearchVO vo,Model model) {
		logger.info("알림광장 메인페이지,vo={}",vo);
		
		MemberBoardPaging paging=new MemberBoardPaging();
		paging.setBlockSize(10);
		paging.setCountPerPage(10);
		
		List<MemberBoardVO> elist=boardServ.selectEvent(vo);
		List<MemberBoardVO> nlist=boardServ.selectNotice(vo);
		
		model.addAttribute("elist",elist);
		model.addAttribute("nlist",nlist);
		
	}
	
}	
