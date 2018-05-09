<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" session="true" %>

<%
	String msg = null;
	String command = request.getParameter("comm");
	if(command.equals("create")){
		session = request.getSession();
		if(session.isNew()) msg = "방금 만들어진 세션입니다.";
		else msg = "이미 생성됐던 세션을 사용중입니다.";
		out.println("Session ID : " + session.getId() + "<br />");
		out.println("Creation Time : " + 
		                     new java.util.Date(session.getCreationTime()) + "<br />");
		out.println("Last Modified Time : " + 
                new java.util.Date(session.getLastAccessedTime()) + "<br />");
	}else if(command.equals("destroy")){
		session = request.getSession(false);
		if(session == null) msg = "사용할 수 없는 명령입니다.";
		else {
			session.invalidate();
			msg = "세션을 모두 삭제했습니다.";
		}
	}
	out.println("message:"+msg);
	 
%>