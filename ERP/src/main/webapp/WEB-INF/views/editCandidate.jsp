<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>

<html>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js"></script>
  <script src='https://www.google.com/recaptcha/api.js'></script>
  <script src="//maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css"></script>
  
  <style>
body  {
/* https://images.unsplash.com/photo-1457369804613-52c61a468e7d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80.jpg */
  background-image: url(https://images.unsplash.com/photo-1498243691581-b145c3f54a5a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80.jpg);
  background-size: cover;
}
</style>
  
</head>

<body>

 	<div class="container">
 	
 	<h1>Edit Candidate Details</h1>
 	
	<form:form method="POST" modelAttribute="editregister" class="form-horizontal" action="/saveCandidate">

<div class="row">
			<div class="form-group col-md-12">
				<label class="col-md-3 control-lable" for="firstName">ID</label>
				<div class="col-md-7">
					<form:input type="hidden" path="id"  class="form-control input-sm"/>
					<div class="has-error">
						<form:errors path="id" class="help-inline"/>
					</div>
				</div>
			</div>
		</div>

		<div class="row">
			<div class="form-group col-md-12">
				<label class="col-md-3 control-lable" for="firstName">Full Name</label>
				<div class="col-md-7">
					<form:input path="fullname"  class="form-control input-sm"/>
					<div class="has-error">
						<form:errors path="fullname" class="help-inline"/>
					</div>
				</div>
			</div>
		</div>
		
		<div class="row">
			<div class="form-group col-md-12">
				<label class="col-md-3 control-lable" for="phonenumber">Phone Number</label>
				<div class="col-md-7">
					<form:input type="text" path="phonenumber" id="firstName" class="form-control input-sm"/>
					<div class="has-error">
						<form:errors path="phonenumber" class="help-inline"/>
					</div>
				</div>
			</div>
		</div>

		<div class="row">
			<div class="form-group col-md-12">
				<label class="col-md-3 control-lable" for="mail">Mail ID</label>
				<div class="col-md-7">
					<form:input type="text" path="mailid" id="lastName" class="form-control input-sm"/>
					<div class="has-error">
						<form:errors path="mailid" class="help-inline"/>
					</div>
				</div>
			</div>
		</div>

		<div class="row">
			<div class="form-group col-md-12">
				 
      <label for="course">Select Course:</label>
      <%-- <div class="dropdown">
    <form:button type="button"  path="course" class="btn btn-secondary dropdown-toggle" data-toggle="dropdown">
      Dropdown button
    </form:button>
    <div class="has-error">
						<form:errors path="course" class="help-inline"/>
					</div>
    <div class="dropdown-menu">
      <h5 class="dropdown-header">Dropdown header</h5>
      <a class="dropdown-item" href="#">Link 1</a>   
      <h5 class="dropdown-header">Dropdown header</h5>
      <a class="dropdown-item" href="#">Another link</a>
    </div>
  </div> --%>
  <div class="col-md-7">
  <form:select class="form-control" path = "course">
                     <form:option value = "NONE" label = "Select"/>
                     <form:options items = "${courses}" />
      </form:select>
      </div>
    </div>
			</div>
		
	

		<div class="row">
			<div class="form-actions floatRight">
				<input type="submit" value="Edit" class="btn btn-primary btn-sm">
			</div>
		</div>
	</form:form>
	</div>
</body>
</html>