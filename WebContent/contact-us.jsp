<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Contact Us</title>
    <link rel="stylesheet" href="contactus.css">

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.0.2/css/bootstrap.min.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.0.2/js/bootstrap.bundle.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" integrity="sha512-***" crossorigin="anonymous" />

</head>
<body>

    <!--navigation bar-->
<nav class="navbar navbar-expand-lg navbar-dark" style="background: linear-gradient(to right, #8e2de2, #4a00e0);">
 
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
      <li class="nav-item active">
        <a class="nav-link" href="/real-estate-management-system/new">Sell Now</a>
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

<div class="carousel-inner">
    <div class="carousel-item active">
      <img style="height:600px;" src="https://www.cloud4c.com/ksa/sites/ksa/files/2022-07/cloud4c-company-contact-1Desktop.jpg" class="d-block w-100" alt="Image 1">
      <div class="carousel-caption">
        <h3>Contact Us</h3> 
      </div>
    </div> 
>
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

<!--icon part start-->
<br><br>
<div class="container">
    <div class="row">
      <div class="col-md-6">
        <div style="padding: 1px; border-width: 0px;" class="card mb-4">
          <div class="card-body d-flex">
            <i class="fas fa-envelope fa-2x mr-3"></i>
            <div>
              <h5 style="font-size: 15px;" class="card-title">Email</h5>
              <p class="card-text">realestate@gmail.com</p>
            </div>
          </div>
        </div>
        <div style="padding: 1px; border-width: 0px;" class="card mb-4">
          <div class="card-body d-flex">
            <i class="fas fa-phone fa-2x mr-3"></i>
            <div>
              <h5 style="font-size: 15px;" class="card-title">Contact Number</h5>
              <p class="card-text">+94 3456789</p>
            </div>
          </div>
        </div>
        <div style="padding: 1px; border-width: 0px;" class="card mb-4">
          <div class="card-body d-flex">
            <i class="fas fa-map-marker-alt fa-2x mr-3"></i>
            <div>
              <h5 style="font-size: 15px;" class="card-title">Location</h5>
              <p class="card-text">123 Main Street, Colombo, Sri Lanka</p>
            </div>
          </div>
        </div>
        <div style="padding: 1px; border-width: 0px;" class="card mb-4">
          <div class="card-body d-flex">
            <i class="fas fa-clock fa-2x mr-3"></i>
            <div>
              <h5 style="font-size: 15px;" class="card-title">Open Hours</h5>
              <p class="card-text">Mon-Fri: 9am-5pm</p>
            </div>
          </div>
        </div>
      </div>
     
      <!--icon part end-->

      <!--contact form start-->   

    <div class="col-md-6">
        <div style="border: black; border-radius: 10px;">
          <div class="card-body">
            <h5 class="card-title text-center mb-4">Contact For Any Inquaries</h5>
            <form>
              <div class="mb-3">
                <label for="name" class="form-label">Name</label>
                <input type="text" class="form-control" id="name" placeholder="Enter your name">
              </div>
              <div class="mb-3">
                <label for="email" class="form-label">Email</label>
                <input type="email" class="form-control" id="email" placeholder="Enter your email">
              </div>
              <div class="mb-3">
                <label for="subject" class="form-label">Subject</label>
                <input type="text" class="form-control" id="subject" placeholder="Enter the subject">
              </div>
              <div class="mb-3">
                <label for="message" class="form-label">Message</label>
                <textarea class="form-control" id="message" rows="4" placeholder="Enter your message"></textarea>
              </div>
              <div class="text-center">
                <button type="submit" style="border:1px solid  #b69b00; color: black; height: 40px; width: 50%;">Submit</button>
              </div>
            </form>
          </div>
        </div>
      </div>
    </div>
  </div>
  
    <br><br>
  
    <!--contact form end-->

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
              <a href="#!">Services</a>
            </li>
            <li>
              <a href="#!">Properties</a>
            </li>
            <li>
              <a href="#!">Contact Us</a>
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
      &copy; Copyright EstateMatriX All Right Reserved.
    </div>
  </footer>

<!-- end Footer-->

    
</body>
</html>