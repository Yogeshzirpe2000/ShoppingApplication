package shoppingapp.repository;

import java.io.File;
import java.io.FileInputStream;
import java.sql.*;
import java.util.Properties;

public class DBConfig {
	private Connection conn;
	private PreparedStatement stmt;
	private ResultSet rs;

	private static DBConfig db = null;

	private DBConfig(String path) {
		System.out.println(path);
		try {
			FileInputStream fin = new FileInputStream(path);
			System.out.println(path);
			Properties p = new Properties();
			p.load(fin);
			String username = p.getProperty("db.username");
			String password = p.getProperty("db.password");
			String url = p.getProperty("db.url");
			String driverclassName = p.getProperty("db.driverClassName");
			Class.forName(driverclassName);
			conn = DriverManager.getConnection(url, username, password);
			if (conn != null) {
				System.out.println("Database is connected");
			} else {
				System.out.println("Database is not connected");
			}
		} catch (Exception ex) {
			System.out.println("error is DBConfig " + ex);
		}
	}

	public static DBConfig getInstance(String path) {
		if (db == null) {
			db = new DBConfig(path);
		}
		return db;
	}

	public Connection getConnection() {
		return conn;
	}

	public PreparedStatement getPreparedStatement() {
		return stmt;
	}

	public ResultSet getResultSet() {
		return rs;
	}
}
