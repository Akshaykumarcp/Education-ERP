<%@include file="/WEB-INF/views/admin/includes/header.jsp"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
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
<link rel="stylesheet" href="https://cdn.datatables.net/1.10.18/css/dataTables.bootstrap4.min.css">
<script src="https://cdn.datatables.net/1.10.18/js/jquery.dataTables.min.js"></script>
<script src="https://cdn.datatables.net/1.10.18/js/dataTables.bootstrap4.min.js">

</script>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<style>

* {
	font-family: calibri;
}

.label1 {
	float: right;
	padding-top: 5px;
	font-size: 18px;
}
.row {
	background-color: #80CBC4;
}

.col {
	background-color: ECEFF1;
}

.on {
	margin-left: 203px;
}

#button {
	margin-left: 400px;
	margin-top: 10px;
}

.lab {
	margin-left: 10px;
}
.online1{
background-color: ECEFF1;
}
@media screen and (max-width: 600px) {
	.label1 {
		float: left;
	}
	.on {
		margin-left: 0px;
	}
	#button {
		margin-left: 45px;
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

.vl {
	border-left: 1px solid black;
	height: 500px;
}
</style>

<div class="content-wrapper">


	<!-- Main content -->
		<section class="content container-fluid" id="mainContent">
	
			<!-- HEADER -->
	
			<!-- <section class="content-header">
				<h1>
					<small></small>
				</h1>
				<ol class="breadcrumb">
					<li><a href="#"><i class="fa fa-dashboard"></i>HomePage</a></li>
					<li class="active">Application Entry</li>
				</ol>
			</section> -->
			
			<section class="content-header">
				<h1>
					Application Number <small></small>
				</h1>
				<ol class="breadcrumb">
					<li><a href="#"><i class="fa fa-dashboard"></i>Admin</a></li>
					<li class="active"><a href="">Application Number</a></li>
				</ol>
			</section>

		<br />

		<!-- BODY CONTENT -->


		<div class="container">


			<div class="card">
				<div class="card-header card bg-info text-white">Application
					No.Entry</div>
				<div class="card-body">
					<form:form id="form" modelAttribute="applicationNo">
					<span style="color: red; float: right;margin-top: -20px;">*Mandatory Fields</span></br>
						<div class="panel panel-default"
							style="border-top-width: 1px; border-top-style: solid; border-bottom-width: 1px; border-bottom-style: solid; border-right-width: 1px; border-right-style: solid; border-left-width: 1px; border-left-style: solid; padding-left: 5px; margin-top: 0px; margin-right: 0px; margin-bottom: 0px; padding-top: 5px; padding-right: 5px; padding-bottom: 5px; border-color: lavender;">
							<div class="panel-body">
								<div class="col-md-12">
									<div class="row">
										<div class="col-md-3">
											<label for="academic" class="label1"><span
												style="color: red;">*</span>Academic year:</label>
										</div>
										<div class="col-md-3">
											<!-- <select name="academic" id="academic"
												class="browser-default custom-select col" style="width: 207;">
												<option value="default">-- select--</option>
												<option value="1">2019-2020</option>
												<option value="2">2020-2021</option>
												<option value="3">2021-2022</option>
											</select> -->
											<form:select path="onlineApplicationYear" class="form-control" id="academicYear">
									<form:option value="default" label="Select Program*"/>
									<%-- <form:options items = "${courses}" /> --%>
									<c:forEach var="programCo" items="${fromProgramConfig}">
										<option value="${programCo.onlineApplicationYear}">${programCo.onlineApplicationYear}</option>
									</c:forEach>
								</form:select><input type="text" class="form-control" id="idForm"
											name="" placeholder=""
											style="width: 225;" hidden>
										</div>
										<div class="col-md-3">
											<label for="type" class="label1"><span
												style="color: red;">*</span>Program Type:</label>
										</div>
										<div class="col-md-3">
											<!-- <select name="type" id="type"
												class="browser-default custom-select col" style="width: 207;">
												<option value="default">-- select--</option>
												<option value="1">One</option>
												<option value="2">Two</option>
												<option value="3">Three</option>
											</select> -->
											<form:select path="programType" class="form-control" id="programType">
									<form:option value="default" label="Select Program*"/>
									<%-- <form:options items = "${courses}" /> --%>
									<c:forEach var="programCo" items="${fromCourseEntry}">
										<option value="${programCo.programType}">${programCo.programType}</option>
									</c:forEach>
								</form:select>
										</div>
									</div>
									</br>
									<!-- row ended -->
									<div class="row">
										<div class="col-md-3">
											<label for="program" class="label1"><span
												style="color: red;">*</span>Program:</label>
										</div>
										<div class="col-md-3">
												<form:select path="program" class="form-control" id="program">
									<form:option value="default" label="Select Program*"/>
									<%-- <form:options items = "${courses}" /> --%>
									<c:forEach var="programCo" items="${fromCourseEntry}">
										<option value="${programCo.program}">${programCo.program}</option>
									</c:forEach>
								</form:select>
										</div>

										<div class="col-md-3">
											<label for="course" class="label1"><span
												style="color: red;">*</span>Course:</label>
										</div>
										<div class="col-md-3">
											<!-- <select name="course" id="course"
												class="browser-default custom-select col" style="width: 207;">
												<option value="default">-- select--</option>
												<option value="1">BCA</option>
												<option value="2">BBM</option>
												<option value="3">MBA</option>
											</select> -->
												<select class="form-control" id="course">
									<option value="default" label="--Select Program--"/>
									<%-- <form:options items = "${courses}" /> --%>
									<c:forEach var="programCo" items="${fromCourseEntry}">
										<option value="${programCo.courseName}">${programCo.courseName}</option>
									</c:forEach>
								</select>
										</div>
									</div>
									<!-- row ended -->
								</div>
								<!-- column md 12 ended -->

							</div>
							<!-- panel body ended -->
						</div>
						<!-- panel ended -->
						</br>


						<div class="panel panel-default" class="panel"
							style="border-top-width: 1px; border-top-style: solid; border-right-width: 1px; border-right-style: solid; border-bottom-width: 1px; border-bottom-style: solid; border-left-width: 1px; border-left-style: solid; padding-top: 5px; border-color: lavender; padding-bottom: 5px; padding-left: 5px; padding-right: 5px;">
							<div class="panel-body">
								<div class="col-md-12">
									<div class="row">

										<label for="Online" class="on label1"><span
											style="color: red;">*</span>Online Application Number:</label> <input 
											 class="online1" name="Online" type="number" id="onlineapplicationNoFrom"> <label for="on"
											class="lab label1"> till:</label> <input type="text" id="onlineapplicationNoto" name="on" class="online1">

									</div>
									</br>
									<!-- row ended -->
									<div class="row">

										<label for="Offline" class="on label1"><span
											style="color: red;">*</span>Offline Application Number:</label> <input
											class="online1" id="offlineapplicationNoFrom" name="Offline" type="number"> <label for="off"
											class="lab label1"> till:</label> <input type="text" id="offlineapplicationNoto" name="off" class="online1">

									</div>
									<!-- row ended -->
								</div>
								<!-- col ended -->
							</div>
							<!-- panel body ended -->
						</div>
						<!-- panel ended -->

						<button type="Submit" id="button" class="btn btn-lg btn-success"><span class="glyphicon glyphicon-ok"></span>Submit</button>
						
						<button type="Reset" id="reset" class="btn btn-lg btn-danger"
							style="margin-left: 10px; margin-top: 10px;"><span class="glyphicon glyphicon-repeat">Reset</button>
						


					</form:form>
					<hr id="hr">

					<div class="panel panel-default"
						style="border-top-width: 1px; border-top-style: solid; border-bottom-width: 1px; border-bottom-style: solid; border-right-width: 1px; border-right-style: solid; border-left-width: 1px; border-left-style: solid; padding-top: 5px; padding-right: 5px; padding-left: 5px; border-color: whitesmoke; margin-bottom: 8px;">
						<div class="panel-body">
							<div class="table-responsive">
								<table id="tblApplicationNoEntry" class="table table-bordered table-hover" style="width: 100%;">
									<thead>
										<tr style="background-color: #80CBC4; color: white;">
											<th>SI.NO</th>
											<th>Academic Year</th>
											<th>Course</th>
											<th>Online Application</th>
											<th>Offline Application</th>
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
				<div class="card-footer card bg-info text-white"></div>

			</div>
			<!-- card ended -->
		</div>

	</section>
	</div>
	<script>
		$(document).ready(function() {
			/* $('#tblApplicationNoEntry').DataTable(); */
			getAllApplicationNoEntry();
			  });

		$.validator.setDefaults( {
			submitHandler: function () {
				var applicationNoEntry = {};
			 	var dynamicURL = "";
				var methodName = "";
				var status = ""; 
                         					/* var ab = programType.programType = $('#programType').val(); */

                         					applicationNoEntry.academicYear = $('#academicYear').val();
                         					applicationNoEntry.programType = $('#programType').val();
                         					applicationNoEntry.program = $('#program').val();
                         					applicationNoEntry.course = $('#course').val();
                         					applicationNoEntry.onlineapplicationNoFrom = $('#onlineapplicationNoFrom').val();
                         					applicationNoEntry.onlineapplicationNoto = $('#onlineapplicationNoto').val();
                         					applicationNoEntry.offlineapplicationNoFrom = $('#offlineapplicationNoFrom').val();
                         					applicationNoEntry.offlineapplicationNoto = $('#offlineapplicationNoto').val();
                         					
                         				 	var applicationNoEntryId = $('#idForm').val();
                         					if(applicationNoEntryId)
                         						{
                         						dynamicURL="http://localhost:8080/updateApplicationNoEntryById/"+applicationNoEntryId;
                         						methodName="PUT";
                         						status="Updated"
                         						}
                         					else
                         						{
                         						dynamicURL="http://localhost:8080/loadAdminApplicationNoEntry";
                         						methodName="POST";
                         						status="Saved"
                         						} 
                         		 			var applicationNoEntryObj = JSON.stringify(applicationNoEntry);
                         				$.ajax({
                         							url:dynamicURL,
                         							method:methodName,
                         							data: applicationNoEntryObj,
                         							contentType:'application/json; charset=utf-8',
                         							success: function ()
                         							{
                         								swal(status+" Successfully.", {
                           									buttons: false,
                           									timer: 1000,
                         									});
                         								getAllApplicationNoEntry();
                         								reset();
                         								/* getAllProgramEntry();
                         								reset(); */
                         							},
                         							error: function (error)
                         							{
                         								alert(error);
                         							}
                         						});

            return false;

			}

		} );

		
		$.validator.addMethod("valueNotEquals", function(value, element, arg) {
			return arg !== value;
		}, "Value must not equal arg.");

		$("#form").validate({
			rules : {

				academic : {
					valueNotEquals : "default"
				},
				type : {
					valueNotEquals : "default"
				},

				program : {
					valueNotEquals : "default"
				},
				course : {
					valueNotEquals : "default"
				},
				Online : {
					required: true,
					digits: true
				},
				Offline : {
					required: true,
					digits: true
				}
				
				
			},
			messages : {

				academic : {
					valueNotEquals : "Please select the academic year"
				},
				type : {
					valueNotEquals : "Please select the program Type"
				},

				program : {
					valueNotEquals : "Please select the program"
				},
				course : {
					valueNotEquals : "Please select the course"
				},
				Online : {
					required: "Please Enter The Number",
					digits: "Enter Only digits"
				},
				Offline : {
					required: "Please Enter The Number",
						digits: "Enter Only digits"
				}
			}
		});


		function getAllApplicationNoEntry()
		{
			$.ajax({
			url:"http://localhost:8080/getAllApplicationNoEntry",
			method:"GET",
			datatype:"json",
			success:function(data)
			{
				var tableBody = $('#tblApplicationNoEntry tbody');
				tableBody.empty();
				$(data).each(function(index,element)
						{
							tableBody.append('<tr><td>'+element.id+'</td><td>'+element.academicYear+'</td><td>'+element.course+'</td><td>'+element.onlineapplicationNoFrom+'-'+element.onlineapplicationNoto+'</td><td>'+element.offlineapplicationNoFrom+'-'+element.offlineapplicationNoto+'</td><td><i onclick="updateApplicationNoEntry('+element.id+')" class="edit icon"></i></td><td><i onclick="deleteApplicationNoEntry('+element.id+')" class="trash icon"></i></td></tr>');
						})
				},
				error:function (error)
				{
		alert(error);
				}

				});
		}

		function updateApplicationNoEntry(id)
		{
			 /* alert(id); */

			$.ajax({
				url:"http://localhost:8080/getApplicationNoEntryById/"+id,
				method:"GET",
				datatype:"json",
				success:function(data)
					{
					 alert(data.onlineapplicationNoFrom);
					
						$('#academicYear').val(data.academicYear);
						$('#programType').val(data.programType);
						$('#program').val(data.program);
						$('#course').val(data.course);
						$('#onlineapplicationNoFrom').val(data.onlineapplicationNoFrom);
						$('#onlineapplicationNoto').val(data.onlineapplicationNoto);
						$('#offlineapplicationNoFrom').val(data.offlineapplicationNoFrom);
						$('#offlineapplicationNoto').val(data.offlineapplicationNoto);
						$('#idForm').val(data.id);
					
						getAllApplicationNoEntry();
						},
						error:function(error)
						{
		alert(error);
							}
				
				});
			}

		 function reset()
		    {
		    	var academicYear = $('#academicYear').val('');
		    	var programType = $('#programType').val('');
		    	var program = $('#program').val('');
		    	var course = $('#course').val('');
		    	var onlineapplicationNoFrom = $('#onlineapplicationNoFrom').val('');
		    	var onlineapplicationNoto = $('#onlineapplicationNoto').val('');
		    	var offlineapplicationNoFrom = $('#offlineapplicationNoFrom').val('');
		    	var offlineapplicationNoto = $('#offlineapplicationNoto').val('');
		    	var id = $('#idForm').val('');	
		    	
			}


			function deleteApplicationNoEntry(id)
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
								url:"http://localhost:8080/deleteApplicationNoEntryBy/"+id,
								method:'DELETE',
								contentType:'application/json; charset=utf-8',
								success: function ()
								{
									getAllApplicationNoEntry();
								}
						  });
					    swal("Application Number Entry has been deleted!", {
					      icon: "success",
					    });
					  } else {
					    swal("Application Number Entry is Safe!");
					  }
					});
			}

		
	</script>


	<%-- <%@include file="admin/includes/footer.jsp"%> --%>
<%@include file="/WEB-INF/views/admin/includes/footer.jsp"%>
	<%-- <%@include file="admin/includes/footer.jsp"%> --%>