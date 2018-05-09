package com.javasoft.libs.models;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Vector;

import org.eclipse.jdt.internal.compiler.codegen.VerificationTypeInfo;

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
		String sql = "INSERT INTO test VALUES(?,?,?,?,?,?,?,?,?)";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, member.getId());
		pstmt.setString(2, member.getDept());
		pstmt.setInt(3, member.getGi());
		pstmt.setInt(4, member.getJic());
		pstmt.setInt(5, member.getYa());
		pstmt.setInt(6, member.getGa());
		pstmt.setInt(7, member.getChong());
		pstmt.setInt(8, member.getSo());
		pstmt.setInt(9, member.getSil());
		int row = pstmt.executeUpdate();
		if(pstmt != null) pstmt.close();
		DBClose.close(conn);
		return row;
	}
	public static Vector<MemberVO> selectName() throws SQLException{
		
		
				Connection conn = DBConnection.getConnection();
				String sql="select * from test ";
				Statement stmt = conn.createStatement();
				
				ResultSet rs= stmt.executeQuery(sql);
				Vector<MemberVO> vector=new Vector<MemberVO>(1,1);
				while(rs.next()) {
					
						MemberVO m=new MemberVO(rs.getString("id"), rs.getString("dept"), rs.getInt("gi"), 
								rs.getInt("jic"), rs.getInt("ya"), rs.getInt("ga"),
								rs.getInt("chong"), rs.getInt("so"), rs.getInt("sil"));
						vector.add(m);
				}
				if(rs!=null)rs.close();
				if(stmt!=null)stmt.close();
				DBClose.close(conn);
				return vector;
	}
}





