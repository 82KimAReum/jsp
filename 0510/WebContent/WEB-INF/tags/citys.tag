<%@ tag body-content="empty" pageEncoding="utf-8"%>
<%@ tag import="com.javasoft.libs.SqlSessionFactoryBean" %>
<%@ tag import="com.javasoft.libs.CityVO" %>
<%@ tag import="java.util.List, java.util.Map, java.util.HashMap" %>
<%@ tag import="org.apache.ibatis.session.SqlSession" %>
<%@ attribute name="key" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	SqlSession sqlSession = SqlSessionFactoryBean.getInstance();
	Map<String, Object> map = new HashMap<String, Object>();
	map.put("countryCode", key);
	List<CityVO> list = sqlSession.selectList("City.selectCity", map);
	jspContext.setAttribute("citys", list);
%>
<table border='1'>
	<thead>
		<tr>
			<th>번호</th><th>도시명</th><th>국가코드</th><th>지역</th><th>인구수</th>
		</tr>
	</thead>
	<tbody>
		<c:forEach items="${citys}" var="city">
			<tr>
				<td>${city.id}</td><td>${city.name}</td>
				<td>${city.countryCode}</td><td>${city.district}</td>
				<td>${city.population}</td>
			</tr>
		</c:forEach>
	</tbody>
</table>