package com.javasoft.libs.controllers;

import java.sql.SQLException;

import com.javasoft.libs.models.MemberDAO;

public class selectController {
	public String selectName(String userid) {
		String username=null;
		try {
			username=MemberDAO.selectName(userid);
		}catch(SQLException e) {
			e.printStackTrace();
		}
		return username;
	}
	public int loginCheck(String userid,String userpwd) {
		int flag=-2;
		try {
			flag=MemberDAO.loginCheck(userid, userpwd);
		}catch(SQLException e) {
			e.printStackTrace();
		}
		return flag;
	}
}
