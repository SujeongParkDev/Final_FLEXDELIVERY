
package com.project.fd.owner.controller;

import java.io.PrintWriter;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.project.fd.owner.model.OwnerService;

@Component
public class OwnerWidthrowInterceptor extends HandlerInterceptorAdapter {
	private static final Logger logger
	=LoggerFactory.getLogger(OwnerWidthrowInterceptor.class);


	
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		
		if(request.getSession().getAttribute("result")==null) {
			request.getSession().setAttribute("result",0);
		}
		
		
		String ownerId = (String)request.getSession().getAttribute("ownerId");
		String result=Integer.toString((Integer)request.getSession().getAttribute("result"));
		System.out.println("인터셉터에서 result"+result);
		
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out=response.getWriter();
		out.print("<script>");
		
			if(result.equals(OwnerService.NO_STORE+"") || result.equals(OwnerService.LICENSE_STAY+"")) {
				logger.info("탈퇴관련 인터셉터 - preHandle() result={}", result);
				out.print("alert('사업자등록 취소 우선적으로 진행해 주세요.');");
				out.print("location.href='"+request.getContextPath()+"/owner/index.do';");
			
			}else if(result.equals(OwnerService.STORE_STAY+"") || result.equals(OwnerService.HAVE_ALL+"")) {
				logger.info("탈퇴관련 인터셉터- preHandle() result={}", result);
				out.print("alert('점포 탈퇴 및 취소 우선적으로 진행해 주세요');");
				out.print("location.href='"+request.getContextPath()+"/owner/index.do';");
			
			}else if(result.equals(OwnerService.WITHDRAW_STAY+"")) {
				logger.info("탈퇴관련 인터셉터 - preHandle() result={}", result);
				out.print("alert('점포 탈퇴 승인 대기 중입니다.');");
				out.print("location.href='"+request.getContextPath()+"/owner/index.do';");
			
			}else if((result.equals(OwnerService.NO_LICENSE+"") || result.equals(OwnerService.WITHDRAW_SUCCESS+"")) && (ownerId!=null && !ownerId.isEmpty())) {
				return true;
			}
		
		out.print("</script>");
		return false;
	}
	
}
