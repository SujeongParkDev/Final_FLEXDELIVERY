package com.project.fd.owner.controller;


import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
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

import com.project.fd.owner.common.OwnerFileUploadUtil;
import com.project.fd.owner.menu.model.OwnerMenuAllVO;
import com.project.fd.owner.menu.model.OwnerMenuOptionAllVO;
import com.project.fd.owner.menu.model.OwnerMenuService;
import com.project.fd.owner.menu.model.OwnerMenuVO;
import com.project.fd.owner.menu.model.OwnerStoreMenuGroupVO;

//메뉴 옵션 할차례 / 그리고 menu delete edit 할때 그자리로 가게끔하는게 필요하다.. ajax
@Controller
@RequestMapping("/owner/menu2/foodmenu")
public class OwnerMenuController {
	@Autowired
	private static final Logger logger
		=LoggerFactory.getLogger(OwnerMenuController.class);
	
	@Autowired
	private OwnerMenuService ownerMenuService;
	
	
	
	 @Autowired private OwnerFileUploadUtil fileUtil;
	
	
	//내점포 사이드바에서 메뉴관리 누르면 보내짐
	//현재메뉴 버튼 누르면 보내짐
	@RequestMapping(value = "/menuMain.do", method = RequestMethod.GET) 
	public String menuMain_get(HttpSession session, Model model) {
		int storeNo=0;
		
		String msg="점포가 없습니다.", url="/owner/index.do";
		if(session.getAttribute("storeNo")==null) {
			model.addAttribute("msg",msg);
			model.addAttribute("url",url);
			return "common/message";
			
		}else {
			storeNo= (Integer)session.getAttribute("storeNo");
		}
		
		logger.info("menuMain 창 보여주기 파라미터 no={}",storeNo);
		//=>Q.점포 번호가 필요합니다. 세션으로 두는게 편할까??
		
		List<OwnerMenuAllVO> list = null;
		list = ownerMenuService.selectMenuAllView(storeNo);
		logger.info("메뉴 전체 값 조회 결과 list.size ={}" , list.size() );
		
		model.addAttribute("list",list);
		
		return "owner/menu2/foodmenu/menuMain";
	}
	
	
	//main에서 제목누르면 Detail로 오픈창 띄워짐
	@RequestMapping(value = "/menuDetail.do", method = RequestMethod.GET) 
	public String menuDetail_get(@RequestParam(defaultValue = "0") int menuNo,  Model model,HttpServletRequest request) {
		logger.info("menuDetail 창 보여주기 파라미터 no={}",menuNo);
		
		
		//전체 메뉴 구하기
		OwnerMenuAllVO ownerMenuAllVo  = ownerMenuService.selectMenuViewBymenuNo(menuNo);
		logger.info("번호로 검색한 메뉴 전체 조회 결과  ownerMenuAllVo={}" , ownerMenuAllVo );
		
		
		//현재 파일이 인터넷 url 인지 파일 업로드한 url 인지 확인위해서
		String upPath 
		= fileUtil.getUploadPath(OwnerFileUploadUtil.OWNER_MENU_TYPE, request);
		File nowFile = new File(upPath, ownerMenuAllVo.getMenuImg());
		boolean bool = false;
		if(nowFile.exists()) {
			bool=true;
			logger.info("기존 파일 존재 여부 :{}", bool);
		}
		
		
		//전체 옵션 구하기
		List<OwnerMenuOptionAllVO> list=null;
		list = ownerMenuService.selectMenuOptionAllView(menuNo);
		logger.info("번호로 검색한 메뉴 옵션 전체 조회 결과  list.size={}" , list.size() );
		
		
		model.addAttribute("menuAllVo" , ownerMenuAllVo);
		model.addAttribute("list" , list);	
		model.addAttribute("bool",bool);
		
		return "owner/menu2/foodmenu/menuDetail";
	}
	
	
//menuGroup.jsp
	//메뉴편집 버튼 누르면  menuGroup보여주기
		@RequestMapping(value = "/menuGroup.do", method = RequestMethod.GET) 
		public String  menuGroup_get(HttpSession session, Model model){
			int storeNo=0;
			
			String msg="점포가 없습니다.", url="/owner/index.do";
			if(session.getAttribute("storeNo")==null) {
				model.addAttribute("msg",msg);
				model.addAttribute("url",url);
				return "common/message";
				
			}else {
				storeNo= (Integer)session.getAttribute("storeNo");
			}
			logger.info("menuGroup 창 보여주기 , 파라미터 = {} ", storeNo);
			
			//전체 메뉴 그룹 구하기
			List<OwnerStoreMenuGroupVO> list = null;
			list = ownerMenuService.selectMenuGroupByNo(storeNo);
			logger.info("번호로 검색한 메뉴 그룹 리스트 전체 조회 결과  list.size={}" , list.size() );
			
			
			model.addAttribute("list" , list);
			
			return "owner/menu2/foodmenu/menuGroup";
		}
	
		
		
		
		//menuGroup 에서 수정버튼누르면 메뉴 그룹 수정
		@RequestMapping(value = "/menuGroupEdit.do", method = RequestMethod.GET) 
		public String  menuGroupEdit_get(@RequestParam(defaultValue = "0") int sMGroupNo , 
					 Model model ){
			logger.info("menuGroup 수정하기 화면 보여주기 , 파라미터 storeMenuGroupVo={}", sMGroupNo);
			
			//받아온 menuNo으로 update 하기 (점포 번호도 필요)
			
			OwnerStoreMenuGroupVO vo = ownerMenuService.selectMenuGroupByGroupNo(sMGroupNo);
			logger.info("번호로 검색한 메뉴 그룹 전체 조회 결과  vo={}" , vo);
			
			
	
			model.addAttribute("vo" , vo);
		
			return "owner/menu2/foodmenu/menuGroupEdit";
		}
		
		
		//menuGroup 에서 수정버튼누르면 메뉴 그룹 수정
			@RequestMapping(value = "/menuGroupEdit.do", method = RequestMethod.POST) 
			public String  menuGroupEdit_post(@ModelAttribute OwnerStoreMenuGroupVO ownerStoreMenuGroupVo, 
						Model model ){
				logger.info("menuGroup 수정하기 , 파라미터 OwnerStoreMenuGroupVO={}", ownerStoreMenuGroupVo);
				
				//받아온 menuNo으로 update 하기 (점포 번호도 필요)
				
				int cnt = ownerMenuService.updateMenuGroupByNo(ownerStoreMenuGroupVo);
				logger.info("번호로 메뉴그룹 업데이트 결과 cnt = {}", cnt);
				
				int YorN = OwnerMenuService.FAIL_POST;
				if(cnt>0){
					 YorN = OwnerMenuService.SUCCESS_POST;
				}
				
				model.addAttribute("YorN", YorN);
					
			
					
				return "owner/menu2/foodmenu/menuGroupEdit";
			}
	
		
			
			
	 //menuGroup 에서 삭제버튼누르면 메뉴 그룹 삭제
		@RequestMapping(value = "/menuGroupDelete.do", method = RequestMethod.GET) 
		public String  menuGroup_delete(@RequestParam(defaultValue = "0") int sMGroupNo, Model model){
			logger.info("menuGroup 삭제하기 , 파라미터 sMGroupNo={}",sMGroupNo);
			
			//받아온 menuNo으로 delete 하기 (점포 번호도 필요)
			int cnt = ownerMenuService.deleteMenuGroupByNo(sMGroupNo);
			logger.info("번호로 메뉴그룹 삭제 결과 cnt = {}", cnt);
			
			
			String msg="삭제 실패!" , url="/owner/menu2/foodmenu/menuGroup.do";
			
			if(cnt>0) {
				msg="삭제 성공!";
			}
			
			model.addAttribute("msg", msg);
			model.addAttribute("url", url);
		
			return "common/message";
		} 
		
		
		
		
	//menuGroup 에서 등록 버튼 누르면 메뉴 그룹 입력창 보여주기
		@RequestMapping(value ="/menuGroupWrite.do", method = RequestMethod.GET) 
		public String  menuGroup_write_get(HttpSession session, Model model){

			int storeNo=0;
			
			String msg="점포가 없습니다.", url="/owner/index.do";
			if(session.getAttribute("storeNo")==null) {
				model.addAttribute("msg",msg);
				model.addAttribute("url",url);
				return "common/message";
				
			}else {
				storeNo= (Integer)session.getAttribute("storeNo");
			}
			
		
			logger.info("menuGroup 등록하기창 보여주기 파라미터 storeNo={}",storeNo);
			
			model.addAttribute("storeNo",storeNo);
			return "owner/menu2/foodmenu/menuGroupWrite";
		}
		
		
		
		
	//menugroupwirte 에서 등록누르면 post 로 입력해주기
		@RequestMapping(value ="/menuGroupWrite.do", method = RequestMethod.POST) 
		public String  menuGroup_write_post(@ModelAttribute OwnerStoreMenuGroupVO ownerStoreMenuGroupVo, Model model){
			logger.info("menuGroup 입력하기 OwnerStoreMenuGroupVO = {}",ownerStoreMenuGroupVo);
			
			int cnt = ownerMenuService.insertMenuGroup(ownerStoreMenuGroupVo);
			logger.info("menuGroup 입력 결과 cnt = {}",cnt);
			
			int YorN = OwnerMenuService.FAIL_POST;
			if(cnt>0){
				 YorN = OwnerMenuService.SUCCESS_POST;
			}
			
			model.addAttribute("YorN", YorN);
				
			return "owner/menu2/foodmenu/menuGroupWrite";
		}

		
	
	//menuChoice.jsp
	 //대표메뉴버튼 누르면  menuChoice 보여주기 
		@RequestMapping(value = "/menuChoice.do", method = RequestMethod.GET) 
		public String  menuChoice_get(@ModelAttribute OwnerStoreMenuGroupVO vo,
							HttpSession session, Model model){
			int storeNo=0;
			
			String msg="점포가 없습니다.", url="/owner/index.do";
			if(session.getAttribute("storeNo")==null) {
				model.addAttribute("msg",msg);
				model.addAttribute("url",url);
				return "common/message";
				
			}else {
				storeNo= (Integer)session.getAttribute("storeNo");
			}
			
			logger.info("menuChoice 창 보여주기, 파라미터 vo={} , storeNo={} ", vo, storeNo);
			
			vo.setStoreNo(storeNo);
			
			List<OwnerMenuAllVO> list = null;
			list = ownerMenuService.selectMenuViewBymenuGroupNo(vo);
		
			model.addAttribute("list", list);
			model.addAttribute("sMGroupNo",vo.getsMGroupNo());
			//받아온 no 으로 메뉴 no 구하기 , 점포 번호도 받아와햐한다.
			
			return "owner/menu2/foodmenu/menuChoice";
		}
	
	//menuchoice 에서 수정버튼누르면 메뉴 수정
		@RequestMapping(value = "/menuChoiceEdit.do", method = RequestMethod.GET) 
		public String  menuChoice_edit(@RequestParam(defaultValue = "0") int menuNo){
			logger.info("menu 수정하기 , 파라미터 menuNo={}", menuNo);
			
			//받아온 menuNo으로 update 하기 (점포 번호도 필요)
			
			
			return "owner/menu2/foodmenu/menuChoiceEdit";
		}
	
		
	 //menuchoice 에서 삭제버튼 누르면 메뉴 삭제
		@RequestMapping(value = "/menuChoiceDelete.do", method = RequestMethod.GET) 
		public String  menuChoice_delete(@RequestParam(defaultValue = "0") int menuNo,Model model){
			logger.info("menu 삭제하기 , 파라미터 menuNo={}", menuNo);
			
			//받아온 menuNo으로 delete 하기 (점포 번호도 필요)
			int cnt = ownerMenuService.deleteMenuByNo(menuNo);
			logger.info("번호로 메뉴그룹 삭제 결과 cnt = {}", cnt);
			
			
			String msg="삭제 실패!" , url="/owner/menu2/foodmenu/menuChoice.do";
			
			if(cnt>0) {
				msg="삭제 성공!";
			}
			
			model.addAttribute("msg", msg);
			model.addAttribute("url", url);
		
			return "common/message";
		} 
		
		
	//menuChoice 에서 등록버튼 누르면 메뉴 입력
		@RequestMapping(value = "/menuChoiceWrite.do", method = RequestMethod.GET) 
		public String  menuChoice_write(HttpSession session,Model model,
					@RequestParam (defaultValue = "0") int sMGroupNo){
			
			int storeNo=0;
			
			String msg="점포가 없습니다.", url="/owner/index.do";
			if(session.getAttribute("storeNo")==null) {
				model.addAttribute("msg",msg);
				model.addAttribute("url",url);
				return "common/message";
				
			}else {
				storeNo= (Integer)session.getAttribute("storeNo");
			}
			
			logger.info("menuWrite 등록하기 창 보여주기,  파라미터 storeNo={} ", storeNo);
			
			List<OwnerStoreMenuGroupVO> list = null;
			list = ownerMenuService.selectMenuGroupByNo(storeNo);
			//점포번호로 menuName insert하기
			
			
			
			
			//만약 같은 이름이 있다면 등록못하게 수정해야함
			model.addAttribute("sMGroupNo",sMGroupNo);
			model.addAttribute("storeNo",storeNo);
			model.addAttribute("list", list);
		
			
			
			return "owner/menu2/foodmenu/menuChoiceWrite";
		}
		
		
		

	
		//메뉴 등록 하기
		@RequestMapping(value = "/menuChoiceWrite.do", method = RequestMethod.POST)
		public String menuChoice_Write_Post(@ModelAttribute OwnerMenuVO vo,
				HttpServletRequest request, 
				Model model) {
			logger.info("메뉴 등록 처리, 파라미터 vo={}", vo);
			
			//파일 업로드
			List<Map<String, Object>> list=null;
			String imageUrl="";
			try {
				list=fileUtil.fileUplaod(request, OwnerFileUploadUtil.OWNER_MENU_TYPE);
				for(Map<String, Object> map: list) {
					imageUrl=(String) map.get("fileName");
				}
			} catch (IllegalStateException e) {
				e.printStackTrace();
			} catch (IOException e) {
				e.printStackTrace();
			}
			
			vo.setMenuImg(imageUrl);
			
			//2
			int cnt=ownerMenuService.insertMenu(vo);
			logger.info("메뉴 등록 경과, 파라미터 vo={}, 결과값  cnt={}", vo,cnt);
			
			int YorN = OwnerMenuService.FAIL_POST;
			if(cnt>0){
				 YorN = OwnerMenuService.SUCCESS_POST;
			}
			

			//3
			model.addAttribute("YorN", YorN);
		
		
			return "owner/menu2/foodmenu/menuChoiceWrite";
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
		
		

				
}
