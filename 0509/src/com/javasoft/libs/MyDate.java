package com.javasoft.libs;

import java.io.IOException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.TagSupport;

public class MyDate extends TagSupport {
	private String type="0";
	
	public void setType(String type) {
		this.type = type;
	}
	public int doStartTag()throws JspException{
		Locale locale=null;
		switch(this.type) {
		case "0":locale=Locale.KOREA;break;
		case "1":locale=Locale.US;break;
		case "2":locale=Locale.CHINA;break;
		case "3":locale=Locale.JAPAN;break;
		case "4":locale=Locale.UK;break;
		case "5":locale=Locale.FRANCE;break;
		case "6":locale=Locale.GERMANY;break;
		}
		DateFormat sdf= 				
			DateFormat.getDateTimeInstance(DateFormat.FULL, DateFormat.FULL,locale);
		String str=sdf.format(new Date());
		JspWriter out= pageContext.getOut();
		try {
			out.println(str);
		} catch (Exception e) {
			throw new JspException(e);
		}
		return this.SKIP_BODY;
	}
	public int doEndTag() throws JspException{
		return this.EVAL_PAGE;
	}
}
