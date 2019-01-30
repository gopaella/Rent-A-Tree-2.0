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
                
                <form action="/ProductSearch">
                    <div class="form-group">
                        <label for="minSize">Minimum Tree Size</label>
                        <input type="text" class="form-control" id="minSize" placeholder="50cm">
                        
                        <label for="maxSize">Maximum Tree Size</label>
                        <input type="text" class="form-control" id="maxSize" placeholder="200cm">
                    </div>
                </form>
                
                <hr>
                <p>Materials</p>
                
                <form>
                    <div class="form-check">
                        <input class="form-check-input" type="checkbox" value="" id="nat">
                        <label class="form-check-label" for="mat1">Natural</label>
                    </div>
                </form>
                
                <hr>
                <p>Supplier setting</p>
                <hr>
                
                <button type="button-center" class="btn btn-success">Search</button>
            </div>
        </div>
        <div class="col-sm-8 text-center">
            <h1>Products</h1>
            <p>Browse our large range of eco-friendly and ethically sourced trees for all your tree related needs</p>
            <hr>
            
            <%
            // List of Products
            ArrayList<Product> products = (ArrayList) request.getAttribute("products");
            if(products.size() > 0 && products != null) {
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