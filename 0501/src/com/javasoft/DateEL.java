package com.javasoft;

import java.text.SimpleDateFormat;
import java.util.Date;
//1.static메소드가 들어있는 javaBean을 생성
public class DateEL {
	private static SimpleDateFormat format= 
			new SimpleDateFormat("YYYY년 MM월 dd일");
	public static String getDate(Date date) {
		return format.format(date);
	}
}
