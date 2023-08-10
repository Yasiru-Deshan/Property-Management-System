<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
  <title>EstateMatriX - Real Estate Website </title>

  
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.0.2/css/bootstrap.min.css">
<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.0.2/js/bootstrap.bundle.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" integrity="sha512-***" crossorigin="anonymous" />
<link rel="stylesheet" href="styles/Home.css">
  <style>

  /*navigation bar start css*/
    .navbar-custom {
      background-color: #e2c313; 
      color: #ffffff; /* Text color */
      border-bottom:50px solid white ;
      
    }
    .navbar-custom .navbar-nav .nav-link {
      color: #ffffff; /* Link text color */
    }

    /*navigation bar end css*/

    /*footer css code start*/

    .footer {
      background-color: #e2c313; 
      color: #ffffff; /* Text color */
    }

    .footer a{
      text-decoration: none;
      color: white;
      font-size: 18px;
    }

    /*footer css code end*/

    /*slide show image code start*/

    .carousel-item img {
  filter: none;

}

/*.carousel-caption h3 {
    font-size: ;
  }*/

  /*slide show image code end*/

  /*auction part start css*/

   .auction-list {
      margin-top: 20px;
    }

    /*auction part end css*/

     .custom-margin {
      margin-right: 10px;}
/*css of counting part*/

      .col h1 {
  color: #e2c313;
  text-align: center;
}

.count {
  width: 50px; /* Adjust the width to your desired value */
  margin: 0 auto; /* Center the elements horizontally */
  text-align: center;
}
  </style>

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
          <img style="height:600px;" src="https://kinsta.com/wp-content/uploads/2021/11/about-us-page.png" class="d-block w-100" alt="Image 1">
          <div class="carousel-caption">
            <h1>About us</h3> 
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

<br><br>
<!-- Content start-->
<div class="container">
    <div class="row">
      <div class="col-md-4 mb-4">
        <div class="card h-100">
          <img style="height: 150px; width: 150px;" src="images/about.2.png" class="card-img-top" alt="About Us"> 
          <div class="card-body">
            <h5 class="card-title">About Us</h5>
            <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut tempor turpis in dui consequat faucibus.<br>Lorem ipsum dolor sit amet consectetur adipisicing elit. Tenetur, animi. Repellat impedit eligendi odit culpa, reiciendis ducimus animi consequuntur accusantium maiores soluta dolores porro repellendus quod repudiandae inventore nisi ea.<br>Lorem ipsum dolor sit amet consectetur adipisicing elit. Animi numquam sed architecto optio nisi quidem excepturi, maiores quis laudantium ea perferendis, harum molestiae eos fugiat rem error earum aliquam! Vitae.</p>
          </div>
        </div>
      </div>
      <div class="col-md-4 mb-4">
        <div class="card h-100">
          <img style="height: 150px; width: 150px;" src="images/about.3.png" class="card-img-top" alt="Mission">
          <div class="card-body">
            <h5 class="card-title">Our Vission</h5>
            <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut tempor turpis in dui consequat faucibus.<br> Lorem ipsum dolor sit, amet consectetur adipisicing elit. At harum distinctio excepturi nesciunt ab dolores fugit neque blanditiis debitis dolorum, quas fugiat maiores totam reiciendis aperiam? Maxime cum ex dolorum.,<br>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Asperiores eaque fuga officia facere ratione consequatur. Odio maxime facilis aperiam dignissimos repellendus in a explicabo est, dolores doloremque, eos eaque fugiat.</br></p>
          </div>
        </div>
      </div>
      <div class="col-md-4 mb-4">
        <div class="card h-100">
          <img style="height: 150px; width: 150px;" src="images/about.4.png" class="card-img-top" alt="Goals">
          <div class="card-body">
            <h5 class="card-title">Our Mission</h5>
            <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut tempor turpis in dui consequat faucibus.<br>Lorem ipsum dolor sit amet consectetur, adipisicing elit. Eius eum quod illo quisquam. Tempore ex similique mollitia facilis numquam. Architecto iusto veritatis, veniam sapiente commodi impedit. Id perspiciatis explicabo fugiat?<br>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Asperiores deleniti consequuntur, delectus, voluptate, perferendis maiores repudiandae exercitationem dignissimos magnam vero culpa sint atque praesentium soluta excepturi sit voluptatem ab laboriosam.</p>
          </div>
        </div>
      </div>
    </div>
  </div>
  
  <!-- content end-->












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
             <h6>EstateMAtriX Real Estate<br>colombo 07 <br> Sri Lanka</h6>
            
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
      &copy; Copyright EstateMatriX All Right Reserved.
    </div>
  </footer>

<!-- end Footer-->

  <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>

</body>
</html>














