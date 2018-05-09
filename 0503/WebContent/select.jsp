<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
    <%@page import="java.io.IOException,
java.io.Reader,
java.sql.SQLException,
java.util.List,
com.ibatis.common.resources.Resources,
com.ibatis.sqlmap.client.SqlMapClient,
com.ibatis.sqlmap.client.SqlMapClientBuilder,
com.javasoft.libs.models.CityVO" %>
 <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<head>
	<script src="js/jquery-1.12.4.js"></script>
	<script>
		$(function(){
			$('select').bind('change', function(){
				$('form').submit();
			});
		});
	</script>
</head>


<%-- <%
	Reader rd=Resources.getResourceAsReader("SqlMapConfig.xml");
	SqlMapClient smc=SqlMapClientBuilder.buildSqlMapClient(rd);
	List<CityVO> list=smc.queryForList("City.selectAllCities",null);
	pageContext.setAttribute("MYLIST", list);
	
%>
<table>
<c:forEach items="${MYLIST }" var="city">
	<tr>
		<td>${city.id }</td><td>${city.name }</td>
		<td>${city.countryCode }</td><td>${city.district }</td>
		<td>${city.population }</td>
	</tr>
</c:forEach>
</table>  --%>


<%
	Reader rd=Resources.getResourceAsReader("SqlMapConfig.xml");
	SqlMapClient smc= SqlMapClientBuilder.buildSqlMapClient(rd);
	List<String> list= smc.queryForList("City.selectAllCountrycode");

%>
<h2>국가코드를 선택해 주세요</h2>
<form method="post">
	<select name="selCode" >
		<option>--선택--</option>
		<%for (int i=0; i<list.size(); i++){ %>
			<option value="<%=list.get(i) %>"><%=list.get(i)  %></option>
		<%} %>
	</select>
</form>
<%
	
	List<CityVO> list1=smc.queryForList("City.selectAllCities",request.getParameter("selCode"));
	pageContext.setAttribute("MYLIST", list1);
	
%>
<table>
<c:forEach items="${MYLIST }" var="city">
	<tr>
		<td>${city.id }</td><td>${city.name }</td>
		<td>${city.countryCode }</td><td>${city.district }</td>
		<td>${city.population }</td>
	</tr>
</c:forEach>
</table> 

