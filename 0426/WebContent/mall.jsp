<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.Vector" %>

<jsp:include page="menu.html" />  

<%
	request.setCharacterEncoding("utf-8");
	String item = request.getParameter("item");
	String step = request.getParameter("step");
	Vector<String> cart = null;
	if(item != null){
		cart = (Vector<String>)session.getAttribute("mycart");
		if(cart == null){ //첫 카트 사용
			cart = new Vector<String>(1,1);
			cart.addElement(item);
			session.setAttribute("mycart", cart);
		}else{
			if(step.equals("add")) cart.addElement(item);
			else cart.removeElement(item);
		}
	}
%>
<% if(cart != null){ %>
	<h2>현재 장바구니에 <%=cart.size() %>개의 상품이 있습니다.</h2>
	<ul>
		<% for(int i = 0 ; i < cart.size() ; i++){ %>
			<li><%=cart.elementAt(i) %></li>
		<% } %>
	</ul>
	<% if(cart.size() > 0){ %>
		<jsp:include page="remove.jsp" />
<% 
		}
	} 
%>
  
  
  
  