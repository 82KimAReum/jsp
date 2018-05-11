package com.javasoft.libs;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

public class MyAppListener implements ServletContextListener{

	@Override
	public void contextDestroyed(ServletContextEvent sce) {}

	@Override
	public void contextInitialized(ServletContextEvent sce) {
		ServletContext context= sce.getServletContext();
		Map<String, String> map=new HashMap<String, String>();
		map.put("username", "한지민");
		map.put("userage", "24");
		map.put("address", "서울시 종로구 관철동 ymca빌딩 7층");
		context.setAttribute("STUDENT", map);
				//00511내에서는 어디서든 사용할수 있음
	}
	
}
