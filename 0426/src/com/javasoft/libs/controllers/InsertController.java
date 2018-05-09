package com.javasoft.libs.controllers;

import java.sql.SQLException;

import com.javasoft.libs.models.MemberDAO;
import com.javasoft.libs.models.MemberVO;

public class InsertController {
	private int row;
	public int insert(MemberVO member) {
		try {
			row = MemberDAO.insert(member);
		}catch(SQLException ex) {
			System.out.println(ex);
		}
		return row;
	}
}
