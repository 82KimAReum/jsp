package com.javasoft.libs;

import java.io.IOException;

import javax.servlet.jsp.JspContext;
import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.SimpleTagSupport;


public class HelloWorld1 extends SimpleTagSupport{
	private JspContext jspContext;
	
	public void doTag()throws JspException,IOException{
		//태그를 열때
		this.jspContext=this.getJspContext();
		JspWriter out=jspContext.getOut();		
		try {
			out.println("<div style='color:red;font-weight:900'>");
			out.println("Hello,world</div>");
		} catch (IOException e) {
			throw new JspException(e);
		}
		
	}
	
}
