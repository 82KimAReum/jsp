package com.javasoft.libs.controllers;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Properties;
import java.util.Set;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//  http://localhost:8080/0512/servlets/servlet/MessageProcess?command=Hello

public class CommandController extends HttpServlet{
	private Map<String , Object> map = new HashMap<String , Object>();
	
	public void init(ServletConfig config)throws ServletException{
		String file= config.getInitParameter("FILE");
		ServletContext ctx=config.getServletContext();
		file=ctx.getRealPath(file);
		Properties info = new Properties();
		try {
			info.load(new FileInputStream(new File(file)));
		} catch (IOException e) {
			System.out.println("file not found");
		}
		Set<Object> set = info.keySet();
		Iterator<Object> iters= set.iterator();
		while(iters.hasNext()) {
			String command=(String)iters.next();//Message | Hello
			String className=info.getProperty(command);//com.javasoft.libs.controllers.MessageHandler
			System.out.println(className);
			try {
				Class myClass =Class.forName(className);
				Object obj = myClass.newInstance();
				map.put(command, obj); //(Message, com...MessageHandler)
			} catch (ClassNotFoundException e) {
				System.out.println(e);
			} catch (InstantiationException e) {
				System.out.println(e);
			} catch (IllegalAccessException e) {
				System.out.println(e);
			}
		}
	}
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse res)throws IOException,ServletException {
		this.process(req,res);
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse res)throws IOException,ServletException {
		this.process(req,res);
	}
	
	private void process(HttpServletRequest req, HttpServletResponse res)throws IOException,ServletException {
		String cmd = req.getParameter("command");//Hello, Message
		CommandHandler handler =(CommandHandler)map.get(cmd);
		String jspFile = null;
		try {
			jspFile=handler.process(req, res);
		} catch (Exception e) {
			throw new IOException(e);
		}
		RequestDispatcher rd= req.getRequestDispatcher(jspFile);
		rd.forward(req, res);
	}
}
