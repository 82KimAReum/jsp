<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
    
<fmt:formatNumber value="1235555.456" type="number" /><br/>
<fmt:formatNumber value="1235555.456" type="number" minIntegerDigits="3" /><br/>
<fmt:formatNumber value="1235555.456" type="number" maxFractionDigits="2"/><br/>
<fmt:formatNumber value="1235555.456" type="number" pattern="0,000.0000"/><br/>


<fmt:formatNumber value="25000000" type="currency" /><br/>
<fmt:formatNumber value="0.25" type="percent" /><br />
<fmt:formatNumber value="1235555.456" type="number" /><br/>