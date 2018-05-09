<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@taglib prefix="aaa" uri="/WEB-INF/tlds/ccc.tld" %>
 <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 
 <c:set  var="type" value="30px,green,underline,900"/>
<!-- 속성도 있고 body도 있는 tag -->

<aaa:mybody type="${type }">한지민</aaa:mybody>
<aaa:bbb/><br/>
지금은<aaa:ddd/><br/>
지금은<aaa:mydate type="5"/><br/>
지금까지 jsp1.2버전