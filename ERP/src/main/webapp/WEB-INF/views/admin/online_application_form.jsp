<%@include file="/WEB-INF/views/admin/includes/header.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

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

.col {
	background-color: ECEFF1;
}

#button {
	margin-left: 400px;
	margin-top: 5px;
}

@media screen and (max-width: 600px) {
	#button {
		margin-left: 56px;
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

email {
	border: 1px solid black;
}

email:focus {
	border: 1px solid black;
}

email.error {
	border: 1px solid red;
}

form.form .gray * {
	color: black;
}
</style>
<div class="content-wrapper ">


	<!-- Main content -->
	<section class="content container-fluid" id="mainContent">

		<!-- HEADER -->

		<section class="content-header">
			<h1>
				Online Application <small></small>
			</h1>
			<ol class="breadcrumb">
				<li><a href="#"><i class="fa fa-dashboard"></i>HomePage</a></li>
				<li class="active">Online Application</li>
			</ol>
		</section>

		<br />

		<!-- BODY CONTENT -->


		<div class="container">

			<div class="card">
				<div class="card-header bg-info text-white">Online Application</div>
				<div class="card-body">
					<form:form id="form" method="POST"
						modelAttribute="onlineApplicationForm" action="/onlineApplicationForm">
						<span style="color: red; float: right;">* mandatory fields</span>
						</br>
						<div class="panel panel-default"
							style="border-top-width: 1px; border-top-style: solid; border-bottom-width: 1px; border-bottom-style: solid; margin-right: 0px; border-left-width: 1px; border-left-style: solid; border-right-width: 1px; border-right-style: solid; padding-top: 15px; padding-bottom: 5px; padding-left: 5px; padding-right: 5px; border-color: lavender;">
							<div class="panel-body">
								<div class="col-md-12">
									<div class="row">
										<div class="col-md-4">
											<label for="type"><span style="color: red;">*</span>Program
												Type:</label> 
												
												<form:select path="programType" class="browser-default custom-select col">
									<form:option value="default" label="Select Program*"/>
									<%-- <form:options items = "${courses}" /> --%>
									<c:forEach var="programCo" items="${fromCourseEntry}">
										<option value="${programCo.programType}">${programCo.programType}</option>
									</c:forEach>
								</form:select>
																					
										</div>
										<div class="col-md-4">
											<label for="program"><span style="color: red;">*</span>Program:</label>
									
									<form:select path="program" class="browser-default custom-select col">
									<form:option value="default" label="Select Program*"/>
									<%-- <form:options items = "${courses}" /> --%>
									<c:forEach var="programCo" items="${fromCourseEntry}">
										<option value="${programCo.program}">${programCo.program}</option>
									</c:forEach>
								</form:select>
									
											<%-- <form:select name="program" path="program"
												class="browser-default custom-select col">
												<option value="default">-- select--</option>
												<option value="1">One</option>
												<option value="2">Two</option>
												<option value="3">Three</option>
											</form:select> --%>
										</div>
										<div class="col-md-4">
											<label for="preference"><span style="color: red;">*</span>First
												Preference:</label> <form:select name="preference" path="firstPreference"
												class="browser-default custom-select col">
												<option value="default">-- select--</option>
												<option value="English">English</option>
												<option value="French">French</option>
												<option value="Sanskrit">Sanskrit</option>
												<option value="Korean">Korean</option>
											</form:select>
										</div>


									</div>
									</br>
									<!-- row ended -->

									<div class="row">
										<div class="col-md-4">
											<label for="namer"><span style="color: red;">*</span>Candidate
												Name(As per SSLC):</label> <form:input name="namer" type="text" path="CandiateName"
												class="form-control col"/>
										</div>
										<div class="col-md-4">
											<label for Dob><span style="color: red;">*</span>DOB:</label>
											<form:input name="Dob" type="date" class="form-control col" path="DOB"/>
										</div>
										<div class="col-md-4">
											<label for="category"><span style="color: red;">*</span>Student
												Category (Domicile Status):</label> <form:select name="category" path="studentCategory"
												class="browser-default custom-select col">
												<option value="default">-- select--</option>
												<option value="1">One</option>
												<option value="2">Two</option>
												<option value="3">Three</option>
											</form:select>
										</div>


									</div>
									</br>
									<!-- row ended -->
									<div class="row">
										<div class="col-md-4">
											<label for="number"><span style="color: red;">*</span>Number:</label>
											<form:input type="number" name="number" id="number" path="phoneNumber"
												class="form-control col"/>


										</div>
										<div class="col-md-4">
											<label for="email"><span style="color: red;">*</span>Email:</label>
											<form:input type="email" name="email" class="form-control col" path="eMail"/>

										</div>
										<div class="col-md-4">
											<label for="remail"><span style="color: red;">*</span>Re-Confirm
												e-mail:</label> 
												<form:input type="email" name="remail" path="confirmEmail"
												class="form-control col"/>
										</div>


									</div>
									<!-- row ended -->

								</div>
								<!-- Div col-md-12 ended -->
							</div>
							<!-- panel body ended -->
							</br>
							<div>
								<form:checkbox path="termsAndCondition" value="agreed"/><span
									style="margin-left: 25px;">Yes, I have understood the
									application fee terms ans I have remitted the application fee
									and have two copies of the Bank application Fee Challan with
									the Reference Number, Journal Number, Branch Code and Date of
									Transaction.</span>
							</div>
							</br>
						</div>
						<!-- panel ended -->
						<button type="Submit" id="button" class="btn btn-lg btn-success">Continue</button>

						<button type="Reset" id="reset" class="btn btn-lg btn-danger"
							style="margin-left: 10px; margin-top: 5px;">Reset</button>

					</form:form>
				</div>
				<!-- card body ended -->
				<div class="card-footer bg-info text-white"></div>
			</div>
			<!-- card ended -->




		</div>


	</section>

</div>
<script>
$(document).ready(function() {
	
	$("#code").keypress(function (e) {
		 //if the letter is not digit then display error and don't type anything
	     if (e.which != 8 && e.which != 0 && (e.which < 48 || e.which > 57)) 
	        //display error message
	        /*$("#errmsg").html("Digits Only").show().fadeOut("slow");*/
	               return false;
			
		});
	
});


$.validator.addMethod("valueNotEquals", function(value, element, arg){
	  return arg !== value;
	 }, "Value must not equal arg.");
	  
$("#form").validate({
		rules:{
		
			type:
			{
				valueNotEquals: "default"
				},
				program: 
					{
					valueNotEquals: "default"
					},
					
					preference:
					{
						valueNotEquals: "default"
						},
						namer: "required",
							Dob: "required",
								category:
								{
									valueNotEquals: "default"
									},
									code: "required",
									number: 
										{
										required: true,
										digits: true
										},
									email: "required",
									remail: "required"
								

									},
	messages:{
		
		type:
		{
			valueNotEquals: "Please Select Program Type"
			},
			program: 
				{
				valueNotEquals: "Please Select Program"
				},
				
				preference:
				{
					valueNotEquals: "Please Enter First Preference"
					},
					namer: "Please Enter The Name",
						Dob: "Please Enter DOB",
							category:
							{
								valueNotEquals: "Please Enter Student Category"
								},
								code: "Please Enter The Code",
								number: 
								{
								required: "Please Enter a Number",
								digits: "please Enter a valid 10 digit Number"
								},
								email: "Please Enter Email",
								remail: "Please Confirm Email"
		

	}
	});


</script>
<%@include file="/WEB-INF/views/admin/includes/footer.jsp"%>


