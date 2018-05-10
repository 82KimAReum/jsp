<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="mylib" tagdir="/WEB-INF/tags" %>
    
    Today:<mylib:mydate2>
	    Short-Format: ${shortDate }<br/>
	    Long-Format:${longDate }<br/>
    </mylib:mydate2>