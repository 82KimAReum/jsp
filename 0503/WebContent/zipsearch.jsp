<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" errorPage="error.jsp"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<fmt:requestEncoding value="utf-8"/>
<sql:setDataSource dataSource="jdbc/myoracle" var="conn"/>



<c:set var="key" value="${param.keyname }"/>
<c:if test="${!empty key }">
	<sql:query var="rs" dataSource="${conn }">
	select zipcode,sido,gugun,dong,bunji
	from zipcode
	where dong like concat(concat('%','${key }'),'%')
</sql:query>
<%-- <c:out value="${rs.rowCount }"/> --%>
</c:if>


<h3>찾고자 하시는 읍/면/동이름을 입력해 주세요.</h3>
<form method="post">
	<p>읍/면/동 이름 : <input type="text" name="keyname" />
		<input type="submit" value="검색하기" />
	</p>
	<%-- <c:forEach var="i" items="${rs.columnNames }">${i}</c:forEach> --%>
</form>	
<p>
	<select name="selList" id="selList">
		<option>--선택--</option>
		<c:forEach var="row" items="${rs.rows }">
			<option value="${row.zipcode } ${row.sido } ${row.gugun } ${row.dong }">
			[${row.zipcode }] ${row.sido } ${row.gugun } ${row.dong } ${row.bunji }
			</option>
		</c:forEach>
	</select><br/>
	<button onclick="myclose()">창닫기</button>
</p>

<script>
	function myclose(){
		var selList=document.getElementById("selList");
		var str=selList.options[selList.selectedIndex].value;
		opener.document.getElementById("zip1").value= str.substring(0,3);
		opener.document.getElementById("zip2").value= str.substring(4,7);
		opener.document.getElementById("address1").value= str.substring(8);
		window.close();
	}
</script>