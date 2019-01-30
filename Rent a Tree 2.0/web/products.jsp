<%@ page language="java" contentType="text/html; charset=UTF8" pageEncoding="UTF8"%>
<%@ page import ="com.rentatree.model.Product" %>
<%@ page import ="java.util.ArrayList" %>
<%@ page import ="com.rentatree.util.ProductHandler" %> 
<%@ page import ="com.rentatree.service.*" %>
   
<!doctype html>
<html>
<head>
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet" >
<link href="css/style.css" rel="stylesheet" >
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF8">
<title>Project example - products</title>
</head>
<body>

    <%@include file="WEB-INF/jsp/navbar.jsp" %>
    
<div class="container-fluid text-center">

    <div class="row-eq-height">
        <div class="col-sm-2 sidenav">
            <h4>Narrow Your Search:</h4>
            <div class="text-center">
                <p>Size setting</p>
                <hr>
                <p>Materials</p>
                <ul>
                    
                </ul>
                <hr>
                <p>Supplier setting</p>
                <hr>
            </div>
        </div>
        <div class="col-sm-8 text-center">
            <h1>Products</h1>
            <p>Browse our large range of eco-friendly and ethically sourced trees for all your tree related needs</p>
            <hr>
            
            <%
            // List of Products
            ArrayList<Product> products = (ArrayList) request.getAttribute("products");
            if(products.size() > 0) {
                for(Product p : products) {              	
            %>
                
            <%
            }
            } else {
            %>
                <p> List of Products Goes Here </p>
            <%
            }
            %>

        </div>
            <div class="col-sm-2 sidenav">
                <div class="well">
                    <p>Recommended Product</p>
                </div>
                <div class="well">
                    <p>Recommended Product</p>
                </div>
                <div class="well">
                    <p>Recommended Product</p>
                </div>
            </div>
            
            <div class="clear"></div>
    </div>
    
</div>

<script src="https://code.jquery.com/jquery-1.12.4.min.js" type ="text/javascript"> </script >
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" > </script >
</body>
</html>