<jsp:directive.page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" />
<jsp:useBean id="p" class="com.javasoft.Product" />
<jsp:setProperty name="p" property="name" value="Sonata"/>
<jsp:setProperty name="p" property="price" value="3000000"/>

<%
	session.setAttribute("mycart", p);
%>
<h1>상품 정보</h1>
<ul>
	<li>상품명: ${sessionScope.mycart.name }</li>
	<li>상품가격:${sessionScope['mycart']['price'] } </li>
</ul>