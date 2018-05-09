package com.javasoft.libs.models;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class MemberDAO {
	public static int loginCheck(String userid,String userpwd)throws SQLException {
		//-1,0,1
		Connection conn = DBConnection.getConnection();
		String sql="select userpwd from Member where userid=?";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, userid);
		ResultSet rs= pstmt.executeQuery();
		int flag=-2;
		if(!rs.next())flag=-1;//그런 아이디가 없음.
		else {//그런 아이디는 있음
			if(rs.getString("userpwd").trim().equals(userpwd.trim())) {
				flag=1;//아이디있고, 패스워드도 일치
			}else {
				flag=0;//아이디는 있으나 ,패스워드가 불일치
			}
		}
		if(rs!=null)rs.close();
		if(pstmt!=null)pstmt.close();
		DBClose.close(conn);
		return flag;
	}
	public static int insert(MemberVO member) throws SQLException{
		Connection conn = DBConnection.getConnection();
		String sql = "INSERT INTO Member VALUES(?,?,?)";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, member.getUserid());
		pstmt.setString(2, member.getUsername());
		pstmt.setString(3, member.getUserpwd());
		int row = pstmt.executeUpdate();
		if(pstmt != null) pstmt.close();
		DBClose.close(conn);
		return row;
	}
	public static String selectName(String userid) throws SQLException{
		
		
				Connection conn = DBConnection.getConnection();
				String sql="select username from Member where userid=?";
				PreparedStatement pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, userid);
				ResultSet rs= pstmt.executeQuery();
				String username=null;
				if(!rs.next())username=null;//그런 아이디가 없음.
				else {
					
						username=rs.getString("username");
						System.out.println(username);
				}
				if(rs!=null)rs.close();
				if(pstmt!=null)pstmt.close();
				DBClose.close(conn);
				return username;
	}
}





