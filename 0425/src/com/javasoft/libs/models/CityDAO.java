package com.javasoft.libs.models;

import java.sql.SQLException;
import java.util.Vector;

public interface CityDAO {
	Vector<CityDTO> selectAll(String countrycode)throws SQLException;
}
