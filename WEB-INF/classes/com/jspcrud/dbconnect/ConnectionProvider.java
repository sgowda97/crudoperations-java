package com.jspcrud.dbconnect;

import java.sql.Connection;
import java.sql.DriverManager;

interface Provider {
	String DRIVER = ""; //driver for your desired DB driver
	String CONN = ""; //URL for your desired DB driver (host&port)
	String UN = ""; //username
	String UP = ""; //password
}

public class ConnectionProvider implements Provider {
	private static Connection con;

	static {
		try {
			Class.forName(DRIVER);
			con = DriverManager.getConnection(CONN, UN, UP);
		} catch(Exception e) {}
	}

	public static Connection getCon() {
		return con;
	}		
}
