<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" 
	integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" 
	crossorigin="anonymous">
	
	<link rel="stylesheet" href="Bootstrap/css/bootstrap.css" type="text/css">
 	<link rel="stylesheet" 
     href="https://use.fontawesome.com/releases/v5.7.0/css/all.css" 
     integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ" 
     crossorigin="anonymous">
<meta charset="ISO-8859-1">

<title>Feedback - Event Zone</title>
<style>
body {
  background-image: url('images/ems5.jpg');
  background-repeat: no-repeat;
  background-attachment: fixed;  
  background-size: cover;

}
</style>
</head>
<body>
<!--Navbar-->
<nav class="navbar navbar-expand-lg navbar-light" style="background-color: #e3f2fd;">

  <!-- Navbar brand -->
  <a class="navbar-brand" href="#">Event Zone</a>

  <!-- Collapse button -->
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#basicExampleNav"
    aria-controls="basicExampleNav" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <!-- Collapsible content -->
  <div class="collapse navbar-collapse" id="basicExampleNav">

    <!-- Links -->
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link"  href="#">Home
          <span class="sr-only">(current)</span>
        </a>
      </li>
      <li class="nav-item">
        <a class="nav-link active" href="#">Post An Events<span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">Request An Event</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">Complain</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">User Account</a>
      </li>


    </ul>
  </div>
  <!-- Collapsible content -->

</nav>
<!--/.Navbar-->

		<div class="container col-md-5" style="margin-top:4cm;">
        <div class="card">
        <div class="card-body">
                    
		<caption>
			<h2>Feedback</h2>
		</caption>
		
		<form method="post" action="insert1">
		<fieldset class="form-group" >
		<label>Email</label><input type="text" class="form-control" name="email" required="required">
		</fieldset>
		
		<fieldset class="form-group" >
		<label>Subject</label>
		<select  class="form-control" name="subject">
			<option value = "complaint">Complaint</option>
			<option value="newidea">New Ideas</option>
			<option value="other">Other</option>
		</select>
		</fieldset>
		
		<fieldset class="form-group" >
		<label>Description</label> <textarea name="des" rows="4" cols="50" class="form-control"></textarea>
		
		</fieldset>
		
		<button type="submit" class="btn btn-outline-dark" value="send"> Submit </button>
		
		<button type="submit" class="btn btn-outline-dark" value="send"> <a href="readcomplaint.jsp">All Comments</a> </button>
		
		
		
	</form>
	</div>
	</div>
	</div>
<footer class="page-footer font-small indigo" style="background-color:#d9d9d9; margin-top:3cm;">

  <!-- Footer Links -->
  <div class="container">

    <!-- Grid row-->
    <div class="row text-center d-flex justify-content-center pt-5 mb-3">

      <!-- Grid column -->
      <div class="col-md-2 mb-3">
        <h6 class="text-uppercase font-weight-bold">
          <a href="#!">About us</a>
        </h6>
      </div>
      <!-- Grid column -->

      <!-- Grid column -->
      <div class="col-md-2 mb-3">
        <h6 class="text-uppercase font-weight-bold">
          <a href="#!">Service</a>
        </h6>
      </div>
      <!-- Grid column -->

      <!-- Grid column -->
      <div class="col-md-2 mb-3">
        <h6 class="text-uppercase font-weight-bold">
          <a href="#!">Events</a>
        </h6>
      </div>
      <!-- Grid column -->

      <!-- Grid column -->
      <div class="col-md-2 mb-3">
        <h6 class="text-uppercase font-weight-bold">
          <a href="#!">Help</a>
        </h6>
      </div>
      <!-- Grid column -->

      <!-- Grid column -->
      <div class="col-md-2 mb-3">
        <h6 class="text-uppercase font-weight-bold">
          <a href="#!">Contact</a>
        </h6>
      </div>
      <!-- Grid column -->

    </div>
    <!-- Grid row-->
    <hr class="rgba-white-light" style="margin: 0 15%;">

    <!-- Grid row-->
    <div class="row d-flex text-center justify-content-center mb-md-0 mb-4">

      <!-- Grid column -->
      <div class="col-md-8 col-12 mt-5">
        <p style="line-height: 1rem">Event Zone
          </p>
      </div>
      <!-- Grid column -->

    </div>
    <!-- Grid row-->
    <hr class="clearfix d-md-none rgba-white-light" style="margin: 10% 15% 5%;">

    <!-- Grid row-->
    <div class="row pb-3">

      <!-- Grid column -->
      <div class="col-md-12">

        <div class="mb-5 flex-center">
		<div style="margin-left: 11cm;">
          <!-- Facebook -->
          <a class="fb-ic">
            <i class="fab fa-facebook-f fa-lg white-text mr-4"> </i>
          </a>
          <!-- Twitter -->
          <a class="tw-ic">
            <i class="fab fa-twitter fa-lg white-text mr-4"> </i>
          </a>
          <!-- Google +-->
          <a class="gplus-ic">
            <i class="fab fa-google-plus-g fa-lg white-text mr-4"> </i>
          </a>
          <!--Linkedin -->
          <a class="li-ic">
            <i class="fab fa-linkedin-in fa-lg white-text mr-4"> </i>
          </a>
          <!--Instagram-->
          <a class="ins-ic">
            <i class="fab fa-instagram fa-lg white-text mr-4"> </i>
          </a>
          <!--Pinterest-->
          <a class="pin-ic">
            <i class="fab fa-pinterest fa-lg white-text"> </i>
          </a>
		</div>
        </div>

      </div>
      <!-- Grid column -->

    </div>
    <!-- Grid row-->

  </div>
  <!-- Footer Links -->

  <!-- Copyright -->
  <div class="footer-copyright text-center py-3">© 2020 Copyright:
    <a href="https://mdbootstrap.com/"> EventZone.com</a>
  </div>
  <!-- Copyright -->

</footer>
<!-- Footer -->	

</body>
</html>