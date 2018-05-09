<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.Date" %>
<%
	String username = (String)session.getAttribute("username");
	if(username == null){  //세션이 없다면
		username = "방문자";
	}
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Welcome Javasoft Inc.</title>
	<style type='text/css'>
		fieldset{
			width:300px;
		}
		th{
			text-align:left;
		}
		table  tr:last-child > td {
			text-align:center
		}
	</style>
	<script src="js/jquery-1.12.4.js"></script>
	<script>
		$(function(){
			$(":submit").click(function(){
				if($("input[name='userid']").val() == "" || 
						$("input[name='userpwd']").val() == ""){
					alert("필수 항목을 입력해 주세요.");
					return false;
				}
			});
			$("#btnRegister").click(function(){
				location.href = "register.html";
			});
		});
	</script>
</head>
<body>
	<h1><%=username%>님! 방문을 환영합니다.</h1>
	<% if(session.getAttribute("userid") == null){ %>
	<fieldset>
		<legend>로그인해 주세요.</legend>
		<form action="login_ok.jsp" method="post">
			<table>
				<tr>
					<th>ID : </th>
					<td><input type="text" name="userid" /></td>
				</tr>
				<tr>
					<th>Password : </th>
					<td><input type="password" name="userpwd" /></td>
				</tr>
				<tr>
					<td colspan="2">
						<input type="submit" value="Login" />
						<input type="button" value="회원가입" id="btnRegister"/>
					</td>
				</tr>	
			</table>
		</form>
	</fieldset>
	<% 
		}else{
			out.println(String.format("Now is %1$tH:%1$tM:%1$tS", new Date()));
	%>
		<button type='button' onclick="
			if(confirm('정말 로그아웃하시겠습니까?')) location.href='logout_ok.jsp'; ">로그아웃</button>
	<% } %>
</body>
</html>