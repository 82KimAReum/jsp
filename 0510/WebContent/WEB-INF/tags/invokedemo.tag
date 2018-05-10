<%@tag pageEncoding="utf-8"  %>
<%@attribute name="productDetail" fragment="true" %>
<%@variable name-given="productName"%>
<%@variable name-given="description"%>
<%@variable name-given="price"%>

<%
	jspContext.setAttribute("productName", "Ballpen");
	jspContext.setAttribute("description", "모나미 신형 볼팬");
	jspContext.setAttribute("price", 300);
%>
<jsp:invoke fragment="productDetail"/>
<%-- <jsp:액션태그/> --%>