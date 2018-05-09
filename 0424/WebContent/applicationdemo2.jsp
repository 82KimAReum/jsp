<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.io.RandomAccessFile"%>
<%
	String path=application.getInitParameter("MyCount");
	path=application.getRealPath(path);
	RandomAccessFile raf=new RandomAccessFile(path,"rw");
	int count = Integer.parseInt(raf.readLine().trim());
	count++;
	raf.seek((long)0);
	raf.writeUTF(String.valueOf(count));
	raf.close();
%>

	현재까지의 방무자 수는 :
	<%
		String strCount="";
		for(int i=0; i<(6-String.valueOf(count).length()); i++){
			strCount +="0";
		}
		strCount +=String.valueOf(count);
		out.println(strCount);
		for(int i =0; i<strCount.length(); i++){
			out.println("<img src ='images/"+ strCount.charAt(i)+".gif' />");
		}
	%>