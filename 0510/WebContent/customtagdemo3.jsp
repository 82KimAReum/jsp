<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@taglib prefix="mylib" tagdir="/WEB-INF/tags" %>

<!-- body content반복적으로 사용하기 -->
<mylib:myloop title="editors" bgcolor="#121212" color="#fff">
	Visual Studio code<br/>
	Sublime Text 3.1<br/>
	Eclipse<br/>
	Notepad<br/>
	VIM<br/>
</mylib:myloop>