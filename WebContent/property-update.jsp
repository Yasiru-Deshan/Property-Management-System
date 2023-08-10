<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>

<html>
<head>
  <title>EstateMatriX - Real Estate Website </title>

<!-- Add these links in the <head> section of your HTML -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>

  
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


<nav class="navbar navbar-expand-lg navbar-dark" style="background: linear-gradient(to right, #ffe000, #799f0c);">
 
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
          <img style="height:600px;" src="https://www.inca-accountants.co.uk/wp-content/uploads/2016/12/house-for-sale.jpg" class="d-block w-100" alt="Image 1">
          <div class="carousel-caption">
            <h1>Sell Property</h3> 
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





<div class="container">
    <br><br>
    <p> Lorem ipsum dolor, sit amet consectetur adipisicing elit. Cumque eveniet nobis, dolor ipsum culpa accusamus in consectetur quibusdam natus, assumenda pariatur placeat quasi at nostrum nisi veritatis deserunt magnam dolorum.<br> Lorem ipsum dolor sit amet consectetur adipisicing elit. Repellat non veniam adipisci quo dolorem optio iure? Dignissimos laborum perferendis ab nulla quos, blanditiis, unde iste itaque fuga facilis sunt adipisci!<br> Lorem ipsum dolor sit amet consectetur adipisicing elit. Repellat, harum odit? Deleniti, consectetur non laudantium facilis iste quibusdam culpa! Delectus maiores optio dolorem provident assumenda sapiente expedita recusandae eligendi ratione.<br><br></p>

    
            <form action="update" method="post">
          <input type="hidden" name="id" value="${property.id}">
        
    <label for="fname">First Name:</label>
    <input type="text" id="fname" value="${property.fname}" name="fname" required><br>

    <label for="lname">Last Name:</label>
    <input type="text" id="lname" value="${property.lname}" name="lname" required><br>

    <label for="email">Email:</label>
    <input type="email" id="email" value="${property.email}" name="email" required><br>

    <label for="mobile">Mobile:</label>
    <input type="text" id="mobile" value="${property.mobile}" name="mobile" required><br>

    <label for="nic">NIC:</label>
    <input type="text" id="nic" value="${property.nic}" name="nic" required><br>

    <label for="category">Category:</label>
    <input type="text" id="category" value="${property.category}" name="category" required><br>

    <label for="image">Image URL:</label>
    <input type="text" id="image" value="${property.image}" name="image" required><br>

    <label for="address">Address:</label>
    <input type="text" id="address" value="${property.address}" name="address" required><br>

    <label for="description">Description:</label>
    <textarea id="description" name="description" required>${property.description}</textarea><br>

    <button type="submit" class="btn btn-success">Save</button>
    </form>

    <br><br>
</div>


</body>
</html>

<style> 
form {
  max-width: 400px;
  margin: 0 auto;
}

label {
  display: block;
  margin-bottom: 5px;
  font-weight: bold;
}

input[type="text"],
input[type="email"],
textarea,
select {
  padding: 10px;
  font-size: 16px;
  border: 1px solid #ccc;
  border-radius: 4px;
  width: 100%;
  margin-bottom: 10px;
}

input[type="file"] {
  margin-bottom: 10px;
}

input[type="submit"] {
  padding: 10px 20px;
  font-size: 16px;
  background-color: #e2c313;
  color: white;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}

input[type="submit"]:hover {
  background-color: #45a049;
}
</style>


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

</body>
</html>














