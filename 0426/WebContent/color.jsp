<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.Hashtable" %>

<%!
	private String getColorName(String en){
		Hashtable<String, String> ht = new Hashtable<String, String>();
		ht.put("black", "검정");   ht.put("orange", "주황");
		ht.put("green", "초록");   ht.put("blue", "파랑");
		ht.put("red", "빨강");
		return ht.get(en);
	}
%>
<jsp:useBean id="c" class="com.javasoft.libs.ColorBean">
	<jsp:setProperty name="c" property="*" />
</jsp:useBean>
<font color='<jsp:getProperty property="color" name="c" />'>
<jsp:getProperty property="username" name="c"/>님이 좋아하시는 색깔은<br />
<%=getColorName(c.getColor())%>입니다.</font>



