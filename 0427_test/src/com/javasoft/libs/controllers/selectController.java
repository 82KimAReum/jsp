package com.javasoft.libs.controllers;

import java.sql.SQLException;
import java.util.Vector;

import com.javasoft.libs.models.MemberDAO;
import com.javasoft.libs.models.MemberVO;

public class selectController {
	public Vector<MemberVO> selectName() {
		Vector<MemberVO> v=null;
		try {
			v=MemberDAO.selectName();
		}catch(SQLException e) {
			e.printStackTrace();
		}
		return v;
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
