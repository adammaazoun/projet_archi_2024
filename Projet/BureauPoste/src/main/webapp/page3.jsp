<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
</head>
<%@ page import ="model.Traffic" %>
<%! String id;
String[] list;
%>
<% id=request.getParameter("id");
list =Traffic.displayById(id);
%>
<body>
    <!-- Navbar -->
    <nav class="navbar navbar-expand-lg navbar-dark fixed-top" style="background-image: url('images/bg-01.jpg') ;background-size: cover; background-repeat: no-repeat;">
        <div class="container">
            <!-- Navbar brand -->
            <a class="navbar-brand" href="#">SNCFT </a>

            <!-- Navbar toggle button (for mobile) -->
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <!-- Navbar links -->
            <div class="collapse navbar-collapse" id="navbarNav" >
                <ul class="navbar-nav mx-auto">
                    <!-- Middle navigation elements -->
              
                    <li class="nav-item">
                        <a class="nav-link" href="#" style="margin-left: 30px; font-size: 20px;">     </a>
                    </li>
                </ul>

                <!-- Login button on the right -->
                <a href="login.html"><button class="btn btn-outline-light my-2 my-sm-0 btn-login" style="font-size: 15px;" type="button">Se déconnecter</button></a>

            </div>
        </div>
    </nav>

    <!-- Your content goes here -->
    <div class="container mt-5">
       <form action="CRUDServlet" method="POST">
       <br><br>
       <input type="hidden" name="action" value="update">
		<label for="id" class="form-label">id: </label>
		<input type="text" name="id" class="form-control" id="id" value="<%=id%>" ><br>
		<label for="depart" >depart: </label>
		<input type="text" name="depart" class="form-control" id="depart" value="<%=list[1]%>"><br>
		<label for="arrivee">arrivee: </label>
		<input type="text" name="arrivee" class="form-control" id="arrivee" value="<%=list[2]%>"><br>
		<label for="prix">prix: </label>
		<input type="text" name="prix" class="form-control" id="prix" value="<%=list[3]%>"><br>
		<label for="nbbillet">nb_billet: </label>
		<input type="text" name="nbbillet" class="form-control" id="nbbillet" value="<%=list[4]%>"><br>
		<input type="submit" class="btn btn-outline-primary" value="mettre a jour">
		</form>
    </div>
    
</body>
</html>
