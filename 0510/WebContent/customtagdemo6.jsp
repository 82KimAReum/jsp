<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="easy" tagdir="/WEB-INF/tags" %>
    
<easy:invokedemo>
	<jsp:attribute name="productDetail">
		<table border="1">
			<tr>
				<th>상품명</th>
				<td>${productName }</td>
			</tr>
			<tr>
				<th>상품설명</th>
				<td>${description}</td>
			</tr>
			<tr>
				<th>상품가격</th>
				<td>${price}</td>
			</tr>
		</table>
	</jsp:attribute>
</easy:invokedemo>