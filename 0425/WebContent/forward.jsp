<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
   request.setCharacterEncoding("utf-8");
   	String username=request.getParameter("username");
   	String userage=request.getParameter("userage");
   	if(username != null & userage!= null){
   		int age=Integer.parseInt(userage);
   		if(age<10){
%>
			<jsp:forward page="kids.jsp?username=<%=username %>&userage=<%=userage%>" />
							
<%   		}else if(age>=10&& age<19){ %>
	<jsp:forward page="teenage.jsp" >
		<jsp:param value="<%=username %>" name="username"/>
		<jsp:param value="<%=userage%>" name="userage"/>
	</jsp:forward> 			
<%
   	}else if(age>=19&& age<65){ %>
	<jsp:forward page="adult.jsp" >
		<jsp:param value="<%=username %>" name="username"/>
		<jsp:param value="<%=userage%>" name="userage"/>
	</jsp:forward> 			
<%
	}else{ %>
	<jsp:forward page="silver.jsp" >
		<jsp:param value="<%=username %>" name="username"/>
		<jsp:param value="<%=userage%>" name="userage"/>
	</jsp:forward> 			
<%
	}
}%>
<!DOCTYPE html >
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>forward action tag demo</h1>
	<form method='post'>
		Name: <input type="text"name="username"><br>
		age: <input type="number"name="userage"><br>
		<input type='submit' value='전송'>
 	</form>
</body>
</html>