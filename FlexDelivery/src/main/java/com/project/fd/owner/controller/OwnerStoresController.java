package com.project.fd.owner.controller;

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

import com.project.fd.admin.largecategory.model.AdminLargeCategoryService;
import com.project.fd.admin.largecategory.model.AdminLargeCategoryVO;
import com.project.fd.common.FileUploadUtil;
import com.project.fd.owner.common.LocationVO;
import com.project.fd.owner.store.model.OwnerStoresService;
import com.project.fd.owner.store.model.OwnerStoresVO;

@Controller
@RequestMapping("/owner/menu1")
public class OwnerStoresController {
	private static final Logger logger
	=LoggerFactory.getLogger(OwnerStoresController.class);
	
	@Autowired OwnerStoresService ownerStoresService;
	
	@Autowired private FileUploadUtil fileUtil;
	
	@Autowired private AdminLargeCategoryService adminlarge;
	
	@RequestMapping("/index.do") 
	public void ownerMain() {
		logger.info("사장님 메인 화면 보여주기"); 
	}
	
	@RequestMapping("/launch/launchNext.do")
	 public String ownerlaunchNext(Model model) {
		 logger.info("점포 - 입점 약관 보여주기");
		 // 지역코드번호
		List<LocationVO> location=ownerStoresService.AllLocaion();
			 
		 // 대분류 카테고리 
		 List<AdminLargeCategoryVO> large=adminlarge.selectAll();
		 logger.info("result large.size={}",large.size());
			model.addAttribute("location", location);
			model.addAttribute("large", large);
			
			return "owner/menu1/launch/launchNext";
	 }
	 
	 @RequestMapping("/launch/launchRegister.do")
	 public void register_get(Model model) { //requestparam=>사업자등록했는지
		 logger.info("점포 - 입점 시작하기 보여주기");
		 
		
	 }
	 
	 @RequestMapping("/launch/launch.do")
	 public void ownerlaunch() {
		 logger.info("점포 - 입점 메인 화면 보여주기");
	}
	 
	 
	 //입점신청 
	 @RequestMapping(value="/launch/launchRegister.do", method=RequestMethod.POST)
	 public String register_post(@ModelAttribute OwnerStoresVO ownerStoresVo,
			 HttpServletRequest request, HttpSession session,
			 Model model) { 
		 int ownerNo=(Integer)session.getAttribute("ownerNo");
		logger.info("입점신청 세션의 ownerNo={}"+ownerNo);
		ownerStoresVo.setOwnerNo(ownerNo);
		// int oRegisterNo=(Integer)session.getAttribute("oRegisterNo");
		// logger.info("입점신청 세션의 oRegisterNo={}"+oRegisterNo);
		 
		 logger.info("점포 - 입점하기  보여주기 OwnerStoresVO={}",ownerStoresVo);
		 
			//파일 업로드 처리
			String originName="", fileName="";
			long fileSize=0;
			try {
				List<Map<String, Object>> fileList
				=fileUtil.fileUplaod(request, FileUploadUtil.OWNER_REGISTER_TYPE);
				for(Map<String, Object> fileMap : fileList) {
					originName=(String) fileMap.get("originalFileName");
					fileName=(String) fileMap.get("fileName");
					fileSize=(Long)fileMap.get("fileSize");				
				}//for
			} catch (IllegalStateException e) {
				logger.info("파일 업로드 실패!");
				e.printStackTrace();
			} catch (IOException e) {
				logger.info("파일 업로드 실패!");
				e.printStackTrace();
			}

			//2
			ownerStoresVo.setStoreLogo(originName);

			int cnt=ownerStoresService.insertOwnerStores(ownerStoresVo);
			logger.info("점포 입점 신청  처리 결과, cnt={},originName={}", cnt,originName);

			//3
			return "redirect:/owner/menu2/basic.do";
		 
	 }
	

}
