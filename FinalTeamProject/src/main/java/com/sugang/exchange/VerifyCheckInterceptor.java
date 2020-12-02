package com.sugang.exchange;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class VerifyCheckInterceptor extends HandlerInterceptorAdapter{

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		
		HttpSession session = request.getSession();
		Object obj= session.getAttribute("exchange");
		
		if(obj==null) {
			response.sendRedirect(request.getContextPath()+"/list");
			System.out.println("Redirected to list page");
			return false;
		}
		return true;
	}
	
}
