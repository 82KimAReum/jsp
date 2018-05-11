<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

result: ${requestScope.RESULT}


${requestScope.MESSAGE}
<pre>
<servlet>
  	<servlet-name>ControllerURI</servlet-name>
  	<servlet-class>com.javasoft.libs.controllers.URIController</servlet-class>
  	<init-param>
  		<param-name>FILE</param-name>
  		<param-value>/WEB-INF/uriInfo.properties</param-value>
  	</init-param>
  </servlet>
  <servlet-mapping>
  	<servlet-name>ControllerURI</servlet-name>
  	<url-pattern>*.do</url-pattern>
  </servlet-mapping>
</pre>
uriinfo.properties를 이용함