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
       dbc = new DBConnector("SYS AS SYSDBA", "Huskyanna234", "jdbc:oracle:thin:@localhost:1521:orcl");
    }
    
    public static ArrayList<Product> getProducts() throws SQLException{
        String st = "SELECT * FROM Tree";
        dbc.connect();
        ResultSet rs = dbc.executeSQL(st);
        dbc.closeConnection();
	return resultSetToProducts(rs); 
    }
	
    public static ArrayList<Product> getProductSearch(String minSize, String maxSize) throws SQLException{
        return null;
    }
    public static ArrayList<Product> resultSetToProducts(ResultSet rs){
        ArrayList<Product> products = new ArrayList<>();
        try{
            while(rs.next()){
            Product newProduct = new Product(rs.getInt("Id"), rs.getString("Name"), rs.getString("Description"), rs.getString("Supplier"), rs.getString("PricePerDay"));
            products.add(newProduct);
            return products;
            }
        }catch(SQLException ex){
            ex.printStackTrace();
        }
        return null;
    }
}
