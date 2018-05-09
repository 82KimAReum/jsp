package com.javasoft.libs.controllers;

import java.sql.SQLException;
import java.util.Vector;

import com.javasoft.libs.models.CityDAO;
import com.javasoft.libs.models.CityDAOImpl;
import com.javasoft.libs.models.CityDTO;

public class SelectController {
	public static Vector<CityDTO> selectAll(String countrycode){
		Vector<CityDTO> vector = null;
		try {
			vector = new CityDAOImpl().selectAll(countrycode);
		}catch(SQLException ex) {
			System.out.println(ex.toString());
		}
		return vector;
	}
}
