
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.javasoft.libs.SqlSessionFactoryBean" %>
<%@page import="org.apache.ibatis.session.SqlSession" %>

<%@ taglib prefix="mylib" tagdir="/WEB-INF/tags" %>
    <h1>아래 국가코드를 선택해 주세요</h1>
    <form>
   		<mylib:countrycode/> 
   		<input type="submit" value="도시불러오기"/>
    </form>
    <hr/>
    <mylib:citys key="${param.key }"/>