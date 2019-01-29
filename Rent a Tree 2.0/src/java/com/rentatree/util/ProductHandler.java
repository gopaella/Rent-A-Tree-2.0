/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.rentatree.util;

import com.rentatree.model.Product;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 *
 * @author cuba
 */
public class ProductHandler {
    
    public static ArrayList<Product> getProducts() throws SQLException {
		
		return new ArrayList<>();
		
	}
	
	public static ArrayList<Product> resultSetToProducts(ResultSet rs) throws SQLException{
		ArrayList<Product> products = new ArrayList<Product>();
		
		while(rs.next()){
			Product p = new Product(rs.getInt("Id"),
						rs.getString("Name"),
						rs.getString("Description"),
						rs.getInt("priceInPence")
					);
			products.add(p);		
		}
		return products;
	
	}
    
}
