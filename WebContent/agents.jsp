<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
    

<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Contact Us</title>
    <link rel="stylesheet" href="styles/contactus.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.0.2/css/bootstrap.min.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.0.2/js/bootstrap.bundle.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" integrity="sha512-***" crossorigin="anonymous" />

</head>
<body>

    <!--navigation bar-->
<nav class="navbar navbar-expand-lg navbar-dark" style=" background: linear-gradient(to left, #fdfc47, #24fe41);">
 
  <a class="navbar-brand" href="/real-estate-management-system/">EstateMatrix</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
     
      <li class="nav-item active">
        <a class="nav-link" href="/real-estate-management-system/new">Sell Now</a>
      </li>
   
      <li class="nav-item active">
        <a class="nav-link" href="/real-estate-management-system/list">My Properties</a>
      </li>
      
      
      <li class="nav-item active">
        <a class="nav-link" href="/real-estate-management-system/agents">Agents</a>
      </li>
  
    </ul>
   <button class="btn btn-outline-light my-2 my-sm-0" type="submit">Logout</button>
  </div>
</nav>

 
  <center>   <h1>Agents List</h1></center>

<div class="container">

<center>
    
    <div>
 
    <table class="table">
  <thead>
    <tr>
      
      <th scope="col">Name</th>
      <th scope="col">Email</th>
      <th scope="col">Mobile</th>
      <th scope="col">NIC</th>
      <th scope="col">Address</th>
    </tr>
  </thead>
  
  <tbody>
          <c:forEach var="property" items="${propertyList}">
    <tr>
      
      <td>${property.fname} ${property.lname}</td>
      <td>${property.email}</td>
      <td>${property.mobile}</td>
      <td>${property.nic}</td>
      <td>${property.address}</td>
    </tr>
</c:forEach>
  </tbody>
</table>
    </div>
</div>
  

<!--buildings end-->

<!-- Footer -->
<footer class="footer">
  <div class="container py-4">
    <div class="row">
      <div class="col-lg-3 col-md-6 mb-4 mb-md-0">
       
        <ul class="list-unstyled">
          <li>
            <h4>Join with us</h4>
          </li>
          <li>
           <h6>EstateMatriX Real Estate<br>colombo 07 <br> Sri Lanka</h6>
          
          </li>


          <li>

            <h6>www.estatematrix@gmail.com</h6>
          </li>
          <li>
            <h6>011-3456223<br>012-3456765</h6>
          </li>
          
          
        </ul>
      </div>
      <div class="col-lg-3 col-md-6 mb-4 mb-md-0">
        
        <ul class="list-unstyled">
          <li>
            <a  href="#!">Home</a>
          </li>
          <li>
            <a href="#!">About Us</a>
          </li>
          <li>
            <a href="#!">Contact Us</a>
          </li>
          <li>
            <a href="#!">Register</a>
          </li>
          <li>
            <a href="#!">Services</a>
          </li>
        </ul>
      </div>
      <div class="col-lg-3 col-md-6 mb-4 mb-md-0">
       
        <ul class="list-unstyled">
          <li>
            <a href="#!">Apartments</a>
          </li>
          <li>
            <a href="#!">Buildings</a>
          </li>
          <li>
            <a href="#!">Lands</a>
          </li>
          <li>
            <a href="#!">property</a>
          </li>
          <li>
            <a href="#!">sell property</a>
          </li>
        </ul>
      </div>
      <div class="col-lg-3 col-md-6 mb-4 mb-md-0">
        
        <ul class="list-unstyled">
          <li>
            

          </li>
           <a href="https://example.com" target="_blank"><i class="fab fa-facebook"></i> Facebook</a>
          <li>
            <a href="https://example.com" target="_blank"><i class="fab fa-twitter"></i> Twitter</a>
          </li>
          <li>
            <a href="https://example.com" target="_blank"><i class="fab fa-instagram"></i> Instagram</a>
          </li>
          <li>
            <a href="https://www.linkedin.com/" target="_blank"><i class="fab fa-linkedin"></i> LinkedIn</a>
          </li>
          <li>
            <a href="https://api.whatsapp.com/send?phone=1234567890" target="_blank"><i class="fab fa-whatsapp"></i> WhatsApp</a>
          </li>
        </ul>
      </div>
    </div>
  </div>
  <div class="text-center py-3" style="background-color: #b69b00"> <!-- Dark Blue -->
    &copy; Copyright EstateMatrix All Right Reserved.
  </div>
</footer>

<!-- end Footer-->
</body>
</html>