<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=*, initial-scale=1.0">
    <title>navbar</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <style>
        /* Custom styles */
        body {
            background-color: #f8f9fa; /* Off-white background */
            color: #333; /* Dark gray text color */
        }
        .navbar {
            background-color: #0e5599 !important; /* Dark blue background for navbar */
        }
        .navbar-brand, .navbar-nav .nav-link {
            color: #fff !important; /* White text color for navbar links */
        }
        .btn-login {
            margin-right: 15px;
        }
    </style>
</head>
<body>
    <!-- Navbar -->
    <nav class="navbar navbar-expand-lg navbar-dark fixed-top" style="background-image: url('images/bg-01.jpg') ;background-size: cover; background-repeat: no-repeat;">
        <div class="container">
            <!-- Navbar brand -->
            <a class="navbar-brand" href="#">Suivi Colis </a>

            <!-- Navbar toggle button (for mobile) -->
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <!-- Navbar links -->
            <div class="collapse navbar-collapse" id="navbarNav" >
                <ul class="navbar-nav mx-auto">
                    <!-- Middle navigation elements -->
                    <li class="nav-item">
                        <a class="nav-link" href="#" style="margin-right: 30px; font-size: 20px;">Colis Actuels</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#" style="margin-left: 30px; font-size: 20px;">Historique</a>
                    </li>
                </ul>

                <!-- Login button on the right -->
                <a href="login.html"><button class="btn btn-outline-light my-2 my-sm-0 btn-login" style="font-size: 15px;" type="button">Se déconnecter</button></a>

            </div>
        </div>
    </nav>

    <!-- Your content goes here -->
    <div class="container mt-5">
        <br>
        <h1>Hello</h1>
        <p>
        <%@ page import ="model.Traffic" %>
        <%@ page import ="java.util.ArrayList" %>
        <%! ArrayList<String[]> t;%>
        <% t=Traffic.display();%>
        <table>
    <% for(String[] row : t) { %>
        <tr>
            <% for(String cell : row) { %>
                <td><%= cell %></td>
            <% } %>
        </tr>
    <% } %>
</table></p>
    </div>
</body>
</html>
