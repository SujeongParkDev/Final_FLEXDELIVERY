package com.project.fd.admin.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.project.fd.admin.ask.model.AdminAskService;
import com.project.fd.admin.ask.model.AdminAskVO;
import com.project.fd.admin.model.AdminVO;
import com.project.fd.admin.mypage.AdminMypageService;

@Controller
@RequestMapping("/admin/myPage")
public class AdminMypageController {
  
	 private static final Logger logger
		=LoggerFactory.getLogger(AdminMypageController.class);
	
	@Autowired
	private AdminMypageService mypageService;
	
	@RequestMapping("/myPage.do")
	public void list_myPage(Model model) {
		logger.info("마이페이지1 출력하기");
		
		AdminVO vo=mypageService.selectInfoByNo(1);
		
		model.addAttribute("vo", vo);
		
	}
	
	@RequestMapping("/myPageConfirm.do")
	public String list_myPageConfirm(@ModelAttribute AdminVO vo, @RequestParam String pwd, Model model) {
		logger.info("마이페이지 비밀번호 확인, vo={}", vo);
		logger.info("비밀번호, pwd={}", pwd);
		String msg="비밀번호 불일치! 이전 페이지로 돌아갑니다.";
		String url="/admin/myPage/myPage.do";
		int no=0;
		if (pwd.equals(vo.getAdminPwd())) {
			logger.info("비밀번호 일치");
			msg="비밀번호 일치! 정보 수정 페이지로 이동합니다.";
			url="/admin/myPage/myPageEdit.do";
			no=vo.getAdminNo();
		} else {
			logger.info("비밀번호 불일치!");
		}
		
		/*int cnt=mypageService.confirmPwd(vo);
		
		logger.info("비밀번호 확인 결과, cnt={}", cnt);
		if (cnt>0) {
			logger.info("비밀번호 일치");
		}*/
		
		model.addAttribute("msg", msg);
		model.addAttribute("url", url);
		model.addAttribute("no", no);
		
		return "common/message"; 
	}
	
	/*	
	@RequestMapping(value="/oneToOne/writeReply.do", method=RequestMethod.POST)
	public String write_post(@ModelAttribute AdminAskVO askVo,
			HttpServletRequest request) {
		logger.info("1:1 문의 답변 등록 처리, askVo={}", askVo);
		
		int cnt=askService.insertAskReply(askVo);
				
		if (cnt>0) {
			logger.info("1:1 문의 답변 등록 완료, cnt={}", cnt);
			
			askVo.setAskReplyFlag("Y");
			//원글 답글 플래그 y로 바꾸기
			int cnt2=askService.updateAsk(askVo);
			logger.info("1:1 문의 원글 플래그 변경, cnt2={}", cnt2);
		}
		
		return "redirect:/admin/menu5/oneToOne/detail.do?no="+askVo.getAskGroupNo();
	}
	 */
	
	@RequestMapping(value="/myPageEdit.do", method = RequestMethod.GET)
	public String edit_info_get(@RequestParam(defaultValue = "0") int no, Model model) {
		logger.info("관리자 개인정보 수정 화면 띄우기");
		
		if(no==0) {
			model.addAttribute("msg", "잘못된 url입니다.");
			model.addAttribute("url", "/admin/myPage/myPage.do");
			return "common/message";
		}
		
		AdminVO vo=mypageService.selectInfoByNo(no);
		logger.info("관리자 정보 조회, vo={}", vo);
		
		model.addAttribute("vo", vo);
		model.addAttribute("msg", "개인정보 수정 화면!");
		model.addAttribute("url", "/admin/myPage/myPageEdit.do");
		
		return "common/message";
	}
	
	@RequestMapping(value="/myPageEdit.do", method=RequestMethod.POST)
	public String edit_info_post(@ModelAttribute AdminVO vo,
			HttpServletRequest request, Model model) {
		logger.info("edit_info_post 관리자 개인정보 수정 처리, 파라미터 vo={}", vo);
		
		String msg="개인정보 수정 실패", url="/admin/myPage/myPage.do";
		int cnt=mypageService.updateInfo(vo);
		logger.info("관리자 개인정보 수정 처리 결과, cnt={}", cnt);
		
		if (cnt>0) {
			msg="개인정보를 수정하였습니다.";
			url="/admin/myPage.do";
		}
		
		model.addAttribute("msg", msg);
		model.addAttribute("url", url);
		
		return "common/message";
	}
	
 }


