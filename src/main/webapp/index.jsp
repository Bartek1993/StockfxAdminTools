<%--
    Document   : index
    Created on : 18-Nov-2018, 22:59:35
    Author     : barte
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
     <script>
    alert("Welcome to StockFX administrative tools");
    </script>
</head>

<title>

</title>


<body>
    <div class="container-fluid">
   <nav class="navbar navbar-expand-md navbar-light bg-primary">
  <a class="navbar-brand" href="#"></a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
    <div class="navbar-nav">
      <a class="nav-item nav-link active" href="indexUsers">Edit Users <span class="sr-only">(current)</span></a>
      <a class="nav-item nav-link" href="indexProducts">Edit Products</a>
      <a class="nav-item nav-link" href="indexLocations">Edit Locations</a>

    </div>
  </div>
 <button type="button" class="btn btn-secondary btn-sm">Sign Out</button>
</nav>
         <div class="jumbotron">
<h1>Welcome to StockFX Database</h1>
<p>Edit database Content</p>
</div>
        <div class="row">

     <div class="col-sm-3">
         <div class="card" style="width: 12rem;">
  <img class="card-img-top" src="http://simpleicon.com/wp-content/uploads/user1.png" alt="Card image cap">
  <div class="card-body">
      <a href="indexUsers"><p class="card-text">Add User</p></a>
  </div>
</div>
     </div>
     <div class="col-md-3">
           <div class="card" style="width: 12rem; align-content: center">
  <img class="card-img-top" src="https://slack-files2.s3-us-west-2.amazonaws.com/avatars/2016-05-09/41243011330_1b697a659d3b394fe271_512.png" alt="Card image cap">
  <div class="card-body">
      <a href="indexProducts"><p class="card-text">Add Product</p></a>
  </div>
  </div>
  </div>
  <div class="col-md-3">
               <div class="card" style="width: 12rem; align-content: center">
      <img class="card-img-top" src="https://freeiconshop.com/wp-content/uploads/edd/location-pin-compact-outline.png" alt="Card image cap">
      <div class="card-body">
          <a href="indexLocations"><p class="card-text">Add Locations</p></a>
      </div>
</div>
</div>
</div>
</div>
</div>

</div>
</body>


</html>