package com.project.fd.owner.controller;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

@Component
public class LicenseInterceptor extends HandlerInterceptorAdapter{
	private static final Logger logger
	=LoggerFactory.getLogger(LicenseInterceptor.class);

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
	int aAgreeNo =1;
		//=(Integer) request.getSession().getAttribute("aAgreeNo");
	
	logger.info("사업자등록 확인용 - 인터셉터 1~3이면 사업자등록 페이지로 이동 aAgreeNo={}", aAgreeNo);
	
	if(aAgreeNo>=1 && aAgreeNo<=3) {
		response.setContentType("text/html;charset=utf-8");
		
		PrintWriter out =response.getWriter();
		out.print("<script>");
		out.print("alert('먼저 사업자등록증을 등록하세요!');");
		out.print("location.href='"+ request.getContextPath()
				+"/owner/menu1/businessLicense.do';");
		out.print("</script>");
		
		return false;
	}
	
		return true;
	}
	
	
}
