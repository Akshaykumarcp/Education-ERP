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
				Interview Definition <small></small>
			</h1>
			<ol class="breadcrumb">
				<li><a href="#"><i class="fa fa-dashboard"></i>Admin</a></li>
				<li class="active"><a href="">Interview Definition</a></li>
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
										<form:select path="onlineApplicationYear" name="academic" class="browser-default custom-select col" style="width: 207;" id="admittedYear">
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
										<label for="sch" class="label1"><span style="color: red;">*</span>Interview Type:</label>
									</div>
									<div class="col-md-3">
										<input type="text" class="browser-default custom-select col" id="interviewType"
											style="width: 207;">
									</div>
									<div class="col-md-3">
										<label for="Scheme" class="label1"><span style="color: red;">*</span>Sequence Of Interview:</label>
									</div>
									<div class="col-md-3">
										<select name="sequenceOfInterview"  class="browser-default custom-select col"
											style="width: 207;" id="sequenceOfInterview">
											<option value="default">-- select--</option>
											<option value="1">1</option>
											<option value="2">2</option>
											<option value="3">3</option>
											<option value="4">4</option>
										</select>
									</div>
								</div>
								<!-- row ended -->
							
							<!-- column md 12 ended -->
							<br/>
<div class="row rr" style="background-color: #80CBC4;">
									<div class="col-md-3">
										<label for="sch" class="label1"><span style="color: red;">*</span>Interviewers Per Panel:</label>
									</div>
									<div class="col-md-3">
										<input type="text" class="browser-default custom-select col"
											style="width: 207;" id="interviewPerPanel">
									</div>
									
								</div>



</div>
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
							<table id="tblInterviewDefinition" class="table table-bordered table-hover" style="width: 100%;">
								<thead>
									<tr style="background-color: #80CBC4; color: white;">
										<th>SI.NO</th>
										<th>Admitted Year</th>
										<th>Program Type</th>
										<th>Program</th>
										<th>Courses</th>
										<th>Interview Type</th>
										<th>Sequence of interview</th>
										<th>Interviews per panel</th>
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
	getAllInterviewDefinition();
});

$.validator.setDefaults( {
	submitHandler: function () {
		var interviewDefinition = {};
	 	var dynamicURL = "";
		var methodName = "";
		var status = ""; 
                 					/* var ab = programType.programType = $('#programType').val(); */

                 					interviewDefinition.admitted_year = $('#admittedYear').val();
                 					interviewDefinition.programType = $('#programType').val();
                 					interviewDefinition.program = $('#program').val();
                 					interviewDefinition.course = $('#course').val();
                 					interviewDefinition.interviewType = $('#interviewType').val();
                 					interviewDefinition.sequenceOfInterview = $('#sequenceOfInterview').val();
                 					interviewDefinition.interviewPerPanel = $('#interviewPerPanel').val();
                 					
                 				 	 var interviewDefinitionID = $('#idForm').val();
                 					if(interviewDefinitionID)
                 						{
                 						dynamicURL="http://localhost:8080/updateInterviewDefinitionById/"+interviewDefinitionID;
                 						methodName="PUT";
                 						status="Updated"
                 						}
                 					else
                 						{
                 						dynamicURL="http://localhost:8080/loadAdminInterviewDefinition";
                 						methodName="POST";
                 						status="Saved"
                 						}  
                 		 			var interviewDefinitionObj = JSON.stringify(interviewDefinition);
                 				$.ajax({
                 							url:dynamicURL,
                 							method:methodName,
                 							data: interviewDefinitionObj,
                 							contentType:'application/json; charset=utf-8',
                 							success: function ()
                 							{
                 								swal(status+" Successfully.", {
                   									buttons: false,
                   									timer: 1000,
                 									});
                 								getAllInterviewDefinition();
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

function getAllInterviewDefinition()
{
	$.ajax({
	url:"http://localhost:8080/getAllInterviewDefinition",
	method:"GET",
	datatype:"json",
	success:function(data)
	{
		var tableBody = $('#tblInterviewDefinition tbody');
		tableBody.empty();
		$(data).each(function(index,element)
				{
					tableBody.append('<tr><td>'+element.id+'</td><td>'+element.admitted_year+'</td><td>'+element.programType+'</td><td>'+element.program+'</td><td>'+element.course+'</td><td>'+element.interviewType+'</td><td>'+element.sequenceOfInterview+'</td><td>'+element.interviewPerPanel+'</td><td><i onclick="updateInterviewDefinition('+element.id+')" class="edit icon"></i></td><td><i onclick="deleteInterviewDefinition('+element.id+')" class="trash icon"></i></td></tr>');
				})
		},
		error:function (error)
		{
alert(error);
		}

		});
}


function updateInterviewDefinition(id)
{
	 /* alert(id); */

	$.ajax({
		url:"http://localhost:8080/getInterviewDefinitionById/"+id,
		method:"GET",
		datatype:"json",
		success:function(data)
			{
			 /* alert(data.onlineapplicationNoFrom);  */
			
				$('#admittedYear').val(data.admitted_year);
				$('#programType').val(data.programType);
				$('#program').val(data.program);
				$('#course').val(data.course);
				$('#interviewType').val(data.interviewType);
					$('#sequenceOfInterview').val(data.sequenceOfInterview);
					$('#interviewPerPanel').val(data.interviewPerPanel);
									
				$('#idForm').val(data.id);
			
				getAllInterviewDefinition();
				},
				error:function(error)
				{
alert(error);
					}
		
		});
	}

 function reset()
    {
    	var admitted_year = $('#admittedYear').val('');
    	var programType = $('#programType').val('');
    	var program = $('#program').val('');
    	var course = $('#course').val('');
    	var interviewType = $('#interviewType').val('');
    	var sequenceOfInterview = $('#sequenceOfInterview').val('');
    			var interviewPerPanel = $('#interviewPerPanel').val('');
    	var id = $('#idForm').val('');	
    	
	}


	function deleteInterviewDefinition(id)
	{
		swal({
			  title: "Are you sure?",
			  text: "Once deleted, you will not be able to recover the Interview Definition!",
			  icon: "warning",
			  buttons: true,
			  dangerMode: true,
			})
			.then((willDelete) => {
			  if (willDelete) {
				  $.ajax({
						url:"http://localhost:8080/deleteInterviewDefinitionById/"+id,
						method:'DELETE',
						contentType:'application/json; charset=utf-8',
						success: function ()
						{
							getAllInterviewDefinition();
						}
				  });
			    swal("Interview Definition has been deleted!", {
			      icon: "success",
			    });
			  } else {
			    swal("Interview Definition Entry is Safe!");
			  }
			});
	}
</script>


	<%-- <%@include file="admin/includes/footer.jsp"%> --%>
<%@include file="/WEB-INF/views/admin/includes/footer.jsp"%>
	<%-- <%@include file="admin/includes/footer.jsp"%> --%>