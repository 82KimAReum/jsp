<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true" errorPage="error.jsp" %>
<%@ page import="java.net.URL, java.net.HttpURLConnection" %>
<%@ page import="java.io.BufferedReader, java.io.InputStreamReader" %>
<% 
	request.setCharacterEncoding("utf-8");
	String query = request.getParameter("query");
	int yearFrom = 1900;
	String from = request.getParameter("from");  
	if(from != null) yearFrom = Integer.parseInt(from);
	int yearTo = 2018;
	String to = request.getParameter("to");         
	if(to != null) yearTo = Integer.parseInt(to);
	
	String clientId = "BOkjn1weq3m3d1KJ0UPF";
	String clientSecret = "vZkydHEd0k";

    String apiURL = "https://openapi.naver.com/v1/search/movie.json?query=" +
                            query;  // + "&country=KR&yearfrom=" + yearFrom + 
                            //"&yearto=" + yearTo; 
    URL url = new URL(apiURL); 
    HttpURLConnection con = (HttpURLConnection)url.openConnection();
    con.setRequestMethod("GET");
    con.setRequestProperty("X-Naver-Client-Id", clientId);
    con.setRequestProperty("X-Naver-Client-Secret", clientSecret);
    int responseCode = con.getResponseCode();
    BufferedReader br; 
    if(responseCode==200) { // 정상 호출 
        br = new BufferedReader(new InputStreamReader(con.getInputStream()));
    } else {  // 에러 발생
        br = new BufferedReader(new InputStreamReader(con.getErrorStream()));
    }
    String inputLine;
    StringBuffer sb = new StringBuffer();
    while ((inputLine = br.readLine()) != null) {
        sb.append(inputLine);
    }
    br.close();
    out.print(sb.toString());
%>





