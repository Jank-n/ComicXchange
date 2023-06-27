<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>
        
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
        <link rel="stylesheet" href="style.css">
        <title>ComicXchange-Add Comic Book</title>
        
    </head>
    <body>
        <div class="logo-container">
            <a href="index.jsp">
                <img src="smlogo.png" alt="comicxchange logo">
            </a>
        </div>
        <!--navbar-->
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
        
        <!--create add comic form-->
        <div id="form" class="card" style="width: 20rem">
            <div class="card-body">
                <h1 class="card-title">Add A Comic</h1>
                <p class="card-subtitle mb-2 text-body-secondary">Share your recommendations so others can discover more stories!</p><br><br>
                <form method="post" class="card-text" action="confirmation.jsp">
                    <h6>Comic Title</h6>
                    <input type="text" id="title" name="title" placeholder="title"><br><br>
                    <h6>Author</h6>
                    <input type="text" id="author" name="author" placeholder="author"><br><br>
                    <h6>Genre</h6>
                    <input type="text" id="genre" name="genre" placeholder="genre"><br><br>
                    <h6>Synopsis</h6>
                    <input type="textbox" class="textbox" id="synopsis" name="synopsis" placeholder="synopsis"><br><br>

                    <input class="btn btn-primary button" type="submit" value="submit">

                </form>
            </div>
        </div>
    </body>
</html>