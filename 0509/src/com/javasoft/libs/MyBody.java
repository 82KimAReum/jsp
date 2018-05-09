package com.javasoft.libs;

import java.io.IOException;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.TagSupport;

public class MyBody extends TagSupport{
	private String type;
	private JspWriter out;

	public void setType(String type) {
		this.type = type;//30px,green,underline,900
	}
	public int doStartTag()throws JspException{
		this.out =pageContext.getOut();
		String[] arr=this.type.split(",");
		String style="font-size:"+arr[0]+";color:"+arr[1]+";text-decoration:"+arr[2]+
				";font-weight:"+arr[3];
		try {
			out.print("반갑습니다. <span style='"+style+"'>");
		}catch(Exception e) {
			throw new JspException(e);
		}
		return this.EVAL_BODY_INCLUDE;
	}
	public int doEndTag()throws JspException{
		
		try {
			out.println("</span>님! ^^");
		} catch (Exception e) {
			throw new JspException(e);
		}
		return this.EVAL_PAGE;
	}
}
