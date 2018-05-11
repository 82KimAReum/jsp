package com.javasoft.libs;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletRequestWrapper;

public class myrequestWrapper extends HttpServletRequestWrapper {
	private HttpServletRequest request;
	public myrequestWrapper(HttpServletRequest request) {
		super(request);
		this.request = request;
	}
	@Override
	public String getParameter(String name) {
		String value = this.request.getParameter(name);
		if(value ==null)return null;
		value = value.toUpperCase();
		return value;
	}
	@Override
	public String [] getParameterValues(String name) {
		String [] array = this.request.getParameterValues(name);
		if(array ==null)return null;
		for(int i = 0 ; i < array.length ; i++) {
			array[i] = array[i].toUpperCase();
		}
		return array;
	}
}
