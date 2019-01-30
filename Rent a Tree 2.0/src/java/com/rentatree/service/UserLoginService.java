/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.rentatree.service;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.rentatree.util.DBConnector;
import java.sql.ResultSet;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author cuba
 */

@WebServlet("/trylogin")
public class UserLoginService extends HttpServlet {
    DBConnector dbc = new DBConnector("SYS AS SYSDBA", "", "jdbc:oracle:thin:@localhost:1521:orcl");
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String email = request.getParameter("email");
        String password = request.getParameter("password");
        
        String sql = "SELECT Email, UserPassword FROM Customer WHERE Email = '" + email + "' AND UserPassword = '" + password+"'";
        System.out.println(sql);
        dbc.registerDriver();
        dbc.connect();
        ResultSet rs = dbc.executeSQL(sql);
       
        try {
            rs.next();
            if(rs.getString("Email").equals(email) && rs.getString("UserPassword").equals(password)) {
                System.out.println("User Success");
                request.setAttribute("products", new ArrayList<>());
		// ... then forward the request to a JSP 'hidden' inside WEB_INF (so, can't be accessed directly by the user)
		RequestDispatcher rd = request.getRequestDispatcher("products.jsp");
		rd.forward(request, response);
            } else {
                System.out.println("User Fail");
            }
        } catch (SQLException ex) {
            Logger.getLogger(UserLoginService.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// If called via POST... do what we'd do if called via GET.
		doGet(request, response);
	}
    
}
