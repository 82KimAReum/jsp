<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.Vector" %>

<h2>삭제할 앨범을 선택해 주세요.</h2>
<form method="post">
	<select name="item">
		<option>--선택--</option>
		<%
			Vector<String> cart = (Vector<String>)session.getAttribute("mycart");
			for(int i = 0 ; i < cart.size() ; i++){
				out.print("<option value='" + cart.elementAt(i) + "'>");
				out.println(cart.elementAt(i) + "</option>");
			}
		%>
	</select>
	<input type="hidden" name='step' value="remove" />
	<input type="submit" value="삭제하기" /> 
</form>