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

<div class="carousel-inner">
    <div class="carousel-item active">
      <img style="height:600px;" src="https://www.aveliving.com/AVE/media/Property_Images/Florham%20Park/hero/flor-apt-living-(2)-hero.jpg?ext=.jpg" class="d-block w-100" alt="Image 1">
      <div class="carousel-caption">
        <h3>Services</h3>
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

<!--services part-->

<section id="services" class="py-5">
    <div class="container">
      <div class="row">
        <div class="col-lg-3 col-md-6 mb-4">
          <div class="card h-100">
            <img style="height: 100px; width: 100px;" src="images/services.1.png" class="card-img-top" alt="Service 1">
            <div class="card-body">
              <h5 class="card-title">Quality Properties</h5>
              <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipiscing elit.<br> Lorem ipsum dolor sit amet, consectetur adipiscing elit. <br> Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
              <p><a href="#" class="learn-more">Read more</a></p>
            </div>
          </div>
        </div>
        <!-- Repeat the card markup for other services -->
        <div class="col-lg-3 col-md-6 mb-4">
          <div class="card h-100">
            <img style="height: 100px; width: 100px;" src="images/services.2.png" class="card-img-top" alt="Service 2">
            <div class="card-body">
              <h5 class="card-title">Top Rated Agent</h5>
              <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipiscing elit.<br> Lorem ipsum dolor sit amet, consectetur adipiscing elit. <br> Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
              <p><a href="#" class="learn-more">Read more</a></p>
            </div>
          </div>
        </div>
        <!-- Repeat the card markup for the remaining services -->
              <div class="col-lg-3 col-md-6 mb-4">
                <div class="card h-100">
                  <img style="height: 100px; width: 100px;" src="images/services.3.png" class="card-img-top" alt="Service 1">
                  <div class="card-body">
                    <h5 class="card-title">Property For Sale</h5>
                    <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipiscing elit.<br> Lorem ipsum dolor sit amet, consectetur adipiscing elit. <br> Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                    <p><a href="#" class="learn-more">Read more</a></p>  
                </div>
                </div>
            </div>
            <!-- Repeat the card markup for the remaining services -->
            <div class="col-lg-3 col-md-6 mb-4">
                <div class="card h-100">
                  <img style="height: 100px; width: 100px;" src="images/services.4.png" class="card-img-top" alt="Service 1">
                  <div class="card-body">
                    <h5 class="card-title">Houses For Sale</h5>
                    <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipiscing elit.<br> Lorem ipsum dolor sit amet, consectetur adipiscing elit. <br> Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                    <p><a href="#" class="learn-more">Read more</a></p>  
                </div>
                </div>
            </div>
            <!-- Repeat the card markup for the remaining services -->
            <div class="col-lg-3 col-md-6 mb-4">
                <div class="card h-100">
                  <img style="height: 100px; width: 100px;" src="images/services.5.png" class="card-img-top" alt="Service 1">
                  <div class="card-body">
                    <h5 class="card-title">Buldings For Sale</h5>
                    <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipiscing elit.<br> Lorem ipsum dolor sit amet, consectetur adipiscing elit. <br> Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                    <p><a href="#" class="learn-more">Read more</a></p>  
                </div>
                </div>
            </div>
            <!-- Repeat the card markup for the remaining services -->
            <div class="col-lg-3 col-md-6 mb-4">
                <div class="card h-100">
                  <img style="height: 100px; width: 100px;" src="images/services.6.jpg" class="card-img-top" alt="Service 1">
                  <div class="card-body">
                    <h5 class="card-title">Lands For Sale</h5>
                    <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipiscing elit.<br> Lorem ipsum dolor sit amet, consectetur adipiscing elit. <br> Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                    <p><a href="#" class="learn-more">Read more</a></p>  
                </div>
                </div>
            </div>
            <!-- Repeat the card markup for the remaining services -->
            <div class="col-lg-3 col-md-6 mb-4">
                <div class="card h-100">
                  <img style="height: 100px; width: 100px;" src="images/services.7.jpg" class="card-img-top" alt="Service 1">
                  <div class="card-body">
                    <h5 class="card-title">Make Your Own Auction</h5>
                    <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipiscing elit.<br> Lorem ipsum dolor sit amet, consectetur adipiscing elit. <br> Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                    <p><a href="#" class="learn-more">Read more</a></p>  
                </div>
                </div>
            </div>
            <!-- Repeat the card markup for the remaining services -->
            <div class="col-lg-3 col-md-6 mb-4">
                <div class="card h-100">
                  <img style="height: 100px; width: 100px;" src="images/services.8.jpg" class="card-img-top" alt="Service 1">
                  <div class="card-body">
                    <h5 class="card-title">Best Bidding</h5>
                    <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipiscing elit.<br> Lorem ipsum dolor sit amet, consectetur adipiscing elit. <br> Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                    <p><a href="#" class="learn-more">Read more</a></p>  
                </div>
                </div>
            </div>
      </div>
    </div>
  </section>
  

<!--customer comments-->

<section id="testimonials" class="py-5">
  <div class="container">
    <h2 class="section-heading text-center mb-4">Customer Says</h2>
    <div id="testimonial-carousel" class="carousel slide" data-bs-ride="carousel">
      <div class="carousel-inner">
        <div class="carousel-item active">
          <div class="card testimonial-card">
            <div class="card-body">
              <blockquote class="blockquote">
                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut tempor turpis in dui consequat faucibus.<br>Lorem ipsum dolor sit amet consectetur, adipisicing elit. Veritatis, debitis nostrum vitae asperiores fugiat, doloremque provident libero recusandae aliquam eaque ducimus cumque. Facilis perspiciatis, natus rerum quibusdam dolore neque esse?</p>
              </blockquote>
            </div>
            <div style= "background-color:  rgb(243, 234, 133);" class="card-footer d-flex align-items-center justify-content-center">
              <img style="height: 200px; width: 200px; padding:5px;" src="images/services.10.jpg" class="testimonial-img" alt="Customer 2">
              <div class="ml-3">
                <h5 class="card-title">Akila Jayalath</h5>
                <p class="card-text">Satisfied Client</p>
              </div>
            </div>
            
          </div>
        </div>
        <!-- Repeat the carousel item markup for other testimonials -->
        <div class="carousel-item">
          <div class="card testimonial-card">
            <div class="card-body">
              <blockquote class="blockquote">
                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut tempor turpis in dui consequat faucibus.<br>Lorem ipsum dolor sit amet consectetur adipisicing elit. Possimus recusandae, repellat architecto molestias illum suscipit, culpa commodi magni a nam dignissimos quam illo sint unde ducimus exercitationem eligendi quos vitae.</p>
              </blockquote>
            </div>
            <div style= "background-color: rgb(243, 234, 133);" class="card-footer d-flex align-items-center justify-content-center">
              <img style="height: 200px; width: 200px; padding:5px;" src="images/services.9.jpg" class="testimonial-img" alt="Customer 2">
              <div class="ml-3">
                <h5 class="card-title">Nayomi Methsara</h5>
                <p class="card-text">Satisfied Client</p>
              </div>
            </div>
          </div>
        </div>
        <!-- Repeat the carousel item markup for other testimonials -->
        <div class="carousel-item">
          <div class="card testimonial-card">
            <div class="card-body">
              <blockquote class="blockquote">
                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut tempor turpis in dui consequat faucibus.<br>Lorem ipsum dolor sit amet consectetur adipisicing elit. Possimus recusandae, repellat architecto molestias illum suscipit, culpa commodi magni a nam dignissimos quam illo sint unde ducimus exercitationem eligendi quos vitae.</p>
              </blockquote>
            </div>
            <div style= "background-color: rgb(243, 234, 133);" class="card-footer d-flex align-items-center justify-content-center">
              <img style="height: 200px; width: 200px; padding:5px;" src="images/services.10.jpg" class="testimonial-img" alt="Customer 2">
              <div class="ml-3">
                <h5 class="card-title">Akila Jayalath</h5>
                <p class="card-text">Satisfied Client</p>
              </div>
            </div>
          </div>
        </div>
        <!-- Repeat the carousel item markup for other testimonials -->
        <div class="carousel-item">
          <div class="card testimonial-card">
            <div class="card-body">
              <blockquote class="blockquote">
                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut tempor turpis in dui consequat faucibus.<br>Lorem ipsum dolor sit amet consectetur adipisicing elit. Possimus recusandae, repellat architecto molestias illum suscipit, culpa commodi magni a nam dignissimos quam illo sint unde ducimus exercitationem eligendi quos vitae.</p>
              </blockquote>
            </div>
            <div style= "background-color: rgb(243, 234, 133);" class="card-footer d-flex align-items-center justify-content-center">
              <img style="height: 200px; width: 200px; padding:5x;" src="images/services.9.jpg" class="testimonial-img" alt="Customer 2">
              <div class="ml-3">
                <h5 class="card-title">Rajitha Pakshwi</h5>
                <p class="card-text">Satisfied Client</p>
              </div>
            </div>
          </div>
        </div>
      </div>
      <button class="carousel-control-prev" type="button" data-bs-target="#testimonial-carousel" data-bs-slide="prev">
        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
        <span class="visually-hidden">Previous</span>
      </button>
      <button class="carousel-control-next" type="button" data-bs-target="#testimonial-carousel" data-bs-slide="next">
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
        <span class="visually-hidden">Next</span>
      </button>
    </div>
  </div>
</section>
<br><br>



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

  <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>

</body>
</html>














