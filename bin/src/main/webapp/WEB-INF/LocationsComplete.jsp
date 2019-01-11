<%-- 
    Document   : userComplete
    Created on : 18-Nov-2018, 23:01:35
    Author     : barte
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
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
    
    <%
       
        String iD = request.getParameter("id");
        String Name = request.getParameter("name");
    try{
        Class.forName("com.mysql.jdbc.Driver").newInstance();
        Connection con;
        con = DriverManager.getConnection("jdbc:mysql://stockcontrolldb.cv19wxrr0zdu.us-east-2.rds.amazonaws.com/InventoryControllFX?verifyServerCertificate=false&useSSL=false",
                "bartoszkepke09",
                "bartoszkepke00099912");
    Statement st = con.createStatement();
    st.executeUpdate("insert into Locations(LocationID,LocationName)values('"+iD+"','"+Name+"')");
    System.out.println("Data Inserted");
    
    
    
    } catch(Exception a){
    
        System.out.println(a);
    
    }
        
        %>
    
    <div class="container-fluid">
   <nav class="navbar navbar-expand-md navbar-light bg-primary">
  <a class="navbar-brand" href="#"></a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  
  <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
    <div class="navbar-nav">
      <a class="nav-item nav-link active" href="index.jsp">Home<span class="sr-only">(current)</span></a>
      <a class="nav-item nav-link" href="indexProducts.jsp">Edit Products</a>
      <a class="nav-item nav-link" href="indexUsers.jsp">Edit Users</a>
     
    </div>
  </div>
 <button type="button" class="btn btn-secondary btn-sm">Sign Out</button>       
</nav>
<br>        
<div class="row">
<div class="col-4">
    <div class="alert alert-success" role="alert">
 Location Added!
</div>
<form>
 
    <div class="form-group row">
    <label for="text" class="col-sm-2 col-form-label">ID</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" id="inputEmail3" placeholder="Location ID">
    </div>
  </div>
  <div class="form-group row">
    <label for="inputPassword3" class="col-sm-2 col-form-label">Name</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" id="inputPassword3" placeholder="Location Name">
    </div>
  </div>
  <fieldset class="form-group">
  </fieldset>
  <div class="form-group row">
    <div class="col-sm-10">
      <button type="submit" class="btn btn-primary" value="register">Add Location</button>
    </div>
  </div>
</form>
  <table class="table" name="table">
  <thead>
    <tr>
      <th scope="col">ID</th>
      <th scope="col">Name</th>
   
    </tr>
  </thead>
  <% 
          
    try{
        Class.forName("com.mysql.jdbc.Driver").newInstance();
        Connection con;
        con = DriverManager.getConnection("jdbc:mysql://stockcontrolldb.cv19wxrr0zdu.us-east-2.rds.amazonaws.com/InventoryControllFX?verifyServerCertificate=false&useSSL=false",
                "bartoszkepke09",
                "bartoszkepke00099912");
        String sql = "Select * from Locations";
        Statement st = con.createStatement();
        ResultSet rs = st.executeQuery(sql);
        while(rs.next())
        {
            %>
  <tr>
     <td><%=rs.getString("LocationID")%></td>
    <td><%=rs.getString("LocationName")%></td>
  </tr>
            
                    <%
        }
    
    } catch(Exception a){
    
        System.out.println(a);
    
    }
   
   
   
   %>
  </tbody>
</table>
  </tbody>
</table>   
</div> 
</div>        
</div>
</body>


</html>
