
   <%@include file="header.jsp"%>
<head>
<link rel="stylesheet" href="popupstyle.css">
<style>
body  {
  background-image: url(https://images.unsplash.com/photo-1472289065668-ce650ac443d2?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80.jpg);
  background-size: cover;
}
</style>
  <script>
  $(document).ready(function(){
	  
  $("#otp").hide();

   $(".form-group").on("change",function() {
     $("#otp").show();
   });

  });

  function validation()
  {
	  swal("Good job!", "You clicked the button!", "success");
	  }
  
</script>
  
<!-- <script>

$(document).ready(function(){
    
    $("#otp").hide();
   $("#err").hide();
    $(".err").hide();
    $(".numerr").hide();	
    $(".err1").hide();
    $(".err2").hide();
    var count=0;

    $(".form-group").on("change",function() {
      $("#otp").show();
    });

});


function isCharKey(evt)				
{
	var charCode = (evt.which) ? evt.which : event.keyCode
	if ((charCode >= 65 && charCode <= 91) || (charCode >= 97 && charCode <= 123) || (charCode >= 48 && charCode <= 57))
		return true;
	$("#popup1").show();
	alert("Testing");
	return false;
}

/*Code for reset button*/
$("#restbtn").click(function(){
$("#name").val("");
$("#number").val("");
$("#mail").val("");
$("#sel1").val("course");
});

</script> -->
</head>
<body>
<div class="container">
  <br>

   <div class="row">
    <div class="col" ></div>
    <div class="col" ></div>
    <div class="col" >
      <!-- Nav pills -->
  <ul class="nav nav-tabs" role="tablist">
    <li class="nav-item">
      <a class="nav-link active" data-toggle="tab" href="#register">Register</a>
    </li>
    <li class="nav-item">

      <a class="nav-link" data-toggle="tab" href="#login">Login</a>
    </li>
    
  </ul>

  <!-- Tab panes -->
  <div class="tab-content">
    <div id="register" class="container tab-pane active"><br>
    
    <!-- REGISTERATION FORM BEGINING -->
    
      <form:form method="POST" modelAttribute="registeration" action="/registeration">
      <%@ page import="java.security.SecureRandom" %>
           
           <%
           int refid = (int)(Math.random()*9000)+1000;
          	%>
          	
          	 <form:errors cssClass="error"/> 
          	<div class="form-group">
      <!-- <label for="name">Enter Full Name:</label> -->
      <form:input type="hidden" class="form-control"  path="referenceid" id="ref" value="<%= refid %>" name="referenceid"/>
      <%-- <form:errors path="referenceid" cssClass="error"/> --%>
					
					</div>
  <div class="form-group">

    <!-- <label for="email">Name:</label> -->
   <form:input type="text" class="form-control" path="fullname" name="fullname" onkeypress="return isCharKey(event)" placeholder="Enter Name" id="name"/>
   <!-- <p id="err" class="text-danger">please enter the name before submit and should be more than 3 characters</p> -->
   <form:errors path="fullname" cssClass="error"/>
</div>
  
  <div class="form-group">
  <form:input type="text" class="form-control" path="phonenumber" name="phonenumber" placeholder="Enter Contact Number" id="phone"/>
 <form:errors path="phonenumber" cssClass="error"/>				
  </div>
  
  <div class="form-group">
    <%-- <form:label path="mailid" for="pwd">Mail ID:</form:label> --%>
    <form:input type="text" class="form-control"  path="mailid" name="mailid"  placeholder="Enter Mail ID" id="mail"/>
	<form:errors path="mailid" cssClass="error"/>			
  </div>
  
  <div class="form-group">
  <form:select style="width: 180px" path = "course" name="course" class="form-control" id="sel1">
  <form:option value = "NONE" label = "Select"/>
  <form:options items = "${courses}" />
  </form:select>
</div>

<div class="form-group">
  <!-- <label for="sel1">Select list:</label> -->
  <select style="width: 180px" class="form-control" id="sel1">
      <option>4</option>
  </select>
</div>

<div class="g-recaptcha" name="g-recaptcha-response" data-sitekey="6LeJ9Y4UAAAAAJBgdraRwMJCLu0FNYGrEyRtdUJh"></div>
<br>
  <button type="submit" id="registerButton" onclick="validation();" class="btn btn-primary">Submit</button>
  <button type="reset" class="btn btn-primary">Reset</button>
</form:form>
    </div>
    
       <!-- LOGIN FORM -->
    
    <div id="login" class="container tab-pane fade"><br>
    
       <form:form  method="GET" modelAttribute="loginCandi" action="/Mobile">
  <div class="form-group">
   <form:input type="text" class="form-control" path="referenceid" placeholder="Enter Reference ID" id="email"/>
  </div>
  <div class="form-group">
    <form:input type="text" class="form-control" path="" placeholder="Enter OTP" id="otp"/>
  </div>
  
  <br>
  <button type="submit" class="btn btn-primary">Submit</button>
  <button type="reset" class="btn btn-primary">Reset</button>
</form:form>
   
  </div>

    </div>
  </div>
  </div>
</div>

</body>
<!--  Footer
  <footer class="py-5 bg-dark">
    <div class="container">
      <p class="m-0 text-center text-white">Copyright &copy; Your Website 2019</p>
    </div>
    /.container
  </footer> -->

  <!-- <div class="container">

    Jumbotron Header
    <header class="jumbotron my-4">
      <h1 class="display-3">A Warm Welcome!</h1>
      <p class="lead">Come join the institute to gain the power of knowledge.</p>
      <a href="#" class="btn btn-primary btn-lg">Know more!</a>
    </header>

    Page Features
    <div class="row text-center">

      <div class="col-lg-3 col-md-6 mb-4">
        <div class="card h-100">
          <img class="card-img-top" src="http://placehold.it/500x325" alt="">
          <div class="card-body">
            <h4 class="card-title">Card title</h4>
            <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sapiente esse necessitatibus neque.</p>
          </div>
          <div class="card-footer">
            <a href="#" class="btn btn-primary">Find Out More!</a>
          </div>
        </div>
      </div>

      <div class="col-lg-3 col-md-6 mb-4">
        <div class="card h-100">
          <img class="card-img-top" src="http://placehold.it/500x325" alt="">
          <div class="card-body">
            <h4 class="card-title">Card title</h4>
            <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Explicabo magni sapiente, tempore debitis beatae culpa natus architecto.</p>
          </div>
          <div class="card-footer">
            <a href="#" class="btn btn-primary">Find Out More!</a>
          </div>
        </div>
      </div>

      <div class="col-lg-3 col-md-6 mb-4">
        <div class="card h-100">
          <img class="card-img-top" src="http://placehold.it/500x325" alt="">
          <div class="card-body">
            <h4 class="card-title">Card title</h4>
            <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sapiente esse necessitatibus neque.</p>
          </div>
          <div class="card-footer">
            <a href="#" class="btn btn-primary">Find Out More!</a>
          </div>
        </div>
      </div>

      <div class="col-lg-3 col-md-6 mb-4">
        <div class="card h-100">
          <img class="card-img-top" src="http://placehold.it/500x325" alt="">
          <div class="card-body">
            <h4 class="card-title">Card title</h4>
            <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Explicabo magni sapiente, tempore debitis beatae culpa natus architecto.</p>
          </div>
          <div class="card-footer">
            <a href="#" class="btn btn-primary">Find Out More!</a>
          </div>
        </div>
      </div>

    </div>
    /.row

  </div>
  /.container -->

  