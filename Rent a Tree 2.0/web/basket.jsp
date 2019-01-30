<%@ page language="java" contentType="text/html; charset=UTF8" pageEncoding="UTF8"%>
<%@ page import ="com.rentatree.model.Product" %>
<%@ page import ="java.util.ArrayList" %>

<!doctype html>
<html>
<head>
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet" >
<link href="css/style.css" rel="stylesheet" >
<meta http-equiv="Content-Type" content="text/html; charset=UTF8">
<title>Project example - basket</title>
</head>
<body>

    <%@include file="WEB-INF/jsp/navbar.jsp" %>
    
    <div class="col-md-10">
        <h3>Your Shopping Cart:</h3>
    </div>
    
    <div class="col-sm-2 sidenav">
        <h5>Some Products We'd Like To Recommend:</h5>
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
    
</body>
</html>