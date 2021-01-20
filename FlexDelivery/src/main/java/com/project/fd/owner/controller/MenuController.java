package com.project.fd.owner.controller;

import org.slf4j.Logger;

import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.project.fd.owner.menu.model.MenuService;

@Controller
@RequestMapping("/owner/menu2/foodmenu")
public class MenuController {
	@Autowired
	private static final Logger logger
		=LoggerFactory.getLogger(MenuController.class);
	
	@Autowired
	MenuService menuService;
	
	
	//내점포 사이드바에서 메뉴관리 누르면 보내짐
	//현재메뉴 버튼 누르면 보내짐
	@RequestMapping(value = "/menuMain.do", method = RequestMethod.GET) 
	public String menuMain_get(@RequestParam(defaultValue = "0") int no) {
		logger.info("menuMain 창 보여주기 파라미터 no={}",no);
		//=>Q.점포 번호가 필요합니다. 세션으로 두는게 편할까??
	
		
		// 전체 메뉴 값을 가져와야해서 점포 번호에 해당하는 메뉴랑 메뉴 옵션 을 가져와야해요 그래서 view 로 합침
		//select 는 뷰로 가능하니까.
		//select~~
		
		return "owner/menu2/foodmenu/menuMain";
	}
	
	
	//main에서 제목누르면 Detail로 오픈창 띄워짐
	@RequestMapping(value = "/menuDetail.do", method = RequestMethod.GET) 
	public String menuDetail_get(@RequestParam(defaultValue = "0") int no) {
		logger.info("menuDetail 창 보여주기 파라미터 no={}",no);
		
		//받아온 no으로 전체 메뉴뷰에대한 조회 필요하다.
		
		return "owner/menu2/foodmenu/menuDetail";
	}
	
	
//menuGroup.jsp
	//메뉴편집 버튼 누르면  menuGroup보여주기
		@RequestMapping(value = "/menuGroup.do", method = RequestMethod.GET) 
		public String  menuGroup_get(){
			logger.info("menuGroup 창 보여주기 ");
			
			
			return "owner/menu2/foodmenu/menuGroup";
		}
	
		//menuGroup 에서 수정버튼누르면 메뉴 그룹 수정
		@RequestMapping(value = "/menuGroupEdit.do", method = RequestMethod.GET) 
		public String  menuGroup_edit(@RequestParam(defaultValue = "0") int sMGroupNo){
			logger.info("menuGroup 수정하기 , 파라미터 sMGroupNo={}", sMGroupNo);
			
			//받아온 menuNo으로 update 하기 (점포 번호도 필요)
			
			
			return "redirect:/owner/menu2/foodmenu/menuGroup.do";
		}
	
		
	 //menuGroup 에서 삭제버튼누르면 메뉴 그룹 삭제
		@RequestMapping(value = "/menuGroupDelete.do", method = RequestMethod.GET) 
		public String  menuGroup_delete(@RequestParam(defaultValue = "0") int sMGroupNo){
			logger.info("menuGroup 삭제하기 , 파라미터 sMGroupNo={}",sMGroupNo);
			
			//받아온 menuNo으로 delete 하기 (점포 번호도 필요)
			
			
			return "owner/menu2/foodmenu/menuGroup";
		} 
		
	//menuGroup 에서 등록 버튼 누르면 메뉴 그룹 입력창 보여주기
		@RequestMapping(value = "/menuGroupWrite.do", method = RequestMethod.GET) 
		public String  menuGroup_write_get(@RequestParam(required = false) String sMGroupName){
			logger.info("menuGroup 등록하기 , 파라미터 sMGroupName={}",sMGroupName);
			
			//점포번호로 menugroup param보내기

			if(sMGroupName==null || sMGroupName.isEmpty() ) {
				return "owner/menu2/foodmenu/menuGroupWrite";
			}else {
				//insert 하기 넘어온 값으로
				return "redirect:/owner/menu2/foodmenu/menuGroup.do";
			
			}
		}
		
		
	
		
		
		
		
	//옵션편집 버튼 누르면  menuOption.jsp
		@RequestMapping(value = "/menuOption.do", method = RequestMethod.GET) 
		public String  menuOptionGroup_get(){
			logger.info("menuOption 창 보여주기 ");
			
			
			return "owner/menu2/foodmenu/menuOption";
		}
	
	//대표메뉴버튼 누르면  signatureMenu.jsp
		@RequestMapping(value = "/signatureMenu.do", method = RequestMethod.GET) 
		public String  signatureMenu_get(){
			logger.info("signatureMenu 창 보여주기 ");
			
			
			return "owner/menu2/foodmenu/signatureMenu";
		}
		
		
//menuChoice.jsp
	 //대표메뉴버튼 누르면  menuChoice 보여주기 
		@RequestMapping(value = "/menuChoice.do", method = RequestMethod.GET) 
		public String  menuChoice_get(@RequestParam(defaultValue = "0") int sMGroupNo){
			logger.info("menuChoice 창 보여주기 ");
			
			
			//받아온 no 으로 메뉴 no 구하기 , 점포 번호도 받아와햐한다.
			
			return "owner/menu2/foodmenu/menuChoice";
		}
	
	//menuchoice 에서 수정버튼누르면 메뉴 수정
		@RequestMapping(value = "/menuChoiceEdit.do", method = RequestMethod.GET) 
		public String  menuChoice_edit(@RequestParam(defaultValue = "0") int menuNo){
			logger.info("menu 수정하기 , 파라미터 menuNo={}", menuNo);
			
			//받아온 menuNo으로 update 하기 (점포 번호도 필요)
			
			
			return "owner/menu2/foodmenu/menuChoice";
		}
	
		
	 //menuchoice 에서 삭제버튼 누르면 메뉴 삭제
		@RequestMapping(value = "/menuChoiceDelete.do", method = RequestMethod.GET) 
		public String  menuChoice_delete(@RequestParam(defaultValue = "0") int menuNo){
			logger.info("menu 삭제하기 , 파라미터 menuNo={}", menuNo);
			
			//받아온 menuNo으로 delete 하기 (점포 번호도 필요)
			
			
			return "owner/menu2/foodmenu/menuChoice";
		}
	
	//menuGroup 에서 등록버튼 누르면 메뉴 입력
		@RequestMapping(value = "/menuChoiceWrite.do", method = RequestMethod.GET) 
		public String  menuChoice_write(){
			logger.info("menuChoice 등록하기 ");
			
			//점포번호로 menuName insert하기
			//만약 같은 이름이 있다면 등록못함
			
			
			return "owner/menu2/foodmenu/menuChoiceWrite";
		}
		
				
}
