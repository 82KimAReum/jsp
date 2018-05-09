package com.javasoft;

import java.io.IOException;
import java.io.Reader;
import java.sql.SQLException;
import java.util.List;

import com.ibatis.common.resources.Resources;
import com.ibatis.sqlmap.client.SqlMapClient;
import com.ibatis.sqlmap.client.SqlMapClientBuilder;



public class IBatisSelectDemo {
	public static void main(String[] args) throws IOException, SQLException{
		Reader rd= Resources.getResourceAsReader("SqlMapConfig.xml");
		SqlMapClient client = SqlMapClientBuilder.buildSqlMapClient(rd);
		List<CityVO>list= client.queryForList("selectAllCities",null);
		
	}
}
