<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<jsp:useBean id="car" class="com.javasoft.libs.Car" scope="page"/>
<jsp:setProperty name="car" property="name" value="sonata" />
<jsp:setProperty property="price" name="car" value="25000"/>
<%
	//com.javasoft.libs.Car car =new com.javasoft.libs.Car ();//FQN
	//car.setName("sonata");
	//car.setPrice(25000);
%>

<%-- 자동차이름:<%=car.getName() %><br> --%>
자동차이름:<jsp:getProperty name="car" property="name" /><br>
자동차가격:<jsp:getProperty name="car" property="price" />

