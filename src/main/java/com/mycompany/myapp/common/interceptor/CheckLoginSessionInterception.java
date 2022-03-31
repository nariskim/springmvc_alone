package com.mycompany.myapp.common.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.mycompany.myapp.common.constants.Constants;

public class CheckLoginSessionInterception extends HandlerInterceptorAdapter{

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		  
		if(request.getSession().getAttribute("sessSeq") != null) {
			
		} else {
			response.sendRedirect(Constants.URL_LOGINFORM);
			return false;
		}
		return super.preHandle(request, response, handler);
	}
	
	

}
