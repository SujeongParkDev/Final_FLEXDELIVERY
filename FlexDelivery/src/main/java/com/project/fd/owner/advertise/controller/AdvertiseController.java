package com.project.fd.owner.advertise.controller;

import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.project.fd.owner.advertise.model.AdvertiseService;
import com.project.fd.owner.advertise.model.AdvertiseVO;
import com.project.fd.owner.advertise.model.StoreAdVO;

@Controller
@RequestMapping("/owner/menu2/advertise")
public class AdvertiseController {
	@Autowired
	private static final Logger logger
		=LoggerFactory.getLogger(AdvertiseController.class);
	
	@Autowired 
	private AdvertiseService advertiseService;
	
	
	//테스트용
		@RequestMapping(value = "/test.do", method = RequestMethod.GET) 
		public String test_get() {
			logger.info("test 창 보여주기");
			
			return "owner/menu2/advertise/test";
		}
		
		
		
		
		
		
	//advertiseOngoin.jsp 를 포함한 advertiseMain 을 보여주기위한 창
	@RequestMapping(value = "/advertiseMain.do", method = RequestMethod.GET) 
	public String advertiseMain_get() {
		logger.info("advertiseMain 창 보여주기");
		
		return "owner/menu2/advertise/advertiseMain";
	}
	
	//광고등록을 누를 시 받아오면 pwd 확인용 창을 보내기위함
	@RequestMapping("/advertisePwdCheck.do") 
	public String advertisePwdCheck(HttpSession session) {
		String ownerid=(String) session.getAttribute("ownerid");
		//체크
	    //확인후 실패시 돌려보내기 
		logger.info("advertisePwdCheck 창 보여주기");	
		
		return "owner/menu2/advertise/advertisePwdCheck";
	}
	
	
	//pwd 누르면 choice 창 보여주기
	@RequestMapping(value="/advertiseChoice.do", method = RequestMethod.GET) 
	public String advertiseChoice() {
		logger.info("advertiseChoice 창 보여주기");
		
		return "owner/menu2/advertise/advertiseChoice";
	}
	
	
	//choice 누르면 등록창 가진다.
	@RequestMapping(value="/advertiseWrite.do", method = RequestMethod.GET) 
	public String advertiseWrite_get(@RequestParam String choice, Model model) {
		logger.info("advertiseWrite 창 보여주기, 파라미터 choice={}",choice);
		//오늘날짜
		Date date = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		String today = sdf.format(date);
		
		
		//write 에서 choice를 제목에 박아주기
		
		model.addAttribute("today", today);
		
		return "owner/menu2/advertise/advertiseWrite";
	}
		
	//광고신청 누를시 신청함 insert
	@RequestMapping(value="/advertiseWrite.do", method = RequestMethod.POST) 
	public String advertiseWrite_post(@ModelAttribute AdvertiseVO advertiseVo) {
		logger.info("advertiseWrite 등록, 파라미터 advertiseVo={}",advertiseVo);
		
		//insert
		
		return "redirect:/owner/menu2/advertise/advertiseMain.do";
	}

	
	//main에서 탭의 만료버튼 누르면 나옵니다.
	@RequestMapping(value="/advertiseExpire.do", method = RequestMethod.GET) 
	public String advertiseExpire_get() {
		logger.info("advertiseExpire 화면 보여주기");
		
		//insert 를 where 만료된걸 검색 해서 뿌리면 되지
		
		return "owner/menu2/advertise/advertiseExpire";
	}
	
	//main에서 탭의 만료버튼 누르면 나옵니다.
	@RequestMapping(value="/advertiseExpire.do", method = RequestMethod.POST) 
	public String advertiseExpire_post() {
		logger.info("advertiseExpire 화면 보여주기");
		
		//insert 를 where 만료된걸 검색 해서 뿌리면 되지
		//post 라서 where 날짜도 검색해야합니다..
		
		return "owner/menu2/advertise/advertiseExpire";
	}
		 
}
