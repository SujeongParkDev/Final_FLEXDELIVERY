package com.project.fd.member.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.project.fd.member.model.MemberService;
import com.project.fd.member.model.MemberVO;

@Controller
@RequestMapping("/member")
public class MemberController {
	private static final Logger logger
		=LoggerFactory.getLogger(MemberController.class);

	@Autowired private MemberService memberService;
	
	@RequestMapping("/register/register.do")
	public String register(){
		logger.info("회원가입 화면 보여주기");
		
		return "member/register/register";
	}
	
	@RequestMapping("/memberWrite.do")
	public String write(@ModelAttribute MemberVO vo, @RequestParam String email3,
			ModelMap model) {
		//1
		logger.info("회원가입 처리 파라미터 vo={}", vo);

		//2
		String hp1=vo.getMemberHp1();
		String hp2=vo.getMemberHp2();
		String hp3=vo.getMemberHp3();

		if(hp2==null || hp2.isEmpty() || hp3==null || hp3.isEmpty()) {
			hp1="";
			hp2="";
			hp3="";
		}
		vo.setMemberHp1(hp1);
		vo.setMemberHp2(hp2);
		vo.setMemberHp3(hp3);

		String email1=vo.getMemberEmail1();
		String email2=vo.getMemberEmail2();
		if(email1==null || email1.isEmpty()) {
			email1="";
			email2="";
		}else {
			if(email2.equals("etc")) {
				if(email3==null || email3.isEmpty()) {
					email1="";
					email2="";
				}else {
					email2=email3;
				}
			}
		}

		vo.setMemberEmail1(email1);
		vo.setMemberEmail2(email2);

		int cnt=memberService.insertMember(vo);
		logger.info("회원가입 결과, cnt={}", cnt);
		
		String msg="회원가입 실패!", url="/member/register.do";
		if(cnt>0) {
			msg="회원가입되었습니다.";
			url="/index.do";
		}
		
		//3		
		model.addAttribute("msg", msg);
		model.addAttribute("url", url);
		
		//4
		return "common/message";
	}
	
	
	@RequestMapping("/store/storeDetail.do")
	public String store() {
		logger.info("점포 화면 보여주기");
		
		return "member/store/storeDetail";
	}
	
	@RequestMapping("/member.do")
	public String membermainjw() {
		logger.info("회원 메인 보여주기");
		
		return "member/member";
	}
	
	@RequestMapping("/index.do")
	public String memberIndex() {
		logger.info("회원 메인화면 보여주기");
		
		return "member/index";
	}
	
	@RequestMapping("/store/storeList.do")
	public void storeList() {
		logger.info("점포 리스트 보여주기");
	}
	
	
	
	
}
