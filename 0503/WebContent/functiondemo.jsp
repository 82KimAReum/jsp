<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<c:set var="str1" 
         value="<font size='7' color='blue' face='Verdana'>Hello, World</font>" />
<c:set var="str2" value="lo," />
<c:set var="tokens" value="apple, banana, mango, cherry, nuts, orange" />

<div>Length : ${fn:length(str1)}</div>
<div>substringAfter : ${fn:substringAfter(str1, str2)}</div>
<div>substringBefore : ${fn:substringBefore(str1, str2)}</div>
<div>escapeXml : ${fn:escapeXml(str1)}</div>