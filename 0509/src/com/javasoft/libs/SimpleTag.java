package com.javasoft.libs;

import java.io.IOException;
import java.util.Calendar;


import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.SimpleTagSupport;



public class SimpleTag extends SimpleTagSupport{
	private String getWeek(int su) {
		String yoil=null;
		switch(su) {
		case 1: yoil= "일";break;
		case 2: yoil= "월";break;
		case 3: yoil= "화";break;
		case 4: yoil= "수";break;
		case 5: yoil= "목";break;
		case 6: yoil= "금";break;
		case 7: yoil= "토";break;
			
		}
		return yoil;
	}
	public void doTag()throws JspException,IOException{
		JspWriter out= this.getJspContext().getOut();
		try {
			Calendar now= Calendar.getInstance();
			String str="오늘은 "+now.get(Calendar.YEAR)+"년"+(now.get(Calendar.MONTH)+1)+"월"
					+now.get(Calendar.DAY_OF_MONTH)+"일"
					+this.getWeek(now.get(Calendar.DAY_OF_WEEK))+"요일 입니다.";
			out.println("<span style='color:blue;font-size:2em'>"+str+"</span>");
		}catch(Exception e) {
			throw new JspException(e);
		}
	}
}
