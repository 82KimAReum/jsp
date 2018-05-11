package com.javasoft.libs.controllers;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class MessageHandler implements CommandHandler {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setAttribute("MESSAGE", "요청 uri가 커맨드인 패턴입니다.");
		return "/message.jsp";
	}

}
