package com.project.fd.owner.controller;

import java.io.IOException;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.project.fd.common.FileUploadUtil;

import com.project.fd.owner.ownerregister.model.OwnerRegisterVO;

import com.project.fd.owner.store.model.OwnerStoresService;
import com.project.fd.owner.store.model.OwnerStoresVO;

@Controller
@RequestMapping("/owner/menu1")
public class OwnerStoresController {
	private static final Logger logger
	=LoggerFactory.getLogger(OwnerStoresController.class);
	
	@Autowired OwnerStoresService ownerStoresService;
	
	@Autowired private FileUploadUtil fileUtil;
	
	@RequestMapping("/index.do") 
	public void ownerMain() {
		logger.info("사장님 메인 화면 보여주기"); 
	}
	
	@RequestMapping("/launch/launchNext.do")
	 public void ownerlaunchNext() {
		 logger.info("점포 - 입점 약관 보여주기");
	 }
	 
	 @RequestMapping("/launch/launchRegister.do")
	 public void register_get() { //requestparam=>사업자등록했는지
		 logger.info("점포 - 입점 시작하기 보여주기");
	 }
	 
	 @RequestMapping("/launch/launch.do")
	 public void ownerlaunch() {
		 logger.info("점포 - 입점 메인 화면 보여주기");
	}
	 
	 
	 //입점신청 
	 @RequestMapping(value="/launch/launchRegister.do", method=RequestMethod.POST)
	 public String register_post(@ModelAttribute OwnerStoresVO ownerStoresVo,
			 HttpServletRequest request,
			 Model model) { 
		 logger.info("점포 - 입점하기  보여주기 OwnerStoresVO={}",ownerStoresVo);
		 
			//파일 업로드 처리
			String originName="", fileName="";
			long fileSize=0;
			try {
				List<Map<String, Object>> fileList
				=fileUtil.fileUplaod(request, FileUploadUtil.PDS_TYPE);
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
			logger.info("점포 입점 신청  처리 결과, cnt={}", cnt);

			//3
			return "redirect:/owner/menu2/basic.do";
		 
	 }
	

}
