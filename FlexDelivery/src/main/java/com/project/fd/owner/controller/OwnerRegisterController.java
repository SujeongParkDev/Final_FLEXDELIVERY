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

import com.project.fd.common.FileUploadUtil;
import com.project.fd.owner.ownerregister.model.OwnerRegisterService;
import com.project.fd.owner.ownerregister.model.OwnerRegisterVO;
import com.project.fd.owner.store.model.OwnerStoresVO;

@Controller
@RequestMapping("/owner/menu1")
public class OwnerRegisterController {
	private static final Logger logger
	=LoggerFactory.getLogger(OwnerRegisterController.class);
	
	@Autowired private OwnerRegisterService ownerRegisterService;
	
	@Autowired
	private FileUploadUtil fileUtil;

	 @RequestMapping(value = "/businessLicense.do",method = RequestMethod.GET)
	 public void ownerLicense() {
		 logger.info("사업자 등록증 등록  화면 보여주기");
	 }
	 
	 // 번호가 일치하면 등록 못하게
	 
	 //사업자 등록증 처리 
	 @RequestMapping(value="/businessLicense.do",method=RequestMethod.POST)
	 public String ownerLicenseOk(@ModelAttribute OwnerRegisterVO vo, 
			 HttpServletRequest request, HttpSession session,
			 Model model) {
		 //int ownerNo=(Integer)session.getAttribute("ownerNo");
		 //vo.setOwnerNo(ownerNo);
		 logger.info("사업자등록증 업로드 페이지 파라미터 vo={}",vo);
		 
		//파일 업로드 처리
			String originName="", fileName="test";
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
			logger.info("originName={}",originName);
			
			int cnt=ownerRegisterService.insertRegister(vo);
			logger.info("제출 처리 결과, cnt={}", cnt);
			String msg="사업자 등록증 등록 실패", url="";
			
			//3
			
			return "/owner/menu1/businessLicense";
	 }
	 
	
	 
}
