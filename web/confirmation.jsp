<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@ page isErrorPage="true" %>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>
        
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
        <link rel="stylesheet" href="style.css">
        <title>ComicXchange-Add Comic Confirmation</title>
        
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
        
        <br>

<%
    try {
    
    //variables for user entry
    String userTitle = request.getParameter("title");
    String userAuthor = request.getParameter("author");
    String userGenre = request.getParameter("genre");
    String userSynopsis = request.getParameter("synopsis");
    
    //establish connection to database
    Class.forName("com.mysql.cj.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/comicxchange", "root", "admin");
    
    //prepare query for user insert
    String insertQuery = "INSERT INTO comics (ComicTitle, Author, Genre, Synopsis, ImageSource) VALUES (?, ?, ?, ?, ?)";
    PreparedStatement pstmt = con.prepareStatement(insertQuery);
    pstmt.setString(1, userTitle);
    pstmt.setString(2, userAuthor);
    pstmt.setString(3, userGenre);
    pstmt.setString(4, userSynopsis);
    pstmt.setString(5, "blank.jpg");
    pstmt.executeUpdate();
    
    //Prepare select query to display user entry
    String selectQuery = "SELECT * FROM comics WHERE ComicTitle = ?";
    PreparedStatement stmtSelect = con.prepareStatement(selectQuery);
    stmtSelect.setString(1, userTitle);
    
    ResultSet rs = stmtSelect.executeQuery();
    
    
    while(rs.next()) {
%>
<div class="card" id="submission" style="width: 20rem">
            <div class="card-body">
                <h1 class="card-title">Thank you for your submission!</h1>
                <p class="card-subtitle mb-2 text-body-secondary">The following comic has been added to the discovery pool</p><br>
                    <h6>Comic Title:</h6>
                    <p class="card-text"><%=rs.getString("ComicTitle")%></p><br>
                    <h6>Author:</h6>
                    <p class="card-text"><%=rs.getString("Author")%></p><br>
                    <h6>Genre:</h6>
                    <p class="card-text"><%=rs.getString("Genre")%></p><br>
                    <h6>Synopsis:</h6>
                    <p class="card-text"><%=rs.getString("Synopsis")%></p><br>

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
