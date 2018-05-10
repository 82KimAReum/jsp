
<%@tag pageEncoding="utf-8" body-content="tagdependent" %>
<!-- tagdependent를 사용하면 body안에 el이나등등 쓸수없음 -->
<%@attribute name="type" type="String" required="true" rtexprvalue="true" %>
<%
	
	String[] arr=type.split(",");
	String str="<span style='color:"+arr[0]+";font-size:"+arr[1]+";'>";
%>

<%=str%><jsp:doBody/></span>