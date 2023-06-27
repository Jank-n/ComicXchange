<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>

<%
    try {
    
    Class.forName("com.mysql.cj.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/comicxchange", "root", "admin");
    
    Statement stmt = con.createStatement();
    
    ResultSet rs = stmt.executeQuery("SELECT * FROM comics;");
    
    
    
%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>
        
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
        <link rel="stylesheet" href="style.css">
        <title>ComicXchange</title>
        
    </head>
    <body>
        <div class="logo-container">
            <a href="index.jsp">
                <img src="smlogo.png" alt="comicxchange logo">
            </a>
        </div>
        
        <h1 id="cxc" class="center-heading">ComicXchange</h1>
        <nav class="navbar navbar-expand-lg bg-body-tertiary rounded">
            <div class="container-fluid">
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                        <li class="nav-item">
                            <a class="nav-link" href="browse.jsp">Browse</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="readlist.jsp">My Reading List</a>
                        </li>
                        <li class="nav-item">
                        <a class="nav-link" href="addcomic.jsp">Add Comic</a>
                    </ul>
                    <form class="d-inline-flex p-2" role="search">
                        <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
                        <button class="btn btn-outline-success" type="submit">Search</button>
                    </form>
                </div>
            </div>
        </nav>
        

    
        <h2 style="padding: 10px">Featured Comics</h2>
        
        <% 
            for (int counter = 0; counter < 3; counter++) { 
            rs.next();
        %>
    <div class="container">
        <div class="row justify-content-md-center">
            <div class="col-md-4 grid-item">
                <div class="image-container">
                <img src="<%=rs.getString("ImageSource")%>" class="rounded" id="cover" alt="Comic Cover Art">
            </div>
            </div>
            <div class="col-md-6 grid-item" id="comicinfo">
                <h3><%=rs.getString("ComicTitle")%></h3>
                <p><%=rs.getString("Synopsis")%></p>
            </div>
        </div>
    </div>
    </div>
  <%        
            }
      con.close();
      } catch (Exception e)
      {
          e.printStackTrace();
      }//end try-catch
  %>
    </body>
</html>
