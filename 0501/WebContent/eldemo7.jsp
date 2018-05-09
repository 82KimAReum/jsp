<%@page import="java.util.Hashtable"%>
<jsp:directive.page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.HashMap,java.util.Date"/>
<jsp:directive.page import="java.util.StringTokenizer"/>
<%
	Hashtable <String ,Integer> ht =new Hashtable<String,Integer>();
	ht.put("Jan", 1);ht.put("Fab",2);ht.put("Mar",3);
	ht.put("Apr", 4);ht.put("May",5);ht.put("Jun",6);
	ht.put("Jul", 7);ht.put("Aug",8);ht.put("Sep",9);
	ht.put("Oct", 10);ht.put("Nov",11);ht.put("Dec",12);
	pageContext.setAttribute("CALENDAR", ht);
	
%>
<%
	String str= new Date().toString();
	StringTokenizer st= new StringTokenizer(str);
	String [] array = new String [st.countTokens()];
	int count=0;
	while(st.hasMoreTokens()){
		array[count++]=st.nextToken();
	}
	
	//java 방식
	out.print("오늘은 "+array[5]+"년 " + ht.get(array[1])+"월  "+array[2]+"일 입니다.");
	pageContext.setAttribute("YEAR", array[5]);
	pageContext.setAttribute("MONTH", array[1]);
	pageContext.setAttribute("DAY", array[2]);
%>
<!-- //EL방식  -->
<br>
오늘은 ${YEAR}년 ${CALENDAR[MONTH]}월 ${DAY}일 입니다.