<%@include file="/WEB-INF/views/admin/includes/header.jsp"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery-form-validator/2.3.26/jquery.form-validator.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/jquery-validation@1.19.0/dist/jquery.validate.min.js"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/semantic-ui@2.4.2/dist/semantic.min.css">
<script src="https://cdn.jsdelivr.net/npm/semantic-ui@2.4.2/dist/semantic.min.js"></script>
<link rel="stylesheet" href="https://cdn.datatables.net/1.10.18/css/dataTables.bootstrap4.min.css">
<script src="https://cdn.datatables.net/1.10.18/js/jquery.dataTables.min.js"></script>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<script src="https://cdn.datatables.net/1.10.18/js/dataTables.bootstrap4.min.js"></script><style><style>
*{
font-family: calibri;
}
.label1{
float: right;
padding-top: 5px;
font-size: 18px;
}
.rr {
	background-color: #80CBC4;
}

.col {
	background-color: ECEFF1;
}

#button{

margin-left: 400px;
margin-top: 5px;
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

form.form1 .gray * {
	color: black;
}


@media screen and (max-width: 600px) {
	
	.label1 {
		float: left;
	}
	#button{
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

form.form1 .gray * {
	color: black;
}

</style>

<div class="content-wrapper">


	<!-- Main content -->
	<section class="content container-fluid" id="mainContent">

		<!-- HEADER -->
		
		<section class="content-header">
			<h1>
				Interview Selection Process <small></small>
			</h1>
			<ol class="breadcrumb">
				<li><a href="#"><i class="fa fa-dashboard"></i>Admin</a></li>
				<li class="active"><a href="">Interview Selection Process</a></li>
			</ol>
		</section>
		<br />

		<!-- BODY CONTENT -->


		<div class="container-fluid">


			<div class="card">
				<div class="card-header card bg-info text-white">Interview Selection Process</div>
				<div class="card-body">
				<form id="form1" action="/interviewSelection" method="GET" >
				<!-- modelAttribute="applicationNo" -->
				<span style="color: red; float: right;margin-top: -20px;">*Mandatory Fields</span>
					<div class="panel panel-default" style="border-top-width: 1px; margin-top: 15px; border-top-style: solid;border-bottom-width: 1px;border-bottom-style: solid;border-left-width: 1px;border-left-style: solid;border-right-width: 1px;border-right-style: solid;padding-top: 5px;padding-bottom: 5px;padding-right: 5px;padding-left: 5px;border-color: lavender;">
						<div class="panel-body">
							<div class="col-md-12">
								<div class="row rr" style="background-color: #80CBC4;">
									<div class="col-md-3">
										<label for="academic" class="label1"><span style="color: red;">*</span>Admitted Year
											year:</label>
									</div>
									<div class="col-md-3">
										<!-- <select name="academic" id="academic" class="browser-default custom-select col"
											style="width: 207;">
											<option value="default">-- select--</option>
											<option value="1">2019-2020</option>
											<option value="2">2020-2021</option>
											<option value="3">2021-2022</option>
										</select> -->
										<select path="onlineApplicationYear" name="academic" class="browser-default custom-select col" style="width: 207;" id="admittedYear">
									<option value="default" label="Select Program*"/>
									<%-- <form:options items = "${courses}" /> --%>
									<c:forEach var="programCo" items="${fromProgramConfig}">
										<option value="${programCo.onlineApplicationYear}">${programCo.onlineApplicationYear}</option>
									</c:forEach>
								</select><input type="text" class="form-control" id="idForm"
											name="" placeholder=""
											style="width: 225;" hidden>
									</div>
									<div class="col-md-3">
										<label for="type" class="label1"><span style="color: red;">*</span>Program
											Type:</label>
									</div>
									<div class="col-md-3">
										<!-- <select name="type" id="type" class="browser-default custom-select col"
											style="width: 207;">
											<option value="default">-- select--</option>
											<option value="1">One</option>
											<option value="2">Two</option>
											<option value="3">Three</option>
										</select> -->
										<select path="programType" name="type" class="browser-default custom-select col"
											style="width: 207;" id="programType">
									<option value="default" label="Select Program*"/>
									<%-- <form:options items = "${courses}" /> --%>
									<c:forEach var="programCo" items="${fromCourseEntry}">
										<option value="${programCo.programType}">${programCo.programType}</option>
									</c:forEach>
								</select>
									</div>
								</div>
								</br>
								<!-- row ended -->
								<div class="row rr" style="background-color: #80CBC4;">
									<div class="col-md-3">
										<label for="program" class="label1"><span style="color: red;">*</span>Program:</label>
									</div>
									<div class="col-md-3">
										<select path="program" class="browser-default custom-select col"
											style="width: 207;" name="program" id="program">
									<option value="default" label="Select Program*"/>
									<%-- <form:options items = "${courses}" /> --%>
									<c:forEach var="programCo" items="${fromCourseEntry}">
										<option value="${programCo.program}">${programCo.program}</option>
									</c:forEach>
								</select>
									</div>
									<div class="col-md-3">
										<label for="course" class="label1"><span style="color: red;">*</span>Course:</label>
									</div>
									<div class="col-md-3">
										<!-- <select name="course" id="course" class="browser-default custom-select col"
											style="width: 207;">
											<option value="default">-- select--</option>
											<option value="1">BCA</option>
											<option value="2">BBM</option>
											<option value="3">MBA</option>
										</select> -->
										<select class="browser-default custom-select col"
											style="width: 207;" name="course" id="course">
									<option value="default" label="--Select Course--"/>
									<%-- <form:options items = "${courses}" /> --%>
									<c:forEach var="programCo" items="${fromCourseEntry}">
										<option value="${programCo.courseName}">${programCo.courseName}</option>
									</c:forEach>
								</select>
									</div>
									</div><!-- row ended -->
									</br>
										<div class="row rr" style="background-color: #80CBC4;">
									<div class="col-md-3">
										<label for="sch" class="label1"><span style="color: red;">*</span>Interview Type:</label>
									</div>
									<div class="col-md-3">
										<select path="program" class="browser-default custom-select col"
											style="width: 207;" name="interviewType" >
									<option value="default" label="Select Program*"/>
									<%-- <form:options items = "${courses}" /> --%>
									<c:forEach var="programCo" items="${fromInterviewDefinition}">
										<option value="${programCo.interviewType}">${programCo.interviewType}</option>
									</c:forEach>
								</select>
									</div>
									<div class="col-md-3">
										<label for="Scheme" class="label1"><span style="color: red;">*</span>Entrance Exam Marks Cutoff:</label>
									</div>
									<div class="col-md-3">
										<input type="text" name="entranceCutOff" class="browser-default custom-select col" id="entranceExamMarksCutoff"
											style="width: 207;">
									</div>
								</div>
								<!-- row ended -->
							
							<!-- column md 12 ended -->
							<br/>
<!-- <div class="row rr" style="background-color: #80CBC4;">
									<div class="col-md-3">
										<label for="sch" class="label1"><span style="color: red;">*</span>Interviewers Per Panel:</label>
									</div>
									<div class="col-md-3">
										<input type="text" class="browser-default custom-select col"
											style="width: 207;" id="interviewPerPanel">
									</div>
									
								</div> -->



</div>
						</div>
						<!-- panel body ended -->
					</div>
					<!-- panel ended --></br></br>


					
					<button type="Submit" id="button" class="btn btn-lg btn-success"><span class="glyphicon glyphicon-ok"></span>Submit</button>
						
						<button type="Reset" id="reset" class="btn btn-lg btn-danger"
							style="margin-left: 10px; margin-top: 10px;"><span class="glyphicon glyphicon-repeat">Reset</button>
					
					
					</form>
					<hr>
					
					<div class="panel panel-default"
					style="border-top-width: 1px; border-top-style: solid; border-bottom-width: 1px; border-bottom-style: solid; border-right-width: 1px; border-right-style: solid; border-left-width: 1px; border-left-style: solid; padding-top: 5px; padding-right: 5px; padding-left: 5px; border-color: whitesmoke; margin-bottom: 8px;">
					<div class="panel-body">
						
					</div>
				</div>
					


				</div>
				<!-- card body ended -->
				<div class="card-footer card bg-info text-white"></div>

			</div>
			<!-- card ended -->
		</div>

	</section>
<script>


$.validator.addMethod("valueNotEquals", function(value, element, arg){
	  return arg !== value;
	 }, "Value must not equal arg.");
	  
$("#form1").validate({
		rules:{
		
			academic:
			{
				valueNotEquals: "default"
				},
				type: 
					{
					valueNotEquals: "default"
					},
					
					program:
					{
						valueNotEquals: "default"
						},
						course:
						{
							valueNotEquals: "default"
							},
							sch:
							{
								valueNotEquals: "default"
								},
								Scheme:
								{
									valueNotEquals: "default"
									}
								

									},
	messages:{
		
		academic: 
		{
		 valueNotEquals: "Please select the academic year"
			  },
			type: 
				{
				 valueNotEquals: "Please select the program Type"
					  },
		
		program: 
		{
		 valueNotEquals: "Please select the program"
			  },
			  course: 
				{
				 valueNotEquals: "Please select the course"
					  },
					  
					  sch: 
						{
						 valueNotEquals: "Please select the Scheme/Course"
							  },
							  Scheme: 
								{
								 valueNotEquals: "Please select the course"
									  } 

		

	}
	});

</script>


	<%-- <%@include file="admin/includes/footer.jsp"%> --%>
<%@include file="/WEB-INF/views/admin/includes/footer.jsp"%>
	<%-- <%@include file="admin/includes/footer.jsp"%> --%>