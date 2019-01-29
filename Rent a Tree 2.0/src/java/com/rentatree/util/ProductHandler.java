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
        
                ArrayList<Product> testProducts = new ArrayList<>();
                
                testProducts.add(new Product(0, "Tree", "A tree of sorts", "£15", "Cuba's Trees"));
		
		return testProducts;
		
	}
	
	public static ArrayList<Product> resultSetToProducts(ResultSet rs) throws SQLException{
		ArrayList<Product> products = new ArrayList<>();
		
		
		return products;
	
	}
    
}
