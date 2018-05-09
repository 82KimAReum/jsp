<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="eltest" uri="/WEB-INF/tlds/el-functions.tld" %>
<%
	Date today= new Date();
	session.setAttribute("MYDATE", today);
%> 
    <h2>오늘은 ${eltest:dateFormat(MYDATE) } 입니다.</h2>
    
    
<!--     /WEB-INF/tlds폴더 생성
    el-function.tld 에  아래 코드 넣기
    <?xml version="1.0" encoding="utf-8" ?>

<taglib
	xmlns="http://java.sun.com/xml/ns/javaee" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
    xsi:schemaLocation="http://java.sun.com/xml/ns/javaee 
    	web-jsptaglibrary_2_1.xsd"
     version="2.1">
     
    <description>EL Demo</description>
    <tlib-version>1.0</tlib-version>
    <short-name>eltest</short-name>
    
	<function>
		<description>SimpleDateFormat Formatting</description>
		<name>dateFormat</name>
		<function-class>com.javasoft.DateEL</function-class>
		<function-signature>java.lang.String getDate(java.util.Date)</function-signature>
	</function>
	
</taglib> -->