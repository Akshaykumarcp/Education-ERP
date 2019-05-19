<%@include file="/WEB-INF/views/admin/includes/header.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<meta name="viewport" content="width=device-width, initial-scale=1">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery-form-validator/2.3.26/jquery.form-validator.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/jquery-validation@1.19.0/dist/jquery.validate.min.js"></script>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/semantic-ui@2.4.2/dist/semantic.min.css">
<script
	src="https://cdn.jsdelivr.net/npm/semantic-ui@2.4.2/dist/semantic.min.js"></script>
	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<script src="bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
<!-- DataTables -->
<script
	src="bower_components/datatables.net/js/jquery.dataTables.min.js"></script>
<script
	src="bower_components/datatables.net-bs/js/dataTables.bootstrap.min.js"></script>

<style>
* {
	font-family: calibri;
}

.label1 {
	float: right;
}

.rr {
	background-color: F1F8E9;
}

.col {
	background-color: ECEFF1;
}

#buttonCourseEntry {
	margin-left: 450px;
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

form.courseentry .gray * {
	color: black;
}

@media screen and (max-width: 600px) {
	.label1 {
		float: left;
	}
	#button {
		margin-left: 75px;
	}
}
</style>
<div class="content-wrapper">


	<!-- Main content -->
	<section class="content container-fluid" id="mainContent">

		<!-- HEADER -->

		<section class="content-header">
			<h1>
				Course Entry <small></small>
			</h1>
			<ol class="breadcrumb">
				<li><a href="#"><i class="fa fa-dashboard"></i>Admin</a></li>
				<li class="active"><a href="">Course_Entry</a></li>
			</ol>
		</section>

		<br />

		<!-- BODY CONTENT -->
		<!-- <div class="container"> -->



		<div class="card">
			<div class="card-header card bg-info text-white">Course Entry</div>
			<div class="card-body">
 
				<span style="color: red; float: right; margin-top: -20px;">*Mandatory
					Fields</span>
				<form id="courseEntryForm">
					<div class="panel panel-default"
						style="block-size: 1; color: black; size: 1px; border-top-width: 1px; border-top-style: solid; border-right-width: 1px; border-right-style: solid; border-left-width: 1px; border-left-style: solid; border-bottom-width: 1px; border-bottom-style: solid; border-color: lavender; padding-top: 5px;">
						<div class="panel-body">
							<div class="col-md-12">
								<div class="row rr">
									<div class="col-md-3">
										<label for="programtype" class="label1"><span
											style="color: red;">*</span>Program Type: </label>
									</div>
									<!-- column ended -->
									<div class="col-md-3">
										<select id="programType" name="programType" class="browser-default custom-select col" style="width: 207;">
									<option value="default">-- select--</option>
									<%-- <form:options items = "${courses}" /> --%>
									<c:forEach var="program" items="${adminProgramTypesAndProgramFromProgramConfig}">
										<option value="${program.programType}">${program.programType}</option>
									</c:forEach>
								</select>
										<!-- <select id="programType" name="programtype"
											class="browser-default custom-select col" style="width: 207;">
											<option value="default">-- select--</option>
											<option value="1">One</option>
											<option value="2">Two</option>
											<option value="3">Three</option>
										</select> -->
									</div>
									<!--  column ended -->
									<div class="col-md-3">
										<label for="program" class="label1"><span
											style="color: red;">*</span>Program: </label>
									</div>
									<div class="col-md-3">
									<select id="program" name="program" class="browser-default custom-select col" style="width: 207;">
									<option value="default">-- select--</option>
									<%-- <form:options items = "${courses}" /> --%>
									<c:forEach var="program" items="${adminProgramTypesAndProgramFromProgramConfig}">
										<option value="${program.program}">${program.program}</option>
									</c:forEach>
								</select>
								<input type="text" class="form-control col" id="idForm"
											hidden >
										<!-- <select id="program" name="program"
											class="browser-default custom-select col" style="width: 207;">
											<option value="default">-- select--</option>
											<option value="1">One</option>
											<option value="2">Two</option>
											<option value="3">Three</option>
										</select> -->
									</div>
									<!--  column ended -->
								</div>
								<!-- row ended -->
								</br>

								<div class="row rr">
									<div class="col-md-3">
										<label for="coursecode" class="label1"><span
											style="color: red;">*</span>Course Code: </label>
									</div>
									<!-- column ended -->
									<div class="col-md-3">
										<input type="text" class="form-control col" id="courseCode"
											name="courseCode" placeholder="Enter Course Code">


									</div>
									<!--  column ended -->
									<div class="col-md-3">
										<label for="coursename" class="label1"><span
											style="color: red;">*</span>Course Name: </label>
									</div>
									<div class="col-md-3">
										<input type="text" id="courseName" name="courseName"
											class="form-control col" placeholder="Enter Course Name">
									</div>
									<!--  column ended -->
								</div>
								</br>
								<!-- row ended -->


								<div class="row rr">
									<div class="col-md-3">
										<label for="maximumintake" class="label1"><span
											style="color: red;">*</span>Maximum Intake: </label>
									</div>
									<!-- column ended -->
									<div class="col-md-3">
										<input type="text" class="form-control col" id="maximumIntake"
											name="maximumIntake" placeholder="Enter Course Code">


									</div>
									<!--  column ended -->
									<div class="col-md-3">
										<label class="label1">Course Name in Certificate: </label>
									</div>
									<div class="col-md-3">
										<input type="text" class="form-control col"
											id="courseNameInCertificate" name="courseNameInCertificate" placeholder="Enter Course Name">
									</div>
									<!--  column ended -->
								</div>
								</br>
								<!-- row ended -->


								<div class="row rr">
									<div class="col-md-3">
										<label class="label1">Pay Code: </label>
									</div>
									<!-- column ended -->
									<div class="col-md-3">
										<input type="text" class="form-control col" id="payCode"
											placeholder="Enter Pay Code">
									</div>
									<!--  column ended -->
									<div class="col-md-3">
										<label class="label1">Course name for Sem Marks Card </label>
									</div>
									<div class="col-md-3">
										<input type="text" class="form-control col"
											id="courseNameForSemMarkscard" name="courseNameForSemMarkscard"
											placeholder="Enter Course Name">
									</div>
									<!--  column ended -->
								</div>
								</br>
								<!-- row ended -->


								<div class="row rr">
									<div class="col-md-3">
										<label class="label1">Application Fee: </label>
									</div>
									<!-- column ended -->
									<div class="col-md-3">
										<input type="text" class="form-control col"
											id="applicationFee" placeholder="Enter Application Fee">
									</div>
									<!--  column ended -->
									<div class="col-md-3">
										<label for="application" class="label1"><span
											style="color: red;">*</span>Application Fee( International )
										</label>
									</div>
									<div class="col-md-3">
										<select id="applicationFeeInternational" name="applicationFeeInternational"
											class="browser-default custom-select col" style="width: 207;">
											<option value="default">-- select--</option>
											<option value="2000">2000</option>
											<option value="4000">4000</option>
											<option value="6000">6000</option>
										</select>

									</div>
									<!--  column ended -->
								</div>
								</br>
								<!-- row ended -->

								<div class="row rr">
									<div class="col-md-3">
										<label class="label1">Work Experience Required: </label>
									</div>
									<!-- column ended -->
									<div class="col-md-3">
										<fieldset id="group1">
											<div class="inline col">
												<input id="workExperience" type="radio" value="Yes"
													name="workExperience"> <label>Yes</label> <input
													id="workExperience2" type="radio" value="No"
													name="workExperience" checked> <label>No</label>
											</div>
										</fieldset>
									</div>
									<!--  column ended -->
									<div class="col-md-3">
										<label class="label1">Is Detail Marks Print: </label>
									</div>
									<div class="col-md-3">
										<fieldset id="group2">
											<div class="inline col">
												<input id="isDetailMarksPrint" type="radio" value="Yes"
													name="isDetailMarksPrint"> <label>Yes</label> <input
													id="isDetailMarksPrint2" type="radio" value="No"
													name="isDetailMarksPrint" checked> <label>No</label>
											</div>
										</fieldset>

									</div>
									<!--  column ended -->
								</div>
								</br>
								<!-- row ended -->

								<div class="row rr">
									<div class="col-md-3">
										<label class="label1">Work Experience Mandatory: </label>
									</div>
									<!-- column ended -->
									<div class="col-md-3">
										<fieldset id="group3">
											<div class="inline col">
												<input id="workExperienceManditory" type="radio"
													value="Yes" name="workExperienceManditory"> <label>Yes</label> <input
													id="workExperienceManditory2" type="radio" value="No"
													name="workExperienceManditory" checked> <label>No</label>
											</div>
										</fieldset>
									</div>
									<!--  column ended -->
									<div class="col-md-3">
										<label class="label1">Appear in online: </label>
									</div>
									<div class="col-md-3">
										<fieldset id="group4">
											<div class="inline col">
												<input id="appearInOnline" type="radio" value="Yes"
													name="appearInOnline"> <label>Yes</label> <input
													id="appearInOnline2" type="radio" value="No"
													name="appearInOnline" checked> <label>No</label>
											</div>
										</fieldset>

									</div>
									<!--  column ended -->
								</div>
								</br>
								<!-- row ended -->

								<div class="row rr">
									<div class="col-md-3">
										<label class="label1">Application Processing SMS: </label>
									</div>
									<!-- column ended -->
									<div class="col-md-3">
										<fieldset id="group5">
											<div class="inline col">
												<input id="applicationProcessingSms" type="radio"
													value="Yes" name="applicationProcessingSms"> <label>Yes</label> <input
													id="applicationProcessingSms2" type="radio" value="No"
													name="applicationProcessingSms" checked> <label>No</label>
											</div>
										</fieldset>
									</div>
									<!--  column ended -->
									<div class="col-md-3">
										<label class="label1">Only For Application: </label>
									</div>
									<div class="col-md-3">
										<fieldset id="group6">
											<div class="inline col">
												<input id="onlyForApplication" type="radio" value="Yes"
													name="onlyForApplication"> <label>Yes</label> <input
													id="onlyForApplication2" type="radio" value="No"
													name="onlyForApplication" checked> <label>No</label>
											</div>
										</fieldset>

									</div>
									<!--  column ended -->
								</div>
								</br>
								<!-- row ended -->

								<div class="row rr">
									<div class="col-md-3">
										<label class="label1">Bank Name(For Smart Card): </label>
									</div>
									<!-- column ended -->
									<div class="col-md-3">
										<input type="text" id="bankNameForSmartcard"
											class="form-control col" placeholder="Enter Bank Name">
									</div>
									<!--  column ended -->
									<div class="col-md-3">
										<label class="label1">Bank Full Name: </label>
									</div>
									<div class="col-md-3">
										<input type="text" id="bankFullName" class="form-control col"
											placeholder="Enter Bank Full Name">
									</div>
									<!--  column ended -->
								</div>
								</br>
								<!-- row ended -->

								<div class="row rr">
									<div class="col-md-3">
										<label class="label1">Bank Section: </label>
									</div>
									<!-- column ended -->
									<div class="col-md-3">
										<fieldset id="group7">
											<div class="inline col">
												<input type="radio" id="bankSection" value="Yes"
													name="bankSection"> <label>Yes</label> <input
													type="radio" id="bankSection2" value="No" name="bankSection" checked>
												<label>No</label>
											</div>
										</fieldset>

									</div>
									<!--  column ended -->
									<div class="col-md-3">
										<label class="label1">Course Commencement Date: </label>
									</div>
									<div class="col-md-3">
										<input type="date" id="courseCommencementDate">
									</div>
									<!--  column ended -->
								</div>
								</br>
								<!-- row ended -->

								<div class="row rr">
									<div class="col-md-3">
										<label for="campus" class="label1"><span
											style="color: red;">*</span>Campus </label>
									</div>
									<!-- column ended -->
									<div class="col-md-3">
										<select id="campus" name="campus"
											class="browser-default custom-select col" style="width: 207;">
											<option value="default">-- select--</option>
											<option value="1">One</option>
											<option value="2">Two</option>
											<option value="3">Three</option>
										</select>

									</div>
									<!--  column ended -->
									<div class="col-md-3">
										<label class="label1">No of midsem Repeat Attempts </label>
									</div>
									<div class="col-md-3">
										<select id="noOfMidsemRepeatAttempts"
											class="browser-default custom-select col" style="width: 207;">
											<option value="default">-- select--</option>
											<option value="1">One</option>
											<option value="2">Two</option>
											<option value="3">Three</option>
										</select>

									</div>
									<!--  column ended -->
								</div>
								</br>
								<!-- row ended -->


								<div class="row rr">
									<div class="col-md-3">
										<label for="department" class="label1"><span
											style="color: red;">*</span>Parent Department: </label>
									</div>
									<!-- column ended -->
									<div class="col-md-3">
										<select id="parentDepartment" name="parentDepartment"
											class="browser-default custom-select col" style="width: 207;">
											<option value="default">-- select--</option>
											<option value="1">One</option>
											<option value="2">Two</option>
											<option value="3">Three</option>
										</select>

									</div>
									<!--  column ended -->
									<div class="col-md-3">
										<label class="label1">Attendance Marks Calculated By </label>
									</div>
									<div class="col-md-3">
										<fieldset id="group8">
											<div class="inline col">
												<input type="radio" id="attendanceMarksCalculatedBy"
													value="Yes" name="attendanceMarksCalculatedBy"> <label>Credit</label> <input
													type="radio" id="attendanceMarksCalculatedBy2" value="No"
													name="attendanceMarksCalculatedBy" checked> <label>Percentage</label>
											</div>
										</fieldset>
									</div>
									<!--  column ended -->
								</div>
								</br>
								<!-- row ended -->




							</div>
							<!-- Ful column ended -->
							
						</div>
						<!-- Panel body ended -->
					</div>
					</br>
					<!-- panel Ended -->

					<div class="panel panel-default"
						style="border-top-width: 1px; border-top-style: solid; border-bottom-width: 1px; border-bottom-style: solid; border-right-width: 1px; border-right-style: solid; border-left-width: 1px; border-left-style: solid; padding-top: 5px; padding-right: 5px; padding-left: 5px; border-color: lavender; margin-bottom: 8px;">
						<div class="panel-body">
							<div class="table-responsive">
								<table class="table table-bordered table-hover">
									<caption style="caption-side: top; color: black;">Seat
										allocation</caption>
									<thead>
										<tr style="background-color: #80CBC4; color: white;">
											<th>SI.NO</th>
											<th>Admitted Through</th>
											<th>Number of seats</th>
										</tr>
									</thead>
									<tbody>
										<tr class="col form-group">
											<td>1</td>
											<td>Indian Nationals</td>
											<td><input type="number" id="indianNationals" class="form control val prc"></td>
										</tr>
										<tr class="col form-group">
											<td>2</td>
											<td>NRI and SAARC Nationals</td>
											<td><input type="number" id="nriAndSaarc" class="form control val prc"></td>
										</tr>
										<tr class="col form-group">
											<td>3</td>
											<td>Other Foreign Nationals</td>
											<td><input type="number" id="foriegnNationals" class="form control val prc"></td>

										</tr>
										<tr style="background-color: #80CBC4; color: white;">
											<td></td>
											<td style="text-align: right;">Total</td>
											<!-- <td><input type="text" class="form control val"></td> -->
											<td><output class="result" id="totalSeats"></output></td>
 
										</tr>
									</tbody>
								</table>
							</div>
							<!-- responsive table -->
							
						</div>
						<!-- Panel body -->
					</div>
					<!-- panel -->
					<button type="Submit" id="buttonCourseEntry" class="btn btn-success">Submit</button>

					<button type="Reset" id="reset" class="btn btn-danger"
						style="margin-left: 10px; margin-top: 5px;">Reset</button>

				</form>

				<div class="panel panel-default"
					style="border-top-width: 1px; border-top-style: solid; border-bottom-width: 1px; border-bottom-style: solid; border-right-width: 1px; border-right-style: solid; border-left-width: 1px; border-left-style: solid; padding-top: 5px; padding-right: 5px; padding-left: 5px; border-color: whitesmoke; margin-bottom: 8px;">
					<div class="panel-body">
						<div class="table-responsive">
							<table id="tblCourse" class="table table-bordered table-hover">
								<thead>
									<tr style="background-color: #80CBC4; color: white;">
										<th>SI.NO</th>
										<th>Program Type</th>
										<th>Program</th>
										<th>Course Name</th>
										<th>Maximum Intake</th>
										<th>Autonomous</th>
										<th>Work Experience Required</th>
										<th>Is Detail Marks</th>
										<th>Pay Code</th>
										<th>Application Fee</th>
										<th>Application Fee(international)</th>
										<th>Assign Department</th>
										<th>Edit</th>
										<th>Delete</th>
									</tr>
								</thead>
								<tbody>
								
								</tbody>
							</table>
						</div>
					</div>
				</div>

			</div>
			<!-- card body ended -->
			<div class="card-footer card bg-info"></div>
		</div>
		<script>



		
		$(document).ready(function() {
		   // $('#example4').DataTable();
		   
		   $('.form-group').on('input','.prc',function()
				   {
						var totalsum=0;
$('.form-group .prc').each(function(){
	var inputval = $(this).val();
	if($.isNumeric(inputval))
		{
			totalsum+=parseFloat(inputval);
		}
});
$('.result').text(totalsum);
			   });

getAllCourseEntry();
		
		    
		    
		    	$(".val").keypress(function (e) {
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

		$.validator.setDefaults( {

			submitHandler: function () {


                                            var courseEntry = {};
                    						var dynamicURL = "";
                    						var methodName = "";
                    						var status = "";
                            				/* $("#buttonCourseEntry").click(function(){ */
                            						/* event.preventDefault();  */
                            						
                            						courseEntry.programType = $('#programType').val();
                            						courseEntry.program = $('#program').val();
                            						courseEntry.courseCode = $('#courseCode').val();
                            						courseEntry.courseName = $('#courseName').val();
                            						courseEntry.maximumIntake = $('#maximumIntake').val();
                            						courseEntry.courseNameInCertificate = $('#courseNameInCertificate').val();
                            						courseEntry.payCode = $('#payCode').val();
                            						courseEntry.courseNameForSemMarkscard = $('#courseNameForSemMarkscard').val();
                            						courseEntry.applicattionFee = $('#applicattionFee').val();
                            						courseEntry.applicationFeeInternational = $('#applicationFeeInternational').val();
                            						courseEntry.workExperience = $("input[name='workExperience']:checked").val();
                            						courseEntry.isDetailMarksPrint = $("input[name='isDetailMarksPrint']:checked").val();
                            						/* courseEntry.seatNoGenerationRequied = $('#seatNoGenerationRequied').val(); */
                            						courseEntry.workExperienceManditory = $("input[name='workExperienceManditory']:checked").val();
                            						courseEntry.appearInOnline = $("input[name='appearInOnline']:checked").val();
                            						courseEntry.applicationProcessingSms = $("input[name='applicationProcessingSms']:checked").val();
                            						courseEntry.onlyForApplication = $("input[name='onlyForApplication']:checked").val();
                            						courseEntry.bankNameForSmartcard = $('#bankNameForSmartcard').val();
                            						courseEntry.bankFullName = $('#bankFullName').val();
                            						courseEntry.bankSection = $("input[name='bankSection']:checked").val();
                            						courseEntry.courseCommencementDate = $('#courseCommencementDate').val();
                            						courseEntry.campus = $('#campus').val();
                            						courseEntry.noOfMidsemRepeatAttempts = $('#noOfMidsemRepeatAttempts').val();
                            						courseEntry.parentDepartment = $('#parentDepartment').val();
                            						courseEntry.attendanceMarksCalculatedBy =$("input[name='attendanceMarksCalculatedBy']:checked").val();
                            						courseEntry.indianNationals = $('#indianNationals').val();
                            						courseEntry.nriAndSaarc = $('#nriAndSaarc').val();
                            						courseEntry.foriegnNationals = $('#foriegnNationals').val();
                            						courseEntry.totalSeats = $('#totalSeats').val();

                            						
                            		                         					var courseEntryId = $('#idForm').val();
                            		                         					alert("course id-->"+courseEntryId);
                            		                         					if(courseEntryId)
                            		                         						{
                            		                         						dynamicURL="http://localhost:8080/updateCourseEntryById/"+courseEntryId;
                            		                         						methodName="PUT";
                            		                         						status="Updated"
                            		                         						}
                            		                         					else
                            		                         						{
                            		                         						dynamicURL="http://localhost:8080/loadAdminCourseEntry";
                            		                         						methodName="POST";
                            		                         						status="Saved"
                            		                         						}

                            						
                            			 			var courseEntryObj = JSON.stringify(courseEntry);
                            			 			
                            					$.ajax({
                            								url:dynamicURL,
                            								method:methodName,
                            								data: courseEntryObj,
                            								contentType:'application/json; charset=utf-8',
                            								success: function ()
                            								{
                            									swal(status+" Successfully.", {
                            										buttons: false,
                            										timer: 1000,
                            										});
                            									/* getAllProgramEntry(); */
                            									getAllCourseEntry();
                            									reset();
                            								},
                            								error: function (error)
                            								{
                            									alert(error+"yes!");
                            								}
                            							});
                            				/* }); */



                                            
        /*     var formData = new FormData($('#form')[0]);

         // var a = $(#login).val;
               $.ajax({
                   url: 'registration.php',
                   type: 'POST',
                   data: formData,
                //   async: false,
                   success: function (data) {
                    alert(data);
                    console.log(data);
                       $( "#messages" ).html( "<p class='alert alert-success'><strong>" + data + "</strong></p>" );  
                       $( "#messages" ).fadeOut(4000); 
                    //  alert(data);
                      
                   },
                   cache: false,
                   contentType: false,
                   processData: false
               }); */

               

               return false;
            



				

			}

		} );
		  
  $("#courseEntryForm").validate({
		rules:{
			courseCode: "required",
			courseName: "required",
			maximumIntake: "required",
			programType:
			{
				valueNotEquals: "default"
				},
				program: 
					{
					valueNotEquals: "default"
					},
				campus: 
				{
				valueNotEquals: "default"
				},
				parentDepartment: 
				{
				valueNotEquals: "default"
				}
		
					
		},
	messages:{
		coursecode: "Please Enter The Program code",
		coursename:"Please Enter The Program",
		maximumintake: "Please Enter The Maximum Intake ",
		programtype: 
		{
		 valueNotEquals: "Please select the program Type"
			  },
			program: 
				{
				 valueNotEquals: "Please select the Program"
					  },
			  campus: 
				{
				 valueNotEquals: "Please select the Option"
					  },
			  department: 
				{
				 valueNotEquals: "Please select the Department"
					  }
	}
	});

 function getAllCourseEntry()
  {
  	$.ajax({
  	url:"http://localhost:8080/getAllCourseEntry",
  	method:"GET",
  	datatype:"json",
  	success:function(data)
  	{
  		/* alert(data.Id);
  	  	alert(data.assignCourse); */
  	  alert(${data.assignDepartment});
  		var tableBody = $('#tblCourse tbody');
  		tableBody.empty();
  		$(data).each(function(index,element)
  				{
  			if(element.assignDepartment == 0)
  	  			{
  	  			alert(element.id);
  	  		/* /assignDepartment/'+element.id+' */
  					tableBody.append('<tr><td>'+element.id+'</td><td>'+element.programType+'</td><td>'+element.program+'</td><td>'+element.courseName+'</td><td>'+element.maximumIntake+'</td><td>'+element.programType+'</td><td>'+element.workExperience+'</td><td>'+element.isDetailMarksPrint+'</td><td>'+element.payCode+'</td><td>'+element.applicattionFee+'</td><td>'+element.applicationFeeInternational+'</td><td><a href="/courseToDepartment/'+element.id+'"><i class="remove icon"></i></a></td><td><i onclick="updateCourseEntry('+element.id+')" class="edit icon"></i></td><td><i onclick="deleteCourseEntry('+element.id+')" class="trash icon"></i></td></tr>');
  	  			}
  			else
  	  			{
  				tableBody.append('<tr><td>'+element.id+'</td><td>'+element.programType+'</td><td>'+element.program+'</td><td>'+element.courseName+'</td><td>'+element.maximumIntake+'</td><td>'+element.programType+'</td><td>'+element.workExperience+'</td><td>'+element.isDetailMarksPrint+'</td><td>'+element.payCode+'</td><td>'+element.applicattionFee+'</td><td>'+element.applicationFeeInternational+'</td><td><i class="check icon"></i></td><td><i onclick="updateCourseEntry('+element.id+')" class="edit icon"></i></td><td><i onclick="deleteCourseEntry('+element.id+')" class="trash icon"></i></td></tr>');
  	  			}
  	  					 					/* <td><a href="javascript:edit_row('+element.id+')"><input type="button" id="edit_button" value="Edit" class="edit" ></a></td> */
  					/* href="javascript:edit_row('+element.id+')" */

  					/* tableBody.append('<tr><td>'+element.id+'</td><td>'+element.programType+'</td><td><input type="button" id="edit_button1" value="Edit" class="edit" onclick="edit_row('1')"></td></tr>'); */					 
       
  						})
  		},
  		error:function (error)
  		{
  alert(error);
  		}

  		});
  }


 function updateCourseEntry(id)
	{
		 alert(id);

		$.ajax({
			url:"http://localhost:8080/getCourseEntryById/"+id,
			method:"GET",
			datatype:"json",
			success:function(data)
				{
				/* alert(data); */
					$('#programType').val(data.programType);
					$('#idForm').val(data.id);
					$('#program').val(data.program);
					$('#courseNameInCertificate').val(data.courseNameInCertificate);
					$('#courseCode').val(data.courseCode);
					$('#courseName').val(data.courseName);
					$('#maximumIntake').val(data.maximumIntake);
					$('#payCode').val(data.payCode);
					$('#courseNameForSemMarkscard').val(data.courseNameForSemMarkscard);
					$('#applicattionFee').val(data.applicattionFee);
					$('#applicationFeeInternational').val(data.applicationFeeInternational);
					$('#bankNameForSmartcard').val(data.bankNameForSmartcard);
					$('#bankFullName').val(data.bankFullName);
					$('#courseCommencementDate').val(data.courseCommencementDate);
					$('#campus').val(data.campus);
					$('#noOfMidsemRepeatAttempts').val(data.noOfMidsemRepeatAttempts);
					$('#parentDepartment').val(data.parentDepartment);
					$('#indianNationals').val(data.indianNationals);
					$('#nriAndSaarc').val(data.nriAndSaarc);
					$('#foriegnNationals').val(data.foriegnNationals);
					$('#totalSeats').val(data.totalSeats);
					/* alert(data.workExperience); */
					if(data.workExperience == "Yes")
						{             
            $('#workExperience').prop('checked', true);          
						}
					if(data.isDetailMarksPrint == "Yes")
					{             
         $('#isDetailMarksPrint').prop('checked', true);          
					}
					if(data.workExperienceManditory == "Yes")
					{             
          $('#workExperienceManditory').prop('checked', true);          
					}
					if(data.appearInOnline == "Yes")
					{             
         $('#appearInOnline').prop('checked', true);          
					}
					if(data.applicationProcessingSms == "Yes")
					{             
      $('#applicationProcessingSms').prop('checked', true);          
					}
					if(data.onlyForApplication == "Yes")
					{             
        $('#onlyForApplication').prop('checked', true);          
					}
					if(data.bankSection == "Yes")
					{             
        $('#bankSection').prop('checked', true);          
					}
					if(data.attendanceMarksCalculatedBy == "Yes")
					{             
        $('#attendanceMarksCalculatedBy').prop('checked', true);          
					}
							
					getAllCourseEntry();
					},
					error:function(error)
					{
	alert(error);
						}
			
			});
		}

 function reset()
 {
 	var programType = $('#programType').val('');
 	var idForm = $('#idForm').val('');
 	var program = $('#program').val('');
 	var courseNameInCertificate = $('#courseNameInCertificate').val('');
 	var courseCode = $('#courseCode').val('');
 	var courseName = $('#courseName').val('');
 	var maximumIntake = $('#maximumIntake').val('');
 	var payCode = $('#payCode').val();
 	var courseNameForSemMarkscard = $('#courseNameForSemMarkscard').val('');
 	var applicattionFee = $('#applicattionFee').val('');
 	var applicationFeeInternational = $('#applicationFeeInternational').val('');
 	var bankNameForSmartcard = $('#bankNameForSmartcard').val('');
 	var bankFullName = $('#bankFullName').val('');
 	var courseCommencementDate = $('#courseCommencementDate').val('');
 	var campus = $('#campus').val('');
 	var noOfMidsemRepeatAttempts = $('#noOfMidsemRepeatAttempts').val('');
 	var parentDepartment = $('#parentDepartment').val('');
 	var indianNationals = $('#indianNationals').val('');
 	var nriAndSaarc = $('#nriAndSaarc').val('');
 	var foriegnNationals = $('#foriegnNationals').val('');
 	var totalSeats = $('#totalSeats').val('');
 	
 	var workExperience =  $('#workExperience2').prop('checked', true);
 	var isDetailMarksPrint =  $('#isDetailMarksPrint2').prop('checked', true);
 	var workExperienceManditory =  $('#workExperienceManditory2').prop('checked', true);
 	var applicationProcessingSms =  $('#applicationProcessingSms2').prop('checked', true);
 	var onlyForApplication =  $('#onlyForApplication2').prop('checked', true);
 	var bankSection =  $('#bankSection2').prop('checked', true);
 	var attendanceMarksCalculatedBy =  $('#attendanceMarksCalculatedBy2').prop('checked', true);
 	
 	var appearInOnline =  $('#appearInOnline2').prop('checked', true);
 	
  }


 function deleteCourseEntry(id)
	{
		swal({
			  title: "Are you sure?",
			  text: "Once deleted, you will not be able to recover the Program Type!",
			  icon: "warning",
			  buttons: true,
			  dangerMode: true,
			})
			.then((willDelete) => {
			  if (willDelete) {
				  $.ajax({
						url:"http://localhost:8080/deleteCourseEntryBy/"+id,
						method:'DELETE',
						contentType:'application/json; charset=utf-8',
						success: function ()
						{
							getAllCourseEntry();
						}
				  });
			    swal("Course Entry has been deleted!", {
			      icon: "success",
			    });
			  } else {
			    swal("Course Entry is Safe!");
			  }
			});
	}

 
 </script>
		<%@include file="/WEB-INF/views/admin/includes/footer.jsp"%>
		<!-- </div> -->
		<%-- <%@include file="admin/includes/footer.jsp"%> --%>
		<%-- <%@include file="admin/includes/footer.jsp"%> --%>
			<!--  var courseEntry = {};
				$("#buttonCourseEntry").click(function(){
						 event.preventDefault();  
						 
						 courseEntry.programType = $('#programType').val();
						courseEntry.program = $('#program').val();
						courseEntry.courseCode = $('#courseCode').val();
						courseEntry.courseName = $('#courseName').val();
						courseEntry.maximumIntake = $('#maximumIntake').val();
						courseEntry.courseNameInCertificate = $('#courseNameInCertificate').val();
						courseEntry.payCode = $('#payCode').val();
						courseEntry.courseNameForSemMarkscard = $('#courseNameForSemMarkscard').val();
						courseEntry.applicattionFee = $('#applicattionFee').val();
						courseEntry.applicationFeeInternational = $('#applicationFeeInternational').val();
						courseEntry.workExperience = $('#workExperience').val();
						courseEntry.isDetailMarksPrint = $('#isDetailMarksPrint').val();
						courseEntry.seatNoGenerationRequied = $('#seatNoGenerationRequied').val(); 
						 courseEntry.workExperienceManditory = $('#workExperienceManditory').val();
						courseEntry.appearInOnline = $('#appearInOnline').val();
						courseEntry.applicationProcessingSms = $('#applicationProcessingSms').val();
						courseEntry.onlyForApplication = $('#onlyForApplication').val();
						courseEntry.bankNameForSmartcard = $('#bankNameForSmartcard').val();
						courseEntry.bankFullName = $('#bankFullName').val();
						courseEntry.bankSection = $('#bankSection').val();
						courseEntry.courseCommencementDate = $('#courseCommencementDate').val();
						courseEntry.campus = $('#campus').val();
						courseEntry.noOfMidsemRepeatAttempts = $('#noOfMidsemRepeatAttempts').val();
						courseEntry.parentDepartment = $('#parentDepartment').val();
						courseEntry.attendanceMarksCalculatedBy = $('#attendanceMarksCalculatedBy').val();
						
			 			var courseEntryObj = JSON.stringify(courseEntry);
			 			
					$.ajax({
								url:'http://localhost:8080/loadAdminCourseEntry',
								method:'POST',
								data: courseEntryObj,
								contentType:'application/json; charset=utf-8',
								success: function ()
								{
									swal("Course Entry Saved Successfully.", {
										buttons: false,
										timer: 1000,
										}); */
									 getAllProgramEntry(); 
								 },
								error: function (error)
								{
									alert(error+"yes!");
								} 
							}); 
				});  -->
				    