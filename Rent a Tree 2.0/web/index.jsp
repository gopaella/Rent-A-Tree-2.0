<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 
<!DOCTYPE html>
<html>
<head>
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet" >
<link href="css/style.css" rel="stylesheet" >
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Welcome Page</title>
</head>
<body>

	<%@include file="WEB-INF/jsp/navbar.jsp" %>
    

    <!-- Main jumbotron -->
     
    <div class="jumbotron">
      <div class="jumbotron-text-center">
        <h1 class="display-3">Rent A Tree</h1>
        <p>Eco-Friendly Tree Rental Made Easy</p>
        <div class="button-center">
            <button type="button" href="products.jsp">See Our Range</button>
        </div>
      </div>
    </div>

    <div class="container">
      <!-- Example row of columns -->
      <div class="row">
        <div class="col-md-4">
          <h2>Products</h2>
          <p>See a list of products. </p>
          <p><a class="btn btn-secondary" href="products.jsp" role="button">View details &raquo;</a></p>
        </div>
        <div class="col-md-4">
          <h2>Products - again</h2>
          <p>See a different list of the same products. </p>
          <p>Why? What's the difference?</p>
          <p><a class="btn btn-secondary" href="ProductList" role="button">View details &raquo;</a></p>
       </div>
        <div class="col-md-4">
          <h2>Basket</h2>
          <p>See what's in the basket.</p>
          <p><a class="btn btn-secondary" href="basket.jsp" role="button">View details &raquo;</a></p>
        </div>
      </div>

      <hr>

      <footer>
        <p>Something at the bottom of the page</p>
      </footer>
    </div> <!-- /container -->
<script src="https://code.jquery.com/jquery-1.12.4.min.js" type ="text/javascript"> </script >
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" > </script >
</body>
</html>