package br.com.panospizza.Factory;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectionFactory {
	
	public Connection getConnection(){
		try {
			return DriverManager.getConnection("jdbc:mysql://localhost/panosdb?useTimezone=true&serverTimezone=UTC", "root", "root");
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}
	
}
