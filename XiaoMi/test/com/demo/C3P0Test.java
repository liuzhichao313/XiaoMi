package com.demo;

import java.sql.Connection;
import java.util.UUID;

import org.junit.Test;

import com.demo.util.JDBCTool;
import com.mchange.v2.c3p0.ComboPooledDataSource;

public class C3P0Test {

	public static void main(String[] args) {
		ComboPooledDataSource dataSource = JDBCTool.getDataSource();
		System.out.println(dataSource);
		Connection conn = JDBCTool.getConnection();
		System.out.println(conn);
	}

	@Test
	public void sth() {
		String uuid = UUID.randomUUID().toString().replace("-", "");
		String s = uuid.substring(24);
		System.out.println(s);
	}
}
