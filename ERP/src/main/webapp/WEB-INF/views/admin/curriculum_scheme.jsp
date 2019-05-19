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
	<section class="content container" id="mainContent">

		<!-- HEADER -->

		<section class="content-header">
			<h1>
				<small></small>
			</h1>
			<ol class="breadcrumb">
				<li><a href="#"><i class="fa fa-dashboard"></i>HomePage</a></li>
				<li class="active">Curriculum Scheme Entry</li>
			</ol>
		</section>

		<br />

		<!-- BODY CONTENT -->


		<div class="container">


			<div class="card">
				<div class="card-header card bg-info text-white">Curriculum Entry</div>
				<div class="card-body">
				<form:form id="form1" modelAttribute="applicationNo">
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
										<form:select path="onlineApplicationYear" name="academic" class="form-control" id="admitted_year">
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
										<form:select path="programType" name="type" class="browser-default custom-select col"
											style="width: 207;" id="programType">
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
								<div class="row rr" style="background-color: #80CBC4;">
									<div class="col-md-3">
										<label for="program" class="label1"><span style="color: red;">*</span>Program:</label>
									</div>
									<div class="col-md-3">
										<form:select path="program" class="browser-default custom-select col"
											style="width: 207;" id="program">
									<form:option value="default" label="Select Program*"/>
									<%-- <form:options items = "${courses}" /> --%>
									<c:forEach var="programCo" items="${fromCourseEntry}">
										<option value="${programCo.program}">${programCo.program}</option>
									</c:forEach>
								</form:select>
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
											style="width: 207;" id="course">
									<option value="default" label="--Select Program--"/>
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
										<label for="sch" class="label1"><span style="color: red;">*</span>No. of Scheme/Courses:</label>
									</div>
									<div class="col-md-3">
										<select name="sch" id="noOfScheme" class="browser-default custom-select col"
											style="width: 207;" id="noOfScheme">
											<option value="default">-- select--</option>
											<option value="1">BCA</option>
											<option value="2">BBM</option>
											<option value="3">MBA</option>
										</select>
									</div>
									<div class="col-md-3">
										<label for="Scheme" class="label1"><span style="color: red;">*</span>Scheme:</label>
									</div>
									<div class="col-md-3">
										<select name="Scheme" id="scheme" class="browser-default custom-select col"
											style="width: 207;" id="scheme">
											<option value="default">-- select--</option>
											<option value="1">BCA</option>
											<option value="2">BBM</option>
											<option value="3">MBA</option>
										</select>
									</div>
								</div>
								<!-- row ended -->
							</div>
							<!-- column md 12 ended -->





						</div>
						<!-- panel body ended -->
					</div>
					<!-- panel ended --></br></br>


					
					<button type="Submit" id="button" class="btn btn-lg btn-success"><span class="glyphicon glyphicon-ok"></span>Submit</button>
						
						<button type="Reset" id="reset" class="btn btn-lg btn-danger"
							style="margin-left: 10px; margin-top: 10px;"><span class="glyphicon glyphicon-repeat">Reset</button>
					
					
					</form:form>
					<hr>
					
					<div class="panel panel-default"
					style="border-top-width: 1px; border-top-style: solid; border-bottom-width: 1px; border-bottom-style: solid; border-right-width: 1px; border-right-style: solid; border-left-width: 1px; border-left-style: solid; padding-top: 5px; padding-right: 5px; padding-left: 5px; border-color: whitesmoke; margin-bottom: 8px;">
					<div class="panel-body">
						<div class="table-responsive">
							<table id="tblCurriculumEntry" class="table table-bordered table-hover" style="width: 100%;">
								<thead>
									<tr style="background-color: #80CBC4; color: white;">
										<th>SI.NO</th>
										<th>Program Type</th>
										<th>Program</th>
										<th>Courses</th>
										<th>Admitted Year</th>
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
<script>
$(document).ready(function() {
	/* $('#example').DataTable(); */
	getAllCurriculumEntry();
});

$.validator.setDefaults( {
	submitHandler: function () {
		var curriculumEntry = {};
	 	var dynamicURL = "";
		var methodName = "";
		var status = ""; 
                 					/* var ab = programType.programType = $('#programType').val(); */

                 					curriculumEntry.admitted_year = $('#admitted_year').val();
                 					curriculumEntry.programType = $('#programType').val();
                 					curriculumEntry.program = $('#program').val();
                 					curriculumEntry.course = $('#course').val();
                 					curriculumEntry.noOfScheme = $('#noOfScheme').val();
                 					curriculumEntry.scheme = $('#scheme').val();
                 					
                 				 	var curriculumEntryId = $('#idForm').val();
                 					if(curriculumEntryId)
                 						{
                 						dynamicURL="http://localhost:8080/updateCurriculumEntryById/"+curriculumEntryId;
                 						methodName="PUT";
                 						status="Updated"
                 						}
                 					else
                 						{
                 						dynamicURL="http://localhost:8080/loadAdminCurriculumEntry";
                 						methodName="POST";
                 						status="Saved"
                 						} 
                 		 			var curriculumEntryObj = JSON.stringify(curriculumEntry);
                 				$.ajax({
                 							url:dynamicURL,
                 							method:methodName,
                 							data: curriculumEntryObj,
                 							contentType:'application/json; charset=utf-8',
                 							success: function ()
                 							{
                 								swal(status+" Successfully.", {
                   									buttons: false,
                   									timer: 1000,
                 									});
                 								getAllCurriculumEntry();
                 								reset();
                 								/* getAllApplicationNoEntry();
                 								reset(); */
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

function getAllCurriculumEntry()
{
	$.ajax({
	url:"http://localhost:8080/getAllCurriculumEntry",
	method:"GET",
	datatype:"json",
	success:function(data)
	{
		var tableBody = $('#tblCurriculumEntry tbody');
		tableBody.empty();
		$(data).each(function(index,element)
				{
					tableBody.append('<tr><td>'+element.id+'</td><td>'+element.programType+'</td><td>'+element.program+'</td><td>'+element.course+'</td><td>'+element.admitted_year+'</td><td><i onclick="updateCurriculumEntry('+element.id+')" class="edit icon"></i></td><td><i onclick="deleteCurriculumEntry('+element.id+')" class="trash icon"></i></td></tr>');
				})
		},
		error:function (error)
		{
alert(error);
		}

		});
}


function updateCurriculumEntry(id)
{
	 /* alert(id); */

	$.ajax({
		url:"http://localhost:8080/getCurriculumEntryById/"+id,
		method:"GET",
		datatype:"json",
		success:function(data)
			{
			 alert(data.onlineapplicationNoFrom); 
			
				$('#admitted_year').val(data.admitted_year);
				$('#programType').val(data.programType);
				$('#program').val(data.program);
				$('#course').val(data.course);
				$('#noOfScheme').val(data.noOfScheme);
				$('#scheme').val(data.scheme);
				
				$('#idForm').val(data.id);
			
				getAllCurriculumEntry();
				},
				error:function(error)
				{
alert(error);
					}
		
		});
	}

 function reset()
    {
    	var admitted_year = $('#admitted_year').val('');
    	var programType = $('#programType').val('');
    	var program = $('#program').val('');
    	var course = $('#course').val('');
    	var noOfScheme = $('#noOfScheme').val('');
    	var scheme = $('#scheme').val('');
    	var id = $('#idForm').val('');	
    	
	}


	function deleteCurriculumEntry(id)
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
						url:"http://localhost:8080/deleteCurriculumEntryByEntryBy/"+id,
						method:'DELETE',
						contentType:'application/json; charset=utf-8',
						success: function ()
						{
							getAllCurriculumEntry();
						}
				  });
			    swal("Curriculum Entry has been deleted!", {
			      icon: "success",
			    });
			  } else {
			    swal("Curriculum Number Entry is Safe!");
			  }
			});
	}
</script>


	<%-- <%@include file="admin/includes/footer.jsp"%> --%>
<%@include file="/WEB-INF/views/admin/includes/footer.jsp"%>
	<%-- <%@include file="admin/includes/footer.jsp"%> --%>