<%@page import="com.javasoft.libs.models.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<% request.setCharacterEncoding("utf-8"); %>
 
<jsp:useBean id="ic" class="com.javasoft.libs.controllers.InsertController" />


<%
	request.setCharacterEncoding("utf-8");
	//memer에 넣고 //insert해야 함
	String id=request.getParameter("txtId");
	String dept=null;
	switch(id.charAt(0)){
	case 'A': dept="영업부";break;
	case 'B': dept="시설부";break;
	case 'C': dept="자제부";break;
	case 'D': dept="관리부";break;
	case 'E': dept="경리부";break;
	case 'F': dept="총무부";break;
	case 'G': dept="운용부";break;
	case 'H': dept="연구부";break;
	}
	int jic=0;//급
	switch(id.charAt(1)){
	case '1': jic=730000;break;
	case '2': jic=630000;break;
	case '3': jic=590000;break;
	case '4': jic=510000;break;
	case '5': jic=430000;break;
	case '6': jic=390000;break;
	case '7': jic=340000;break;
	case '8': jic=310000;break;
	case '9': jic=290000;break;
	}
	System.out.println(jic);
	
	int ho= Integer.parseInt(request.getParameter("txtHo"));//호봉
	int ya= Integer.parseInt(request.getParameter("txtYa"));//야근 시간
	int bu= Integer.parseInt(request.getParameter("txtBu"));//부양가족수
	
	int gi=ho*10000;//기본급
	 ya=ya*15000;//야근 수당
	int ga=bu*15000;//가족수당
	int chong=gi+ya+ga+jic; //직무급??
	int so=(int)(chong*0.1);
	int sil=chong-so;//실수령액
%>
	
	
<%
MemberVO member=new MemberVO( id,  dept,  gi,  jic,  ya,  ga,  chong,  so,  sil);
	int row = ic.insert(member);
	if(row == 1) {
		
		response.sendRedirect("index.jsp");
	}else {
%>
	<script>
		history.back();
	</script>
<% } %>