<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>AdminLTE 2 | Log in</title>
<!-- Tell the browser to be responsive to screen width -->
<meta
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no"
	name="viewport">
<!-- Bootstrap 3.3.7 -->
<link rel="stylesheet"
	href="bower_components/bootstrap/dist/css/bootstrap.min.css">
<!-- Font Awesome -->
<link rel="stylesheet"
	href="bower_components/font-awesome/css/font-awesome.min.css">
<!-- Ionicons -->
<link rel="stylesheet"
	href="bower_components/Ionicons/css/ionicons.min.css">
<!-- Theme style -->
<link rel="stylesheet" href="dist/css/AdminLTE.min.css">
<!-- iCheck -->
<link rel="stylesheet" href="plugins/iCheck/square/blue.css">

<!-- Google Font -->
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">

<style>
body {
	background-image:
		url(https://images.unsplash.com/photo-1498243691581-b145c3f54a5a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80.jpg);
	background-size: cover;
}
</style>
</head>
<body class="hold-transition login-page">
	<div class="login-box">
		<div class="login-logo">
			<!-- <a href="index2.html"><b>Admin</b>LTE</a> -->
		</div>
		<!-- /.login-logo -->
		<div class="login-box-body"
			style="margin-left: 350px; margin-right: -350px;">
			<!-- " margin-bottom: -800px; margin-top: 300px; "> -->
			<p class="login-box-msg" style="font-size: xx-large;">Login</p>
			<hr
				style="margin-top: -15px; width: 80px; background-color: pink; height: 2px; border: none;">


			<form action="/adminLogin" method="GET">
				<c:if test="${error ne null}">
				<%-- <span style="color:red">${error}</span> --%>
					<div class="alert alert-danger">
      					${error}
      				</div>
				</c:if>
				<div class="form-group has-feedback">
				<!-- <input type="email" class="form-control" placeholder="Email" required> -->
				<!-- <div  [ngClass]="displayCss('name')">
    <input class="form-control" type="text" formControlName="name" [(ngModel)]="name" placeholder="Enter Your Youtube Link" required>

  </div>  
 -->
				<input type="email" class="form-control" id="email"
					placeholder="Email" name="mailid" autocomplete="off"
					oninvalid="this.setCustomValidity('Please Enter a valid mail ID')"
					onchange="try{setCustomValidity('')}catch(e){}"
					style="font-family: calibri;"> <span
					class="glyphicon glyphicon-envelope form-control-feedback"></span>
				<p id="error" style="color: red;">Please Enter a valid Email</p>
			</div>
			<div class="form-group has-feedback">
				<input type="password" id="password" class="form-control"
					placeholder="Password" name="password"> <span
					class="glyphicon glyphicon-lock form-control-feedback"></span>
				<p id="error1" style="color: red;">Please Enter the Password</p>

			</div>
			<div class="row">
				<div class="col-xs-8">
					<!-- <div class="checkbox icheck">
            <label>
              <input type="checkbox"> Remember Me
            </label>
          </div> -->
					</br>
				</div>
				<!-- /.col -->
				<div class="col-xs-4">

					<button type="submit" id="submit"
						class="btn btn-primary btn-block btn-flat"
						style="margin-top: 10px; margin-left: -170px;">SignIn</button>
					<button type="reset" id="reset"
						class="btn btn-primary btn-block btn-flat"
						style="margin-top: -34px; background-color: red; border-block-end-color: red; border-block-color: red; border-block-start-color: red; align-content:; border-color: red; margin-left: -60px;">Reset</button>


				</div>
				<!-- /.col -->
			</div>
			</form>

			<!-- <div class="social-auth-links text-center">
      <p>- OR -</p>
      <a href="#" class="btn btn-block btn-social btn-facebook btn-flat"><i class="fa fa-facebook"></i> Sign in using
        Facebook</a>
      <a href="#" class="btn btn-block btn-social btn-google btn-flat"><i class="fa fa-google-plus"></i> Sign in using
        Google+</a>
    </div> -->
			<!-- /.social-auth-links -->
			</br> <a href="#">I forgot my password..?</a><br>
			<!-- <a href="register.html" class="text-center">Register a new membership</a> -->

		</div>
		<!-- /.login-box-body -->
	</div>
	<!-- /.login-box -->

	<!-- jQuery 3 -->
	<script src="bower_components/jquery/dist/jquery.min.js"></script>
	<!-- Bootstrap 3.3.7 -->
	<script src="bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
	<!-- iCheck -->
	<script>
$(document).ready(function() {
    $('#error').hide();
    $('#error1').hide();
    $('#submit').click(function(){
   	 var mail=$("#email").val();
   		   	 if( mail == '')
       	 { 
   		 $('#error').show();
   		 $("#email").css("border-color","red");
   		 
   	 }
   		   	 var pass = $("#password").val();
   		   	 if( pass == '')
   	   		   	 {
   		   			$('#error1').show();
      				 $("#password").css("border-color","red");
   	   		   	 }	   	
    });


    $("#email").keypress(function(){
        var mail=$("#email").val();
  var regex = /^([a-zA-Z0-9_.+-])+\@(([a-zA-Z0-9-])+\.)+([a-zA-Z0-9]{2,4})+$/;
  var ress=regex.test(mail);
if(ress)
{
$("#email").css("border-color","green");
$("#error").hide();
}
else
{
$("#error").show();
$("#email").css("border-color","red");
}
	
});
    $("#password").keypress(function(){
    var pass = $("#password").val().length;
    /* var regex=/^(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?!.*\s).*$/;
    var ress=regex.test(pass); */
    if(pass => 1)
    	{
    		$("#password").css("border-color","green");
    		$("#error1").hide();
    		}
    		else
    		{
    		$("#error1").show();
    		$("#password").css("border-color","red");
    		}
    });
    $("#reset").click(function() { 
    	$("#email").val([]);
    	$("#password").val([]);
        });
    });
</script>
</body>
