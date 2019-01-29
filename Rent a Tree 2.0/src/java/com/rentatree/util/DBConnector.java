/**
 * 
 */
package com.rentatree.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.sql.Statement;

/**
 * @author Matt Binnie
 *
 */
public class DBConnector {
	private Connection connection;
	private String user;
	private String password;
	private String host;
		
	public DBConnector(String user, String password, String host) {
		connection = null;
		this.user = user;
		this.password = password;
		this.host = host;
	}
	
	public void registerDriver() {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
		}catch(ClassNotFoundException exp) {
			System.err.println("Oracle JDBC Driver is not installed");
			exp.printStackTrace();
			System.exit(0);
		}	
	}
	
	public void connect() {
		try {
			connection = DriverManager.getConnection(host, user, password);
		} catch (SQLException exp) {
			System.err.println("Wasn't able to connect");
			exp.printStackTrace();
			System.exit(0);
		}
		System.out.println("Connected");
	}

    	public void closeConnection() {
		try {
			connection.close();
			System.out.println("\n\rConnection closed");
		} catch (SQLException e) {
			System.err.println("Wasn't able to close the connection");
			e.printStackTrace();
		}
	}

    public void tryLogin(){
            
    }
}