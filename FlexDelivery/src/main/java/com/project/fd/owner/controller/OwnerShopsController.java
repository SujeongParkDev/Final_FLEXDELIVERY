package com.project.fd.owner.controller;

import java.io.IOException;
import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.project.fd.common.FileUploadUtil;
import com.project.fd.owner.store.model.OwnerStoresService;

@Controller
@RequestMapping("/owner")
public class OwnerShopsController {
	private static final Logger logger 
	= LoggerFactory.getLogger(OwnerShopsController.class);
	
	@Autowired OwnerStoresService ownerStoresService;
	
	@Autowired private FileUploadUtil fileUtil;

	@RequestMapping("/menu2/basic/basic.do")
	public void ownerbasic(Model model) {
		logger.info("내 점포 - 기본정보 보여주기~");
	}
	
	//파일 업로드 처리
	/**
	String originName="", fileName="";
	long fileSize=0;
	try {
		List<Map<String, Object>> fileList
		=fileUtil.fileUplaod(request, FileUploadUtil.STORES_TYPE);
		for(Map<String, Object> fileMap : fileList) {
			originName=(String) fileMap.get("originalFileName");
			fileName=(String) fileMap.get("fileName");//
			fileSize=(Long)fileMap.get("fileSize");				
		}//for
	} catch (IllegalStateException e) {
		logger.info("파일 업로드 실패!");
		e.printStackTrace();
	} catch (IOException e) {
		logger.info("파일 업로드 실패!");
		e.printStackTrace();
	}

	ownerStoresVo.setStoreLogo(originName);*/
	
	@RequestMapping("/menu2/operation/operation.do")
	public void owneroperation() {
		logger.info("내 점포 - 운영정보 보여주기");
	}


}
