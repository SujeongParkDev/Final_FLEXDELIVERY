package com.project.fd.owner.controller;

import java.io.PrintWriter;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Component;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.project.fd.owner.model.OwnerService;

@Component
public class OwnerWidthrowInterceptor extends HandlerInterceptorAdapter {
	

	
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		
		if(request.getSession().getAttribute("result")==null) {
			request.getSession().setAttribute("result",0);
		}
		
		return false;
	
	}
	
}
