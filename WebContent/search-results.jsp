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
        <a class="nav-link" href="/real-estate-management-system/">Home</a>
      </li>
      <li class="nav-item active">
        <a class="nav-link" href="/real-estate-management-system/services">Services</a>
      </li>
     
      <li class="nav-item dropdown active">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Properties
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href="/real-estate-management-system/apartments">Apartments</a>
          <a class="dropdown-item" href="/real-estate-management-system/buildings">Buildings</a>
          <a class="dropdown-item" href="/real-estate-management-system/lands">Lands</a>
        </div>
      </li>
      <li class="nav-item active">
        <a class="nav-link" href="/real-estate-management-system/about">About Us</a>
      </li>
      <li class="nav-item active">
        <a class="nav-link" href="/real-estate-management-system/contact">Contact us</a>
      </li>
    </ul>
   <button class="btn btn-outline-light my-2 my-sm-0" type="submit">Logout</button>
  </div>
</nav>

<!--navigation bar end-->

<!-- Slide start-->

<c:choose>
        <c:when test="${category == 'Apartment'}">
         <center>   <h1>Apartments</h1>
         
<div class="carousel-inner">
    <div class="carousel-item active">
    <img style="height:600px;" src="https://www.phillyaptrentals.com/wp-content/uploads/2020/12/apartment-building-what-makes-good-apartment-building-scaled.jpg" class="d-block w-100" alt="Image 1">
   
</div></center>
        </c:when>
        <c:when test="${category == 'Building'}">
         <center>    <h1>Buildings</h1>
         
<div class="carousel-inner">
    <div class="carousel-item active">
    <img style="height:600px;" src="https://www.shutterstock.com/image-photo/modern-city-illustration-isolated-white-260nw-1836519439.jpg" class="d-block w-100" alt="Image 1">
   
</div></center>
        </c:when>
        <c:when test="${category == 'Land'}">
         <center>    <h1>Lands</h1>
         <div class="carousel-inner">
    <div class="carousel-item active">
    <img style="height:600px;" src="https://images.unsplash.com/photo-1500382017468-9049fed747ef?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8bGFuZHxlbnwwfHwwfHx8MA%3D%3D&w=1000&q=80" class="d-block w-100" alt="Image 1">
   
</div></center>
        </c:when>
        <c:otherwise>
          <center>   <h1 style="margin-top: 20px;">Search Results</h1></center>
        
        </c:otherwise>
    </c:choose>







  <div class="container">
    <div class="row justify-content-center align-items-center">
      <div class="col-lg-9 text-center mt-5">
        <nav
          aria-label="breadcrumb"
          data-aos="fade-up"
          data-aos-delay="200"
        >
        </nav>
      </div>
    </div>
  </div>
</div>
<!-- slide end-->

<!--search box start-->


<!--search box start-->

<!--search box end-->
  
 
  
  <!--buildings-->

<div class="container">
       
        <div style="margin-top: 20px; margin-bottom: 40px;" class="row">
        <c:if test="${not empty searchResults}">
            <c:forEach var="property" items="${searchResults}">
                <div class="col-md-4">
                <div class="card" style="margin-top: 20px;">
                    <img style="height: 250px;" src="${property.image}" class="card-img-top" alt="Property Image">
                    <div class="card-body">
                        <h5 class="card-title">${property.fname}</h5>
                        <div class="row">
                            <p>${property.description}</p>
                        </div>
                        
                         <a href="/real-estate-management-system/property-item?id=${property.id}" class="btn btn-primary">View more</a>
                         
                    </div>
                </div>
            </div>
            </c:forEach>
        </c:if>
        <c:if test="${empty searchResults}">
            <p>No properties found for the given address.</p>
        </c:if>
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













