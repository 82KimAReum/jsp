<%@page import="com.javasoft.libs.models.MemberVO"%>
<%@page import="java.util.Vector"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <jsp:useBean id="is" class="com.javasoft.libs.controllers.selectController" />
     
	
<!DOCTYPE html>
<html lang="en">
<head>
   <meta charset="UTF-8">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <meta http-equiv="X-UA-Compatible" content="ie=edge">
   <title>사원급여표</title>
   <link rel='stylesheet' href="css/resultstyle.css">
   
</head>
<body>
   <h1>사원급여표</h1>
   <a href="input.html">입력하기</a>  <span id='peo'>명</span>
   <table border="1">
         <thead>
         <tr>
             <th>사원번호</th><th>부서</th><th>기본급</th>
             <th>직무급</th><th>야근수당</th><th>가족수당</th>
             <th>총지급액</th><th>소득세</th><th>실수령액</th>
         </tr>
         </thead>
         <tbody id='result'>
   
	
<%
	Vector<MemberVO> v = is.selectName();
	for(int i=0 ; i<v.size(); i++){
		out.println("<tr>");
		out.println("<td>"+v.elementAt(i).getId()+"</td>");
		out.println("<td>"+v.elementAt(i).getDept()+"</td>");
		out.println("<td>"+v.elementAt(i).getGi()+"</td>");
		out.println("<td>"+v.elementAt(i).getJic()+"</td>");
		out.println("<td>"+v.elementAt(i).getYa()+"</td>");
		out.println("<td>"+v.elementAt(i).getGa()+"</td>");
		out.println("<td>"+v.elementAt(i).getChong()+"</td>");
		out.println("<td>"+v.elementAt(i).getSo()+"</td>");
		out.println("<td>"+v.elementAt(i).getSil()+"</td>");
		out.println("</tr>");
	}
	%>
         </tbody>
     </table>
 
</body>
</html>