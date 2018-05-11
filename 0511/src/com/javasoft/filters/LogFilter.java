package com.javasoft.filters;

import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.annotation.WebInitParam;
import javax.servlet.http.HttpServletRequest;

@WebFilter(filterName="LogFilter", servletNames="HelloServlet", 
	initParams= {
			@WebInitParam(name="LogFile",value="C:\\\\temp1\\\\mylog.txt")
	})
public class LogFilter implements Filter {
	private PrintWriter pw;
	
	@Override
	public void init(FilterConfig config) throws ServletException {
		File file = new File(config.getInitParameter("LogFile"));
		try {
			pw = new PrintWriter(new FileWriter(file, true));
		} catch (IOException e) {
			System.out.println(e);
		}
	}

	@Override
	public void destroy() {
		this.pw.close();
	}

	@Override
	public void doFilter(ServletRequest request, 
									ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		HttpServletRequest req = (HttpServletRequest)request;
		String log = String.format("%s, %s, %tT", 
				request.getRemoteAddr(), req.getRequestURI(), new Date());
		this.pw.println(log);
		this.pw.flush();
		chain.doFilter(request, response);
		this.pw.println("나갔음");
		this.pw.flush();
	}

	
}
