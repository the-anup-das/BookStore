package com.Bookstore.util;

import java.sql.Connection;
import java.sql.DriverManager;

public class DbConnection {
	
	public static Connection getConnection() {
		
		Connection conn = null;
		try {
			Class.forName(DBIntializer.DRIVER);
			conn=DriverManager.getConnection
                    (DBIntializer.CON_STRING,DBIntializer.USERNAME, DBIntializer.PASSWORD);
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		
		return conn;
	}

}
