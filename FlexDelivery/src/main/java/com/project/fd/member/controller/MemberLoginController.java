package com.project.fd.member.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.project.fd.common.Utility;
import com.project.fd.member.model.MemberService;
import com.project.fd.member.model.MemberVO;

@Controller
@RequestMapping("/member/login")
public class MemberLoginController {
	@Autowired
	private static final Logger logger=LoggerFactory.getLogger(MemberLoginController.class);
	
	@Autowired private MemberService memServ;
	
	
	@RequestMapping("/memberLogin.do")
	public String memberLogin_view(Model model) {
		int idx=Utility.MEMBER_LOGIN;
		logger.info("로그인화면 보여주기,idx={} ,1이면 회원",idx);
		model.addAttribute("idx",idx);
		return "member/login/memberLogin";
	}
	
	@RequestMapping(value="/forgotPwd.do",method = RequestMethod.GET)
	public void forgotPwd_view() {
		logger.info("비밀번호 찾기 화면 보여주기");
	}
	
	@RequestMapping(value="/forgotPwd.do",method = RequestMethod.POST)
	public String forgotPwd_post(@ModelAttribute MemberVO vo,Model model) {
		logger.info("비밀번호 찾기, 매개변수 vo={}",vo);
		logger.info("vo로 조회한 회원결과 bool={}",memServ.chkMember(vo));
		if(!memServ.chkMember(vo)) {
			model.addAttribute("msg","일치하는 아이디가 없습니다.");
			model.addAttribute("url","/member/login/forgotPwd.do");
			
			return "common/message";
		}
		model.addAttribute("email1",vo.getMemberEmail1());
		model.addAttribute("email2",vo.getMemberEmail1());
		return "member/login/validateKey";
	}
	
	@RequestMapping(value="/forgotId.do",method = RequestMethod.GET)
	public String forgotId_view() {
		logger.info("아이디 찾기 화면 보여주기");
		return "member/login/forgotId";
	}
	
	@RequestMapping(value="/forgotId.do",method = RequestMethod.POST)
	public String forgotId_POST(@ModelAttribute MemberVO vo,Model model) {
		logger.info("아이디 찾기, 매개변수 vo={}",vo);
		String memberId=memServ.selectMemberId(vo);
		logger.info("아이디 찾기 결과 memberId={}",memberId);

		model.addAttribute("memberId",memberId);
		return "member/login/gotId";
		//return "redirect:/member/login/gotId.do?memberId="+memberId;
	}
	
	@RequestMapping(value="/gotId.do")
	public void gotId(@RequestParam String memberId) {
		logger.info("memberId={}",memberId);
	}
	
}
