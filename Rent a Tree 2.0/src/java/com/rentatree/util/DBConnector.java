/**
 * 
 */
package com.rentatree.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 * @author Matt Binnie
 *
 */
public class DBConnector {
	private static Connection connection;
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
        
        public Connection getConnection(){
            return connection;
        }
        
        public static ResultSet executeSQL(String sql) {
            ResultSet rs = null;
            if(sql == null){
                return rs;
            }
            
            try{
                PreparedStatement ps = connection.prepareStatement(sql);
                rs = ps.executeQuery(sql);
            }catch(SQLException ex){
                System.err.println("SQL Exception with statement: " + sql);
                ex.printStackTrace();
            }finally{
                closeConnection();
            }
            return rs;
        }
        
    	public static void closeConnection() {
            try {
		connection.close();
		System.out.println("\n\rConnection closed");
            } catch (SQLException e) {
		System.err.println("Wasn't able to close the connection");
		e.printStackTrace();
            }
	}
}