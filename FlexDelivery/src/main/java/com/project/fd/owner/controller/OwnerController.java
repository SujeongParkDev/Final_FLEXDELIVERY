package com.project.fd.owner.controller;

import org.slf4j.Logger;


import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.project.fd.member.model.MemberVO;
import com.project.fd.owner.model.OwnerService;
import com.project.fd.owner.model.OwnerVO;


@Controller
@RequestMapping("/owner")
public class OwnerController {
	
	private static final Logger logger
	=LoggerFactory.getLogger(OwnerController.class);
	
	@Autowired
	OwnerService ownerService;

	//회원가입 화면 보여주기 (점포)
	@RequestMapping("/register/register.do")
	public void register(){
		
		logger.info("회원가입 화면 보여주기");
	}
	
	
	
	//회원정보 등록
	@RequestMapping("/ownerWrite.do")
	public String write(@ModelAttribute OwnerVO vo, ModelMap model) {
		//1
		logger.info("회원가입 처리 파라미터 vo={}", vo);

		//2
		String hp1=vo.getOwnerHp1();
		String hp2=vo.getOwnerHp2();
		String hp3=vo.getOwnerHp3();

		if(hp2==null || hp2.isEmpty() || hp3==null || hp3.isEmpty()) {
			hp1="";
			hp2="";
			hp3="";
		}
		vo.setOwnerHp1(hp1);
		vo.setOwnerHp2(hp2);
		vo.setOwnerHp3(hp3);


		int cnt=ownerService.insertowner(vo);
		logger.info("회원가입 결과, cnt={}", cnt);
		
		String msg="회원가입 실패!", url="/owner/register/register.do";
		if(cnt>0) {
			msg="회원가입되었습니다.";
			url="/owner/index.do";
		}
		
		//3		
		model.addAttribute("msg", msg);
		model.addAttribute("url", url);
		
		//4
		return "common/message";
	}
	
	
	
	//회원 중복확인
	@RequestMapping("/register/checkId.do")
	public String checkId(@RequestParam String ownerId,
			@RequestParam String type,
			Model model) {
		//1
		logger.info("아이디 중복확인, 파라미터 ownerId={}, type={}",ownerId, type);

		//2
		int result=0;
		if( ownerId!=null && !ownerId.isEmpty()) {
			if(type.equals("owner")) {  //일반 사용자 아이디 중복확인
				result=ownerService.checkDup(ownerId);
			} /*
				 * else { //admin - 관리자 아이디 중복확인 result=managerService.dupCheck(userid); }
				 */
			logger.info("아이디 중복확인 결과, result={}", result);
		}

		//3
		model.addAttribute("result", result);
		model.addAttribute("EXIST_ID", OwnerService.EXIST_ID);
		model.addAttribute("NON_EXIST_ID", OwnerService.NON_EXIST_ID);

		//4
		return "/owner/register/checkId";
	}

	
	
	//관리자, 점포 공통 뷰 보여주기(점포)
	@RequestMapping("/index.do")
	public void index(){
		logger.info("점포 공통 뷰 보여주기");
	
	}
	
	//공지사항 보여주기
	@RequestMapping("/menu3/notice.do")
	public void notice(){
		logger.info("공지사항 보여주기 ");
	
	}
	
	//관리자, 점포 공통 뷰 보여주기(점포)
	@RequestMapping("/menu3/event.do")
	public void event(){
		logger.info("이벤트 보여주기");
	
	}
	
	//관리자, 점포 공통 뷰 보여주기(점포)
	@RequestMapping("/menu3/honeyTip.do")
	public void honeyTip(){
		logger.info("사장님 꿀팁 보여주기");
	
	}
	
	//플렉스 소개 뷰 보여주기(점포)
	@RequestMapping("/menu4/introduce.do")
	public void introduce(){
		logger.info("플렉스 소개 뷰 보여주기");
	
	}
	
	//내점포 메인 뷰 보여주기(점포)
	@RequestMapping("/menu2/myStoreIndex.do")
	public void myStoreIndex(){
		logger.info("내점포 메인 뷰 보여주기");
	
	}
	
	//faq 뷰 보여주기 (점포)
	@RequestMapping("/menu5/faq.do")
	public void faq(){
		logger.info("faq 뷰 보여주기");
	
	}
	

	
	
		
		
}
