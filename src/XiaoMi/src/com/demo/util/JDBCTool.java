package com.demo.util;

import java.sql.Connection;
import java.sql.SQLException;

import com.mchange.v2.c3p0.ComboPooledDataSource;

public class JDBCTool {
	private static ComboPooledDataSource dataSource = new ComboPooledDataSource();
	public static ComboPooledDataSource getDataSource(){
		return dataSource;
	}
	public static Connection getConnection(){
		try {
			return dataSource.getConnection();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}
}
