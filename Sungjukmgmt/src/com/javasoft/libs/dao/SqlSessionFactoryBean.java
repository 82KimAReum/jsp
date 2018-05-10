package com.javasoft.libs.dao;

import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.Reader;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class SqlSessionFactoryBean {

	private static SqlSessionFactory sessionFactory=null;
	static {
		if(sessionFactory ==null) {
			try {
				Reader reader = Resources.getResourceAsReader("mybatis-config.xml");
				sessionFactory =new SqlSessionFactoryBuilder().build(reader);
			} catch (FileNotFoundException e) {
				
				System.out.println("file not found");
				
			} catch (IOException e) { 
				
				System.out.println(e);
			}
			
			
		}
		
	}
	public static SqlSession getInstance() {
		return sessionFactory.openSession();
	}
}
