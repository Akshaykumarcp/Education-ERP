<%@include file="/WEB-INF/views/admin/includes/header.jsp"%>

<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">

<!-- jQuery library -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<!-- Popper JS -->
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>

<!-- Latest compiled JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery-form-validator/2.3.26/jquery.form-validator.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/jquery-validation@1.19.0/dist/jquery.validate.min.js"></script>
<style>
* {
	font-family: calibri;
}

#button {
	margin-left: 450px;
}

.label1 {
	float: right;
	padding-top: 5px;
	font-size: 18px;
}

.rr{
background-color: #80CBC4;
}
.col{
background-color: ECEFF1;
}

@media screen and (max-width: 600px) {
	.label1 {
		float: left;
	}
	#button {
		margin-left: 100px;
	}
}

orm.commentform label.error, label.error {
	/* remove the next line when you have trouble in IE6 with labels in list */
	color: red;
	font-style: calibri
}

div.error {
	display: none;
}

input {
	border: 1px solid black;
}

input:focus {
	border: 1px solid black;
}

input.error {
	border: 1px solid red;
}

select {
	border: 1px solid black;
}

select:focus {
	border: 1px solid black;
}

select.error {
	border: 1px solid red;
}

form.form .gray * {
	color: black;
}
</style>

<div class="content-wrapper">


	<!-- Main content -->
	<section class="content container" id="mainContent">

		<!-- HEADER -->

		<section class="content-header">
			<h1>
				Application Form <small></small>
			</h1>
			<ol class="breadcrumb">
				<li><a href="#"><i class="fa fa-dashboard"></i>HomePage</a></li>
				<li class="active">Application Form</li>
			</ol>
		</section>

		<br />

		<!-- BODY CONTENT -->


		<div class="container">

			<div class="card">
				<div class="card-header card bg-info text-white">Application
					Form</div>
				<div class="card-body">
					<form id="form">
						<div class="row rr">
							<div class="col-md-3">
								<label for="application" class="label1"><span
									style="color: red;">*</span>Application Form:</label>
							</div>
							<div class="col-md-3">
								<input type="text" name="application" id="application"
									class="form-control col">
								<p id="app">Enter Only digits</p>
							</div>
							<div class="col-md-3">
								<label for="academic" class="label1"><span
									style="color: red;">*</span>Academic Year:</label>
							</div>
							<div class="col-md-3">
								<select name="academic" id="academic"
									class="browser-default custom-select col">
									<option value="default">-- select--</option>
									<option value="1">2019-2020</option>
									<option value="2">2020-2021</option>
									<option value="3">2021-2022</option>
								</select>
							</div>

						</div>
						</br>
						</br>
						<!-- row ended -->
						<button type="submit" id="button" class="btn btn-lg btn-success">Submit</button>
				</div>
				<!-- card body -->
				</form>
				<div class="card-footer card bg-info text-white"></div>
			</div>




		</div>
		<!-- container ended -->


	</section>

</div>
<!-- wrapper class ended -->

<script>
$(document).ready(function() {
	$("#app").hide();
});
	


$.validator.addMethod("valueNotEquals", function(value, element, arg){
	  return arg !== value;
	 }, "Value must not equal arg.");


$("#form").validate({
	rules:{
	 application:{
		  required: true,
		  digits: true
	 },
		academic:
		{
			valueNotEquals: "default"
			}
										
	},

messages:{

	 application:{
		  required: "Please Enter Number",
		  digits: "Enter Only digits"
	 },
	

			academic: 
	{
	 valueNotEquals: "Please select the academic year"
		  }
						 
	

}
});



</script>

<%@include file="/WEB-INF/views/admin/includes/footer.jsp"%>
