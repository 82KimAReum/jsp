<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.javasoft.libs.controllers.SelectController" %>
<%@ page import="com.javasoft.libs.models.CityDTO" %>
<%@ page import="java.util.Vector" %>
<%
	Vector<CityDTO> vector = SelectController.selectAll("KOR");
%>
<style type='text/css'>
	table { 
		border : 1px solid black;
		border-collapse: collapse;
		width:500px; margin-left:auto;margin-right:auto;
	}
	th, td{
		border : 1px solid black;
	}
	td{
		text-align:center;
	}
	h1 { text-align:center;}
</style>
<h1>Korea City List</h1>
<table>
	<thead>
		<tr>
			<th>일련번호</th><th>이름</th><th>국가코드</th>
			<th>지역</th><th>인구</th>
		</tr>
	</thead>
	<tbody>
		<% 
			for(int i = 0 ; i < vector.size(); i++){ 
				CityDTO city = vector.elementAt(i);	
		%>
			<tr>
				<td><%=city.getId() %></td>
				<td><%=city.getName()%></td>
				<td><%=city.getCountrycode() %></td>
				<td><%=city.getDistrict() %></td>
				<td><% out.print(String.format("%,d", city.getPopulation())); %></td>
			</tr>
		<% } %>
	</tbody>
</table>