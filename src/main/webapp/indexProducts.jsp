<%-- 
    Document   : index
    Created on : 18-Nov-2018, 22:59:35
    Author     : barte
--%>

<%@page import="java.util.GregorianCalendar"%>
<%@ page import = "java.io.*,java.util.*" %>
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
      <a class="nav-item nav-link active" href="index.jsp">Home<span class="sr-only">(current)</span></a>
      <a class="nav-item nav-link" href="indexUsers.jsp">Edit Users</a>
      <a class="nav-item nav-link" href="indexLocations.jsp">Edit Locations</a>
    </div>
  </div>
 <button type="button" class="btn btn-secondary btn-sm">Sign Out</button>       
</nav>

<div class="jumbotron">
<h1>StockFX Database</h1>
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

</div>
<br>        
<div class="row">
<div class="col-4">
    <div class="alert alert-warning" role="alert">
 Add new Product
</div>
<form action="productsComplete">
    

    <div class="form-group row">
    <label for="text" class="col-sm-2 col-form-label">Product</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" id="inputEmail3" name ="productname"  placeholder="Product Name">
    </div>
  </div>
    <br>
  <div class="form-group row">
    <label for="inputPassword3" class="col-sm-2 col-form-label">Scan</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" name ="scancode"  id="inputPassword3" placeholder="Scan Code">
    </div>
  </div>
    <br>
  <fieldset class="form-group">
  </fieldset>
  <div class="form-group row">
    <div class="col-sm-10">
      <button type="submit" class="btn btn-primary" value="register">Add Product</button>
    </div>
  </div>
</form>
    <table class="table" name="table">
  <thead>
      <tr>
      <th scope="col">Product</th>
      <th scope="col">Scan</th>
    </tr>
  </thead>
  <tbody>
    <% 
          
    try{
        Class.forName("com.mysql.jdbc.Driver").newInstance();
        Connection con;
        con = DriverManager.getConnection("jdbc:mysql://stockcontrolldb.cv19wxrr0zdu.us-east-2.rds.amazonaws.com/InventoryControllFX?verifyServerCertificate=false&useSSL=false",
                "bartoszkepke09",
                "bartoszkepke00099912");
        String sql = "Select Name,ScanCode from STPFillets";
        Statement st = con.createStatement();
        ResultSet rs = st.executeQuery(sql);
        while(rs.next())
        {
            %>
  <tr>
      <td><%=rs.getString("Name")%></td>
    <td><%=rs.getString("ScanCode")%></td>
  </tr>
            
                    <%
        }
    
    } catch(Exception a){
    
        System.out.println(a);
    
    }
   
   
   
   %>
  </tbody>
</table>
  <br>
 
</div> 
</div>        
</div>
</body>


</html>
