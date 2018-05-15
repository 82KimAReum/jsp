<%@page import="java.math.BigInteger"%>
<%@page import="java.security.SecureRandom"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Single Sign-On</title>
<script src="js/jquery-1.12.4.js"></script>
<script>
	$(function(){
		 /* 네아로 연동 URL 생성하기 */
		$('#naver').bind('click',function(){
			var client_id = "yRCL2LHYXwKgHmi406BC";
			var state = <%=getState()%>;
			var redirect_uri = encodeURIComponent("http://localhost:8080/membership/naverlogin.jsp");
			var url = "https://nid.naver.com/oauth2.0/authorize?";
			url += "response_type=code&client_id=" + client_id;
			url += "&state=" + state + "&redirect_uri=" + redirect_uri;
			location.href = url;
		})
	})
</script>
</head>
<body>
	<input type="image" src="images/naver.png" id="naver"/>
	
</body>
</html>

<%!
	private String getState(){
		SecureRandom sr= new SecureRandom();
		BigInteger bi= new BigInteger(128,sr);
		return bi.toString();
	}
%>