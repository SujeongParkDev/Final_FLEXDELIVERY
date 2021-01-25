package com.project.fd.member.controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.project.fd.admin.largecategory.model.AdminLargeCategoryService;
import com.project.fd.admin.largecategory.model.AdminLargeCategoryVO;
import com.project.fd.member.model.MemberService;
import com.project.fd.member.model.MemberVO;

@Controller
@RequestMapping("/member")
public class MemberController {
	private static final Logger logger
		=LoggerFactory.getLogger(MemberController.class);

	@Autowired private MemberService memberService;
	@Autowired private AdminLargeCategoryService lCategoryServ;
	
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
	
	
	@RequestMapping("/member.do")
	public String membermainjw() {
		logger.info("회원 메인 보여주기");
		
		return "member/member";
	}
	
	@RequestMapping("/index.do")
	public String memberIndex(Model model) {
		logger.info("회원 메인화면 보여주기");
		List<AdminLargeCategoryVO> list=lCategoryServ.selectAll();
		logger.info("list.size={}",list.size());
		model.addAttribute("list",list);
		return "member/index";
	}
	
	@ResponseBody
	@RequestMapping("/ajaxCheckId.do")
	public boolean ajaxCheckId(@RequestParam String userid) {
		logger.info("ajax 이용-아이디 중복확인, userid={}", userid);
		
		boolean bool=false;
		int result=memberService.checkDup(userid);
		logger.info("아이디 중복확인 결과, result={}", result);
		
		if(result==MemberService.EXIST_ID) {
			bool=true;  //이미 존재
		}else if(result==MemberService.NON_EXIST_ID) {
			bool=false;	//사용 가능		
		}
		
		return bool;
	}

	
	@RequestMapping("/sidebarList.do")
	public String sidebarList(Model model) {
		logger.info("사이드바 대분류출력");
		List<AdminLargeCategoryVO> list=lCategoryServ.selectAll();
		model.addAttribute("list",list);
		return "memInc/sidebarList";
	}
	
}
