<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.javasoft.libs.models.*" %>
<%@ page import="java.sql.Connection, java.sql.Statement" %>
<%@ page import="java.sql.ResultSet" %>    
<%
	Connection conn = DBConnection.getConnection();
	Statement stmt = conn.createStatement();
	String sql = "SELECT DISTINCT sido FROM zipcode";
	ResultSet rs = stmt.executeQuery(sql);
%>
<head>
	<title>우편번호 검색</title>
	<meta charset='utf-8' />
	<script>
		window.addEventListener('load', setup, false);
		function setup(){
			document.getElementById("selSido").addEventListener('change', getGugun, false);
			document.getElementById("btnSearch").addEventListener("click", getAddress, false);
		}
		var obj = null;
		function getGugun(){
			obj = new XMLHttpRequest();
			var param = "sido=" + this.value;
			obj.open("GET", "getGugunList.jsp?" + param, true);
			obj.onreadystatechange = function(){
				if(obj.readyState == 4 && obj.status == 200){
					document.getElementById("gugunList").innerHTML = obj.responseText;
				}
			}
			obj.send(null);
		}
		function getAddress(){
			obj = new XMLHttpRequest();
			var param="sido=" + document.getElementById("selSido").value + 
			          "&gugun=" + document.getElementById("selGugun").value +
			          "&dong=" + document.getElementById("txtDong").value;
			
			//alert(param);
			obj.open("GET", "getAdressList.jsp?" + param, true);
			obj.onreadystatechange = function(){
				if(obj.readyState == 4 && obj.status == 200){
					document.getElementById("result").innerHTML = obj.responseText;
				}
			}
			obj.send(null);
		}
	</script>
</head>

	<table width="600" border="0" cellspacing="0" cellpadding="0">
		<tr>
			<td>
				<select id="selSido">
					<option value="">--시도선택--</option>
					<% while(rs.next()){ %>
					<option value="<%=rs.getString(1)%>"><%=rs.getString(1) %></option>
					<% }  %>
				</select>
				<%
					if(rs != null) rs.close();   if(stmt != null) stmt.close();
					DBClose.close(conn);
				%>
			</td>
			<td>
				<div id="gugunList">
				<select id="selGugun">
					<option value="">--구군선택--</option>
				</select>
				</div>
			</td>
			<td>
				읍/면/동 이름 : <input type="text" id="txtDong" />
				<button type='button' id="btnSearch">우편번호검색</button>
			</td>
		</tr>
	</table>
 
<div id='result'></div>


