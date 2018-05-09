<%@page import="java.net.URL"%>
<%@page import="java.io.FileInputStream"%>
<%@page import="java.io.InputStreamReader"%>
<%@page import="java.io.InputStream"%>
<%@page import="java.io.BufferedReader"%>
<%@page import="java.io.File"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String path= application.getInitParameter("DBInfo");
	URL url= application.getResource(path);
	//System.out.println(url);
	//InputStream is= url.openStream();
	InputStream is= application.getResourceAsStream(path);
	String str="";
	byte [] buffer =new byte[512];
	int readCount=0;
	while(true){
		readCount= is.read(buffer);
		if(readCount<0)break;
		str += new String(buffer,0,readCount);
	}
	str=str.replaceAll("\r\n", "<br>");
	out.println(str);
	
%>