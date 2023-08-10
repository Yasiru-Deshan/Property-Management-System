<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
  <title>EstateMatriX - Real Estate Website </title>

<!-- jQuery -->



  
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.0.2/css/bootstrap.min.css">
<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.0.2/js/bootstrap.bundle.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" integrity="sha512-***" crossorigin="anonymous" />
<link rel="stylesheet" href="/Home.css">
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

<!--slide show-->

<div id="carouselExample" class="carousel slide" data-bs-ride="carousel">
  <ol class="carousel-indicators">
    <li data-bs-target="#carouselExample" data-bs-slide-to="0" class="active"></li>
    <li data-bs-target="#carouselExample" data-bs-slide-to="1"></li>
    <li data-bs-target="#carouselExample" data-bs-slide-to="2"></li>
  </ol>
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img style="height:700px;" src="https://media.daft.ie/eyJidWNrZXQiOiJtZWRpYW1hc3Rlci1zM2V1IiwiZWRpdHMiOnsicmVzaXplIjp7ImZpdCI6ImNvdmVyIiwid2lkdGgiOjcyMCwiaGVpZ2h0Ijo0ODB9fSwib3V0cHV0Rm9ybWF0IjoianBlZyIsImtleSI6IjEvMC8xMDExYmVjNjBjODZiYzRhOTMxMDVjOThlZmJiYTU4Zi5qcGcifQ==?signature=07eb8ae425d2ad8d82c7b3771daf6fa0348df3bcee1f62689dba7e9874db41e5" class="d-block w-100" alt="Image 1">
      <div class="carousel-caption">
        <h1>WE ARE EstateMatriX</h3>
        <p>Find your dream state with us.</p>
        
      </div>
    </div>
    <div class="carousel-item">
      <img style="height: 700px;" src="https://media.istockphoto.com/id/511061090/photo/business-office-building-in-london-england.jpg?s=612x612&w=0&k=20&c=nYAn4JKoCqO1hMTjZiND1PAIWoABuy1BwH1MhaEoG6w=" class="d-block w-100" alt="Image 2">
      <div class="carousel-caption">
        <h1>WE ARE EstateMatriX</h3>
        <p>Find your dream state with us.</p>
        
      </div>
    </div>
    <div class="carousel-item">
      <img style="height: 700px;" src="https://cdn.pixabay.com/photo/2018/11/06/22/29/land-3799279_640.jpg" class="d-block w-100" alt="Image 3">
      <div class="carousel-caption">
        <h1>WE ARE EstateMatriX</h3>
        <p>Find your dream state with us.</p>
        
      </div>
    </div>
  </div>
  <a class="carousel-control-prev" href="#carouselExample" role="button" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </a>
  <a class="carousel-control-next" href="#carouselExample" role="button" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </a>
</div>

<!--slide show end-->

<!--adding text start-->


<div style="padding: 80px;" class="container">
    <div class="row">
     
     
      <button> <h3>Click here to see what's new</h3></button>

      </div>
    </div>
  </div>

<!--adding text end-->





<!--start comments section-->

<div style="margin-top:100px;" class="container">
  <div class="row">
    <div class="col">
     <img style="width:200px; height: 200px; border-radius: 100px;" src="https://media.licdn.com/dms/image/C4E03AQGSqKjxS0q63Q/profile-displayphoto-shrink_800_800/0/1618440370970?e=2147483647&v=beta&t=mr3sZeqtYc4yQj1SM-anrbLnvcTADMImYuGDmYIZBl8"><br><br>
      <h3>Hasini Fernando</h3><br>

     <b><p>"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."</p></b>
    </div>
    <div class="col order-12">
      <img style="width:200px; height: 200px; border-radius: 100px;" src="https://media.licdn.com/dms/image/C5603AQF5NoXNYF-yFw/profile-displayphoto-shrink_800_800/0/1575690387012?e=2147483647&v=beta&t=gumCQPrgI37IB9XavS6WkJLzUSfd0fTPKa7GBqmuY3A"><br><br>

      <b><h3>jene piris</h3><br>
      <p>"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."</p></b>
   </div>
    <div class="col order-12">
       <img style="width:200px; height: 200px; border-radius: 100px;" src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTJcTNCc5E7irq576w2I1BWhBMu6N4UZCl6GA&usqp=CAU"><br><br>

       <b><h3>Indunil Rathnaye</h3><br>
       <p>"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."</p></b>
    </div>
    
  </div>
</div>

<br><br><br>
<!--end comment section-->

<!--start counting part-->
<div>
  <div style="background-color:#F9FAFE; padding:10px;" class="row">
    <div class="col">
      <h1 class="count">569</h1>
      <p style="text-align: center;"># of buy properties</p>
    </div>
    <div class="col">
      <h1 class="count">446</h1>
      <p style="text-align: center;">number of sell properties</p>
    </div>
    <div class="col">
      <h1 class="count">3456</h1>
      <p style="text-align: center;">All of The properties</p>
    </div>
    
  </div>
</div>


<!--end counting part-->

<!--final text start-->
<br><br>

<div class="final">
  
<h1 style="padding:40px; color: rgb(0, 0, 37); text-align: center;">Be a part of our growing real state agents</h1><br>
<button style="background-color: #f1e393; margin-bottom: 50px; border-radius: 100px; width: 300px; padding:10px 5px ; color: black; margin-left: 35%;" type="button" class="btn btn-primary">  <b> Apply for a real agent</button>

</final>

<!--final text end-->

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














