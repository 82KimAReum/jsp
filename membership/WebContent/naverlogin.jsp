
<%@page import="org.json.simple.JSONObject"%>
<%@page import="org.json.simple.parser.JSONParser"%>
<%@page import="java.io.InputStreamReader"%>
<%@page import="java.io.BufferedReader"%>
<%@page import="java.net.HttpURLConnection"%>
<%@page import="java.net.URL"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
//http://localhost:8080/membership/naverlogin.jsp?code=nC5Sb4ltVG4uwgR1&state=2.4627034153899107e%2038
	String url="https://nid.naver.com/oauth2.0/token";
	String grant_type="authorization_code";
	String client_id="yRCL2LHYXwKgHmi406BC";
	String client_secret="wkIkL35HB3";
	String code=request.getParameter("code");
	String state=request.getParameter("state");
	url+= "?grant_type="+grant_type+"&client_id="+client_id
			+"&client_secret="+client_secret+"&code="+code
			+"&state="+state; 
	String accessToken=getAccessToken(url);
	accessToken = myParser(accessToken, "access_token");
	String jsonProfile = getProfile(accessToken);
	JSONParser parser = new JSONParser();
	JSONObject obj = (JSONObject)parser.parse(jsonProfile);
	obj = (JSONObject)obj.get("response");
	String name = (String)obj.get("name");
	String email = (String)obj.get("email");
	session.setAttribute("username", name);
	session.setAttribute("useremail", email);
	response.sendRedirect("welcome.jsp");
	
%>
<%!
	

	private String getProfile(String accessToken)throws Exception{
	//접근 토큰을 이용하여 프로필 API 호출하기 
		URL url=new URL("https://openapi.naver.com/v1/nid/me");
		HttpURLConnection conn = (HttpURLConnection)url.openConnection();
		conn.setRequestMethod("GET");
		String header="Bearer "+accessToken; //반드시 한칸 띄울것 
		conn.setRequestProperty("Authorization",header);//header setting
		int resCode= conn.getResponseCode();//200,404..
		BufferedReader br= null;
		if(resCode==200){//요청 url이 맞음
			br= new BufferedReader(new InputStreamReader(conn.getInputStream()));
		}
		String result="";
		String line="";
		while((line= br.readLine()) != null){
			result +=line;
		}
		br.close();
		return result;
	}
	private String myParser(String data, String key) throws Exception{
		JSONParser parser = new JSONParser();
		JSONObject obj = (JSONObject)parser.parse(data);
		return (String)obj.get(key);
	}

	private String getAccessToken(String requestUrl) throws Exception{
		// 접근 토큰 발급 요청
		URL url=new URL(requestUrl);
		HttpURLConnection conn = (HttpURLConnection)url.openConnection();
		conn.setRequestMethod("GET");
		int resCode= conn.getResponseCode();//200,404..
		BufferedReader br= null;
		if(resCode==200){//요청 url이 맞음
			br= new BufferedReader(new InputStreamReader(conn.getInputStream()));
		}
		String result="";
		String line="";
		while((line= br.readLine()) != null){
			result +=line;
		}
		br.close();
		return result;
	}
%>