<%@page import="java.io.FileInputStream"%>
<%@page import="java.io.InputStreamReader"%>
<%@page import="java.io.InputStream"%>
<%@page import="java.io.BufferedReader"%>
<%@page import="java.io.File"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//application.log("Hello,world");
	String path= application.getInitParameter("DBInfo");
	application.log("path= "+path);
	application.log("real path="+application.getRealPath(path));
	
	File file=new File(application.getRealPath(path)); 
	
	BufferedReader br= new BufferedReader(
			new InputStreamReader(new FileInputStream(file)));
	String line=null;
	while((line = br.readLine())!=null){
		out.println(line+"<br>");
	}
	if(br != null)br.close();
	
%>