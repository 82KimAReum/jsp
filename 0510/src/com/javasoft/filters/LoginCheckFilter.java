package com.javasoft.filters;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class LoginCheckFilter implements Filter {
	@Override
	public void init(FilterConfig arg0) throws ServletException {}
	@Override
	public void destroy() {}

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		HttpServletRequest req= (HttpServletRequest)request;
		HttpServletResponse res= (HttpServletResponse)response;
		HttpSession session= req.getSession();
		if(session ==null) {
			res.sendRedirect("/0510/login.html");
		}
		String userid=(String) session.getAttribute("userid");
		if(userid ==null || !userid.equals("chimi")) {
			res.sendRedirect("/0510/login.html");
		}
		chain.doFilter(req, res);
		

	}

	

}
