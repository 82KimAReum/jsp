package com.javasoft.libs;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Collection;
import java.util.Locale;

import javax.servlet.ServletOutputStream;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpServletResponseWrapper;

public class MyResponseWrapper  extends HttpServletResponseWrapper{
private HttpServletResponse response;
	
	public MyResponseWrapper(HttpServletResponse response) {
		super(response);
		this.response=response;
	}
	@Override
	public void addCookie(Cookie cookie) {
		String username = cookie.getName();
		
		if(username.equals("username")) {
			username= cookie.getValue().toUpperCase();
		}
		cookie.setValue(username);
		response.addCookie(cookie);
	}

	
}