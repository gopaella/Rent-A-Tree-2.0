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
 * @author Alan
 */
public class ProductHandler {
    private static DBConnector dbc;
    
    public ProductHandler(){
        dbc = new DBConnector("admin", "admin", "host");
    }
    
    public static ArrayList<Product> getProducts() throws SQLException {
        //String st = "SELECT * FROM Product";
        //ResultSet rs = dbc.executeSQL(st);
	//return resultSetToProducts(rs);	
        
        ArrayList<Product> products = new ArrayList<>();
        products.add(new Product(0, "Lifelike Synthetic Spruce", "A lifelike synthetic spruce tree made from sustainabe PVC plastic", "Cuba's Trees", "£12.50"));
        
        return products;
        
    }
	
    public static ArrayList<Product> resultSetToProducts(ResultSet rs) throws SQLException{
        ArrayList<Product> products = new ArrayList<>();
        while(rs.next()){
            Product newProduct = new Product(rs.getInt("Id"), rs.getString("Name"), rs.getString("Description"), rs.getString("Supplier"), rs.getString("PricePerDay"));
            products.add(newProduct);
        }
	return products;
    }
}
