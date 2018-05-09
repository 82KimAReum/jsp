package com.javasoft.libs;

import java.io.IOException;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.TagSupport;

public class HelloWorld extends TagSupport{
	//Tag인터페이스를 상속 받아야 하는데 TagSupport로 가볍게
	
	public int doStartTag() throws JspException{
		//태그를 열때
		JspWriter out=pageContext.getOut();		
		try {
			out.println("<div style='color:red;font-weight:900'>");
			out.println("Hello,world</div>");
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return this.SKIP_BODY;
	}
	public int doEndTag() throws JspException{
		return this.EVAL_PAGE;//bbb태그 닫고 그 페이지 계속 진행
	}
}
