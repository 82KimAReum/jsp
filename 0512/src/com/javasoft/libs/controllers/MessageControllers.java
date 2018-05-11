package com.javasoft.libs.controllers;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


//http://localhost:8080/0512/servlets/servlet/Message.do?message=a
public class MessageControllers extends HttpServlet{
	protected void doGet(HttpServletRequest req,HttpServletResponse resp)
     throws ServletException,IOException{
		this.process(req,resp);//1.Http Request받음
	}
	protected void doPost(HttpServletRequest req,HttpServletResponse resp)throws ServletException,IOException{
		this.process(req,resp);
	}
	private void process(HttpServletRequest req,HttpServletResponse resp)
     throws ServletException,IOException {
		String url=req.getParameter("message");//2.client가요청하는 기능을 분석한다.
		String result=null;
		if(url ==null || url.equals("base")) {
			result="data nothing";
		}else if(url.equals("username")) {
			result="한지민 입니다.";
		}else if(url.equals("userage")) {
			result="성인이시군요";
		}else {
			result="맞는 결과가 없습니다.";
		}
		//4.결과를 request또는 session에 저장한다. 
		req.setAttribute("RESULT", result);
		//5.알맞은 뷰 선택 후, 뷰로 포워딩 혹은 리다이렉트
		RequestDispatcher rd= req.getRequestDispatcher("/message.jsp");//사용자는 이url이 보이지 않음
		rd.forward(req, resp);
	}
}
