<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    
   <!DOCTYPE html>
<html>
<head>
  <title>EstateMatriX - Real Estate Website </title>

<!-- jQuery -->

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>

  
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.0.2/css/bootstrap.min.css">
<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.0.2/js/bootstrap.bundle.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" integrity="sha512-***" crossorigin="anonymous" />
<link rel="stylesheet" href="Home.css">
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

.carousel-caption h3 {
    font-size: ;
  }

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
 
<nav class="navbar navbar-expand-lg navbar-dark" style=" background: linear-gradient(to left, #fdfc47, #24fe41);">
 
  <a class="navbar-brand" href="/real-estate-management-system/">EstateMatrix</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>


</nav>

</body>

  <!--sign up form start-->


<div style="width:1500px;" class="row justify-content-center">
  <div class="col-4">
    <img style="margin-top:70px; height: 650px; margin-bottom:60px;" src="https://img.freepik.com/premium-vector/illustration-vector-graphic-cartoon-character-login_516790-1261.jpg?w=2000" class="img-fluid" alt="...">
  </div>
  <div style="margin-top:70px; margin-bottom:60px; background-color:#E9EAED ;" class="col-4">
    <div style="margin-bottom: 50px;" class="container">
  <h2 style="padding:30px;" class="text-center mb-4">Log In</h2>
 <form action="login" method="post">

    
   
    <div class="form-group">
      <label for="email">E mail:</label>
      <input type="email" class="form-control" id="email" name="email" placeholder="Enter valid email">
    </div>

    <div class="form-group">
      <label for="password">Password:</label>
      <input type="password" class="form-control" id="password" name="password" placeholder="Enter password">
    </div> 

  
    
   <br>
    <button style="background-color:#e2c313;" type="submit" class="btn btn-primary btn-block">Log In</button>
  </form>
 <center>
  <a href="/real-estate-management-system/alogin-page">Log in as admin</a></center>

</div>

<script>
    // Check if there's an error message and show an alert
    var error = "${error}";
    if (error) {
        alert(error);
    }
</script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
   
  </div>
</div>


<!--sign up form end-->

</body>
</html>


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
             <h6>Real Bidz auctions<br>colombo 07 <br> Sri Lanka</h6>
            
            </li>


            <li>

              <h6>www.RealBidz@gmail.com</h6>
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
              <a href="#!">apartment</a>
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
      &copy; Copyright RealBidz All Right Reserved.
    </div>
  </footer>

<!-- end Footer-->

    
</body>
</html> 
    
    
