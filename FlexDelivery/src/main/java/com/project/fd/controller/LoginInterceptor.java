package com.project.fd.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Component;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.project.fd.common.Utility;

@Component
public class LoginInterceptor extends HandlerInterceptorAdapter {

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		int idx=Integer.parseInt(request.getParameter("idx"));
		
		if(idx==Utility.MEMBER_LOGIN) {
			response.sendRedirect("");
		}
		
		if(true) {
		}
		
		return false;
	}
	
	
	

}
