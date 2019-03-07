<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

  <!-- <link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" type="text/css" rel="stylesheet"> -->
  <!-- <link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css"> -->
  
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css">
  <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">

  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js"></script>
  <script src='https://www.google.com/recaptcha/api.js'></script>
   <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	<!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script> -->
			<script>
			$(document).ready(function(){
				("header page");
				 $("#allstudents").click(function(){
					alert("Hi");
			swal("Good job!", "You clicked the button!", "success");
			}); 
			});
		</script>

<body>
<!-- Navigation Bar -->

<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
  <!-- Brand/logo -->
  <a class="navbar-brand" href="/">Credessol College Management</a>
  
  <!-- Links -->
  <ul class="navbar-nav">
    <li class="nav-item">
    <!-- data-target="#myModal" -->
      <a class="nav-link" data-toggle="modal" >Online Admission</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="#">Attendance</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="#">Fee Structure</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="#">Fee Structure</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="/home">Admin Login</a>
    </li>
  </ul>
</nav>
<br/>


<!-- jumbotron -->

<!-- <div class="container">
<div class="jumbotron text-center">
  <h1>"Knowledge Is Power"</h1> 
  <p>Welcome to Credessol College Management</p> 
</div>
</div> -->

<!-- Modal -->

 <!-- The Modal -->
  <%-- <div class="modal fade" id="myModal">
    <div class="modal-dialog modal-lg">
      <div class="modal-content">
      
        <!-- Modal Header -->
        <div class="modal-header">
          <h4 class="modal-title">Admission Registration Form</h4>
          <button type="button" class="close" data-dismiss="modal">&times;</button>
        </div>
        
        <!-- Modal body -->
        <div class="modal-body">
        
        <!-- Form Begining -->
        
           <form:form method="POST" modelAttribute="register"  action="/registeration">
           
           <%@ page import="java.security.SecureRandom" %>
           
           <%
           
           
           /*  final String AB = "0123456789";
       	 SecureRandom rnd = new SecureRandom();
       	
       	StringBuilder sb = new StringBuilder();
		   for( int i = 0; i < 8; i++ ) 
		      sb.append( AB.charAt( rnd.nextInt(AB.length()) ) ); */
		   /* int refid = (int)sb.toString(); */
       	int refid = (int)(Math.random()*9000)+1000;
       	%>
       	
       	<div class="form-group form-inline col-6 horizontal ">
      <!-- <label for="name">Enter Full Name:</label> -->
      <form:input type="hidden" class="form-control"  path="referenceid" id="ref" value="<%= refid %>" name="ref"/>
      <div class="has-error">
						<form:errors path="referenceid" class="help-inline"/>
					</div>
					</div>
       	
           <div class="form-group form-inline col-6 ">
      <label for="name">Enter Full Name:</label>
      <form:input type="text" class="form-control"  path="fullname" id="name" placeholder="Enter Full Name" name="name"/>
      <div class="has-error">
						<form:errors path="fullname" class="help-inline"/>
					</div>
    </div>
    <div class="form-group form-inline col-6 ">
      <label for="contact">Enter Contact Number:</label>
      <form:input type="text" class="form-control"  path="phonenumber" id="contact" placeholder="Enter Contact Number" name="contact"/>
      <div class="has-error">
						<form:errors path="phonenumber" class="help-inline"/>
					</div>
    </div>
    <div class="form-group form-inline col-6 ">
      <label for="email">Email:</label>
      <form:input type="email" class="form-control" path="mailid" id="emailid" placeholder="Enter email" name="email"/>
      <div class="has-error">
						<form:errors path="mailid" class="help-inline"/>
					</div>
    </div>
    <div class="form-group form-inline col-6 ">
      <label for="course">Select Course:</label>
      <form:select class="form-control" path = "course">
                     <form:option value = "NONE" label = "Select"/>
                     <form:options items = "${courses}" />
      </form:select> 
    </div>
    <div class="form-group form-inline col-6 ">
    <div class="g-recaptcha" name="g-recaptcha-response" data-sitekey="6LeJ9Y4UAAAAAJBgdraRwMJCLu0FNYGrEyRtdUJh"></div>
    </div>
    <!-- <div class="form-group form-check">
      <label class="form-check-label">
        <input class="form-check-input" type="checkbox" name="remember"> Remember me
      </label>
    </div> -->
    <button type="submit" id="allstudents" class="btn btn-primary">Submit</button>
  </form:form>
        </div>
        
        <!-- Modal footer -->
        <div class="modal-footer">
          <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        </div>
        
      </div>
    </div>
  </div> --%>