package com.javasoft.filters;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;


import com.javasoft.libs.myrequestWrapper;

public class ParamFilter implements Filter {
	@Override
	public void destroy() {}

	@Override
	public void doFilter(ServletRequest req, ServletResponse res, FilterChain chain)
			throws IOException, ServletException {
		System.out.println("Fileter Starting...");
		myrequestWrapper reqWrap = 
				new myrequestWrapper((HttpServletRequest)req);
		chain.doFilter(reqWrap, res);
	}

	@Override
	public void init(FilterConfig arg0) throws ServletException {}

}
