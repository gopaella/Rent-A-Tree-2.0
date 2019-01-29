/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.rentatree.util;

import com.rentatree.model.Product;
import java.sql.PreparedStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 *
 * @author Alan
 */
public class ProductHandler {
    private DBConnector dbc;
    private Connection connection;
    
    public ProductHandler(){
        dbc = new DBConnector("admin", "admin", "host");
    }
    
    public ArrayList<Product> getProducts() throws SQLException {
        dbc.connect();
        connection = dbc.getConnection();
        PreparedStatement ps = connection.prepareStatement("SELECT * FROM Products");
        ResultSet rs = dbc.executeSQL(ps);
        
	return resultSetToProducts(rs);		
    }
	
    public ArrayList<Product> resultSetToProducts(ResultSet rs) throws SQLException{
        ArrayList<Product> products = new ArrayList<>();
        while(rs.next()){
            Product newProduct = new Product(rs.getInt("Id"), rs.getString("Name"), rs.getString("Description"), rs.getString("Supplier"), rs.getString("PricePerDay"));
            products.add(newProduct);
        }
	return products;
	
    }
}
