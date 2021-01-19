package com.project.fd.controller;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.project.fd.common.Utility;
import com.project.fd.member.model.MemberService;
import com.project.fd.member.model.MemberVO;

@Controller
public class LoginController {
	
	@Autowired
	private static final Logger logger=LoggerFactory.getLogger(LoginController.class);
	
	@Autowired
	private MemberService memServ;
	
	@RequestMapping("/login.do")
	public String login(@RequestParam int idx,@RequestParam String userid,@RequestParam String pwd,@RequestParam String chkSave,
			HttpServletRequest request,HttpServletResponse response,Model model) {
		logger.info("로그인처리, idx={}",idx);
		HttpSession session=request.getSession();
		String msg="로그인 실패!",url="";
		if(idx==Utility.MEMBER_LOGIN) {
			logger.info("회원 로그인처리, 파라미터 userid={},pwd={}",userid,pwd);
			int cnt=memServ.loginChk(userid, pwd);
			if(cnt==MemberService.ID_NONE) {
				msg="아이디가 존재하지 않습니다.";
				url="/member/login/memberLogin.do";
			}else if(cnt==MemberService.PWD_DISAGREE) {
				msg="비밀번호가 일치하지 않습니다.";
				url="/member/login/memberLogin.do";
			}else if(cnt==MemberService.LOGIN_OK) {
				MemberVO vo=memServ.selectMember(userid);
				session.setAttribute("memberId", userid);
				session.setAttribute("memberName",vo.getMemberName());
				session.setAttribute("memberNo",vo.getMemberNo());
				session.setAttribute("authorityNo",vo.getAuthorityNo());
				session.setAttribute("locationNo",vo.getLocationNo());
				session.setAttribute("memberNo", vo.getMemberNo());
				
				//[2] cookie
				Cookie ck=new Cookie("ck_memberid", vo.getMemberId());
				ck.setPath("/");
				if(chkSave!=null) {
					ck.setMaxAge(1000*24*60*60);
				}else {
					ck.setMaxAge(0);
				}
				response.addCookie(ck);
				msg=vo.getMemberName()+"님, 로그인 되었습니다!";
				url="/member/index.do";
			}
		}else if(idx==Utility.OWNER_LOGIN) {
			/*
			logger.info("점주 로그인처리, 파라미터 userid={},pwd={}",userid,pwd);
			int cnt=memServ.loginChk(userid, pwd);
			if(cnt==MemberService.ID_NONE) {
				msg="아이디가 존재하지 않습니다.";
				url="/member/login/memberLogin.do";
			}else if(cnt==MemberService.PWD_DISAGREE) {
				msg="비밀번호가 일치하지 않습니다.";
				url="/member/login/memberLogin.do";
			}else if(cnt==MemberService.LOGIN_OK) {
				MemberVO vo=memServ.selectMember(userid);
				session.setAttribute("memberId", userid);
				session.setAttribute("memberName",vo.getMemberName());
				session.setAttribute("memberNo",vo.getMemberNo());
				session.setAttribute("authorityNo",vo.getAuthorityNo());
				session.setAttribute("locationNo",vo.getLocationNo());
				session.setAttribute("memberNo", vo.getMemberNo());
				
				//[2] cookie
				Cookie ck=new Cookie("ck_memberid", vo.getMemberId());
				ck.setPath("/");
				if(chkSave!=null) {
					ck.setMaxAge(1000*24*60*60);
				}else {
					ck.setMaxAge(0);
				}
				response.addCookie(ck);
				msg=vo.getMemberName()+"님, 로그인 되었습니다!";
				url="/member/index.do";
			}
			*/
		}else if(idx==Utility.ADMIN_LOGIN) {
			/*
			logger.info("점주 로그인처리, 파라미터 userid={},pwd={}",userid,pwd);
			int cnt=memServ.loginChk(userid, pwd);
			if(cnt==MemberService.ID_NONE) {
				msg="아이디가 존재하지 않습니다.";
				url="/member/login/memberLogin.do";
			}else if(cnt==MemberService.PWD_DISAGREE) {
				msg="비밀번호가 일치하지 않습니다.";
				url="/member/login/memberLogin.do";
			}else if(cnt==MemberService.LOGIN_OK) {
				MemberVO vo=memServ.selectMember(userid);
				session.setAttribute("memberId", userid);
				session.setAttribute("memberName",vo.getMemberName());
				session.setAttribute("memberNo",vo.getMemberNo());
				session.setAttribute("authorityNo",vo.getAuthorityNo());
				session.setAttribute("locationNo",vo.getLocationNo());
				session.setAttribute("memberNo", vo.getMemberNo());
				
				//[2] cookie
				Cookie ck=new Cookie("ck_memberid", vo.getMemberId());
				ck.setPath("/");
				if(chkSave!=null) {
					ck.setMaxAge(1000*24*60*60);
				}else {
					ck.setMaxAge(0);
				}
				response.addCookie(ck);
				msg=vo.getMemberName()+"님, 로그인 되었습니다!";
				url="/member/index.do";
			}
			*/
		}
		
		model.addAttribute("msg",msg);
		model.addAttribute("url",url);
		
		
		return "common/message";
	}
	
}
