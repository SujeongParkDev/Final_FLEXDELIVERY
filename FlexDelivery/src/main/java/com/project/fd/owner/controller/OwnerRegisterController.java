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
import com.project.fd.owner.ownerregister.model.OwnerRegisterService;
import com.project.fd.owner.ownerregister.model.OwnerRegisterVO;

@Controller
@RequestMapping("/owner/menu1")
public class OwnerRegisterController {
	private static final Logger logger
	=LoggerFactory.getLogger(OwnerStoresController.class);
	
	@Autowired private OwnerRegisterService ownerRegisterService;
	
	@Autowired
	private FileUploadUtil fileUtil;
	
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
	 
	 @RequestMapping(value = "/businessLicense.do",method = RequestMethod.GET)
	 public void ownerLicense() {
		 logger.info("글쓰기 화면 보여주기");
	 }
	 
	 @RequestMapping(value="/businessLicense.do",method=RequestMethod.POST)
	 public String ownerLicenseOk(@ModelAttribute OwnerRegisterVO vo, 
			 HttpServletRequest request,
			 Model model) {
		 logger.info("사업자등록증 업로드 페이지 파라미터 vo={}",vo);
		 
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
			
			vo.setoRegisterFileName(fileName);
			vo.setoRegisterOriginalFileName(originName);
			
			int cnt=ownerRegisterService.insertRegister(vo);
			logger.info("제출 처리 결과, cnt={}", cnt);
		 
		 return "redirect:/menu1/businessLicense.do";
	 }
	 
}
