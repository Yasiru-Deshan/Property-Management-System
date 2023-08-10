<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Property Details</title>
    <!-- Include your CSS and JavaScript dependencies here -->
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

    <!-- Retrieve property details using the id parameter -->
    <%
        String idParam = request.getParameter("id");
        if (idParam != null && !idParam.isEmpty()) {
            int propertyId = Integer.parseInt(idParam);
            // Use propertyId to retrieve property details from your database
            // For example: Property property = propertyDAO.selectProperty(propertyId);
    %>

    <!-- Display property details -->
    
    <!-- Display other property details here -->
    
    <!--image start-->
<h1 style="margin-left: 20px; text-align: center;"> Property Details</h1> 
<div class="container-fluid">
  <div class="row">
    <div class="col-12"> <!-- Change col-10 to col-12 to use the full width of the container -->
      <img style="width: 95%; height: 800px; margin-top: 40px; margin-left: 40px; margin-right: 40px;" src="${property.image}" class="img-fluid" alt="Property Image">
    </div>
  </div>
</div>
<br><br>
<!--image end-->

    
<!--property details-->
<div class="container">
  <div class="row justify-content-center"> <!-- Center the content horizontally -->
    <div class="col-md-8">
      <div class="card mb-4">
        <div class="card-body">
          <h5 class="card-title">Property Details</h5><br>
          <p class="card-text">${property.description}</p></div>
      </div><br>
      <div class="card">
        <div class="row">
          <div class="col-md-6">
            <div class="card-body" >
              <h4 class="card-title" style="text-align: center;">AGENT INFORMATION</h4><br>
              <h5 class="card-text" style="text-align: center;">Contact the agent for more details</h5><br><br>
              <p class="card-text" style="text-align: center;">Name: ${property.fname} ${property.lname}</p>
              <p class="card-text" style="text-align: center;">Contact Number: ${property.mobile}</p>
              <p class="card-text" style="text-align: center;">Address: ${property.address}</p>
              <p class="card-text"style="text-align: center;">Email: ${property.email}</p>
            </div>
          </div>
          <div class="col-md-6">
            <img style="width: 350px; height: 400px; padding:20px; margin-left: 5%;" src="https://upload.wikimedia.org/wikipedia/commons/thumb/b/bc/Unknown_person.jpg/925px-Unknown_person.jpg" class="img-fluid" alt="Agent Image">
          </div>
        </div>
      </div>
    </div>
  </div>
</div>

  <br><br>
<!--end properry details-->

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
    

    <%
        } else {
    %>
    <p>Invalid property ID.</p>
    <%
        }
    %>
</body>
</html>
