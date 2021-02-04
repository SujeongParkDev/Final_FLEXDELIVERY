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
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.project.fd.common.FileUploadUtil;
import com.project.fd.owner.model.OwnerService;
import com.project.fd.owner.ownerregister.model.OwnerRegisterService;
import com.project.fd.owner.ownerregister.model.OwnerRegisterVO;

@Controller
@RequestMapping("/owner/menu1")
public class OwnerRegisterController {
	private static final Logger logger
	=LoggerFactory.getLogger(OwnerRegisterController.class);
	
	@Autowired private OwnerRegisterService ownerRegisterService;
	
	@Autowired private FileUploadUtil fileUtil;
	
	 @RequestMapping(value = "/businessLicense.do",method = RequestMethod.GET)
	 public void ownerLicense() {
		 logger.info("사업자 등록증 등록  화면 보여주기");
	 }
	 
	 //사업자 등록증 처리 
	 @RequestMapping(value="/businessLicense.do",method=RequestMethod.POST)
	 public String ownerLicenseOk(@ModelAttribute OwnerRegisterVO vo, 
			 HttpServletRequest request, HttpSession session,
			 Model model) {
		 int ownerNo=(Integer)session.getAttribute("ownerNo");
		logger.info("사업자등록증 업로드 페이지 파라미터 ownerNo={},vo={}",ownerNo,vo);

		 //파일 업로드 처리
			String originName="", fileName="test";
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
			
			vo.setoRegisterFileName(fileName);
			vo.setoRegisterOriginalFileName(originName);
			logger.info("originName={}",vo.getoRegisterOriginalFileName());
			logger.info("originName={}",vo.getoRegisterFileName());
			logger.info("vo={}",vo);
			
			int cnt=0;
			String msg="사업자 등록증 등록이 실패되었습니다. \n다시 작성해주세요. ",
					url="/owner/menu1/businessLicense.do";
			logger.info("vo={}",vo);
			
			cnt=ownerRegisterService.insertRegister(vo);
			if(cnt>0) {
				msg="사업자 등록증 등록 신청이 완료되었습니다.";
			}
			logger.info("제출 처리 결과, cnt={}", cnt);

			
			//3
			model.addAttribute("msg", msg);
			model.addAttribute("url", url);

			//4
			return "common/message";
		}
	 
	 @ResponseBody
		@RequestMapping("/AjaxRegisterNo.do")
		public boolean ajaxCheckNO(@RequestParam long oRegisterNo) {
			logger.info("ajax 이용-아이디 중복확인, oRegisterNo={}", oRegisterNo);
			
			boolean bool=false;

			int result=(Integer)ownerRegisterService.oRegisterNoDup(oRegisterNo);
			logger.info("같은 사업자 등록번호가 있는지  결과, result={}", result);
			
			
			if(result==OwnerRegisterService.EXIST_REGISTER_NO) {
				bool=true;  //이미 존재
			}else if(result==OwnerRegisterService.NON_EXIST_REGISTER_NO) {
				bool=false;	//사용 가능		
			}
			
			return bool;
		}
	 

	 
}
