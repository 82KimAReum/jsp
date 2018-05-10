<%@ tag body-content="empty" pageEncoding="utf-8"%>
<%@ tag import="com.javasoft.libs.SqlSessionFactoryBean" %>
<%@ tag import="com.javasoft.libs.CityVO" %>
<%@ tag import="java.util.List" %>
<%@ tag import="org.apache.ibatis.session.SqlSession" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	SqlSession sqlSession = SqlSessionFactoryBean.getInstance();
	List<CityVO> list = sqlSession.selectList("City.selectCountryCode");
	jspContext.setAttribute("citys", list);
%>
<select name="key">
	<option>--선택--</option>
	<c:forEach items="${citys }"  var="city">
		<option value="${city.countryCode }">${city.countryCode }</option>
	</c:forEach>
</select>