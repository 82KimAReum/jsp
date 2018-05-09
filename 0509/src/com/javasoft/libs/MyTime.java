package com.javasoft.libs;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.TagSupport;
public class MyTime extends TagSupport{
	public int doStartTag()throws JspException{
		String pattern="aa hh시 mm분 ss초 입니다.";
		SimpleDateFormat sdf=new SimpleDateFormat(pattern);
		String mytime=sdf.format(new Date());
		JspWriter out=pageContext.getOut();
		try {
			out.print(mytime);
		}catch(Exception e) {
			throw new JspException(e);
		}
		
		return this.SKIP_BODY;
	}
	public int doEndTag() throws JspException{
		return this.EVAL_PAGE;
	}
}
