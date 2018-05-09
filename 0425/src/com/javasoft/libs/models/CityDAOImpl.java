package com.javasoft.libs.models;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Vector;

public class CityDAOImpl implements CityDAO {
	@Override
	public Vector<CityDTO> selectAll(String countrycode)  
			throws SQLException{
		//Connection conn = DBConnection.getConnection("pool");
		Connection conn = DBConnection1.getConnection();
		Vector<CityDTO> vector = new Vector<CityDTO>(1,1);
		String sql = "SELECT * FROM city WHERE countrycode = ?";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, countrycode);
		ResultSet rs = pstmt.executeQuery();
		while(rs.next()) {
			CityDTO city = new CityDTO(rs.getInt("id"),
					                                   rs.getString("name"),
					                                   rs.getString("countrycode"),
					                                   rs.getString("district"),
					                                   rs.getInt("population"));
			vector.addElement(city);
		}
		DBClose.close(conn);
		return vector;
	}
}





