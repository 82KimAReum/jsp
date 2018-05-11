package com.javasoft.libs.controllers;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class HelloHandler implements CommandHandler {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setAttribute("USERNAME", "안녕하세요 한지민이에요");
		return "/hello.jsp";
	}

}
