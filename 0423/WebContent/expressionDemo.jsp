<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<metacharset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>구구단</h1>
	<table border='1'>
		<thead>
		<tr>
			<%for(int i=2; i<=5; i++){ %>
			<th><%=i%>단</th>
			<%} %>
		</tr>
		</thead>
		<tbody>
		<tr>
			<%for(int i=2; i<=5; i++){ %>
			<td><%for(int j=2; j<=9; j++){ %>
				<%=i%>x<%=j%>=<%=i*j%><br>
				<%} %>
			</td>
			<%} %>
		</tr>
		</tbody>
	</table>
	<table border='1'>
		<thead>
		<tr>
			<%for(int i=6; i<=9; i++){ %>
			<th><%=i%>단</th>
			<%} %>
		</tr>
		</thead>
		<tbody>
		<tr>
			<%for(int i=6; i<=9; i++){ %>
			<td><%for(int j=2; j<=9; j++){ %>
				<%=i%>x<%=j%>=<%=i*j%><br>
				<%} %>
			</td>
			<%} %>
		</tr>
		</tbody>
	</table>

</body>
</html>