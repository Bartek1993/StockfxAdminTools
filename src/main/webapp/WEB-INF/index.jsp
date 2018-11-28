<%-- 
    Document   : index
    Created on : 18-Nov-2018, 22:59:35
    Author     : barte
--%>

<%@page import="java.util.GregorianCalendar"%>
<%@page import="java.util.Calendar"%>
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
    
   <nav class="navbar navbar-expand-md navbar-light bg-primary">
  <a class="navbar-brand" href="#"></a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
    
  <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
    <div class="navbar-nav">
      <a class="nav-item nav-link active" href="indexUsers.jsp">Edit Users <span class="sr-only">(current)</span></a>
      <a class="nav-item nav-link" href="indexProducts.jsp">Edit Products</a>
      <a class="nav-item nav-link" href="indexLocations.jsp">Edit Locations</a>
    </div>
  </div>
 <button type="button" class="btn btn-secondary btn-sm">Sign Out</button>       
</nav>
    <div class="container-fluid">
         <div class="jumbotron">
<h1>StockFX Database</h1>
<p>Administrators WebPage</p>
<h2>Page Accessed</h2>
         <%
            response.setIntHeader("Page Refreshed", 10);
            
            // Get current time
            Calendar calendar = new GregorianCalendar();
            String am_pm;
            
            int hour = calendar.get(Calendar.HOUR);
            int minute = calendar.get(Calendar.MINUTE);
            int second = calendar.get(Calendar.SECOND);
            
            if(calendar.get(Calendar.AM_PM) == 0)
               am_pm = "AM";
            else
               am_pm = "PM";
            String CT = hour+":"+ minute +":"+ second +" "+ am_pm;
            out.println("Crrent Time: " + CT + "\n");
         %>
         <br>
         <%
         out.println("User IP Address: " + request.getRemoteAddr());
      %>
</div>
        <div class="row">
           
     <div class="col-sm-3">
         <a href="/indexUsers"> <div class="card" style="width: 12rem;">
  <img class="card-img-top" src="http://simpleicon.com/wp-content/uploads/user1.png" alt="Card image cap"></a>
  <div class="card-body">
     <p class="card-text">Add User</p>
  </div>
</div>
     </div>
     <div class="col-md-3">
           <div class="card" style="width: 12rem; align-content: center">
                <a href="indexProducts">
  <img class="card-img-top" src="https://slack-files2.s3-us-west-2.amazonaws.com/avatars/2016-05-09/41243011330_1b697a659d3b394fe271_512.png" alt="Card image cap"></a>
  <div class="card-body">
     <p class="card-text">Add Product</p>
     
  </div>
</div>
</div> 
<div class="col-md-3">
           <div class="card" style="width: 12rem; align-content: center">
                <a href="indexLocations">
  <img class="card-img-top" src="https://images.vexels.com/media/users/3/154655/isolated/preview/71dccbb077597dea55dfc5b7a7af52c4-location-pin-contact-icon-by-vexels.png" alt="Card image cap"></a>
  <div class="card-body">
     <p class="card-text">Add Location</p>
     <br>
  </div>
</div>
</div>             
</div>    
</div>
</div>
      
</div>

</body>


</html>
