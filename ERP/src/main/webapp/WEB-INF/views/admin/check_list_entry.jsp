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
<style>
*{
font-family: calibri;
}
.rr {
	background-color: #80CBC4;
}

.col {
	background-color: ECEFF1;
}

.label1{
float: right;
padding-top: 5px;
font-size: 18px;
}
.color{
background-color: ECEFF1;
}
#button{
margin-left: 400px;
margin-top: -40px;
}
#reset{
margin-top: -40px;
}
@media screen and (max-width: 600px) {
	.label1 {
		float: left;
	}
	#button{
	margin-left: 39px;
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
				Check List <small></small>
			</h1>
			<ol class="breadcrumb">
				<li><a href="#"><i class="fa fa-dashboard"></i>Admin</a></li>
				<li class="active"><a href="">Check List</a></li>
			</ol>
		</section>

		<br />

		<!-- BODY CONTENT -->


		<div class="container">


			<div class="card">
				<div class="card-header card bg-info text-white">Checklist Entry</div>
				<div class="card-body">
				<form:form id="form1" modelAttribute="applicationNo">
				<span style="color: red; float: right;margin-top: -20px;">*Mandatory Fields</span>
					<div class="panel panel-default" style="border-top-width: 1px;border-top-style: solid;border-bottom-width: 1px;border-bottom-style: solid;border-right-width: 1px;border-right-style: solid;border-left-width: 1px;border-left-style: solid;padding-left: 5px;padding-top: 15px;padding-right: 5px;padding-bottom: 0px;margin-top: 10px;border-color: lavender;">
						<div class="panel-body">
							<div class="col-md-12">
								<div class="row rr">
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
										<select  name="academic" class="browser-default custom-select col"
											style="width: 207;" id="admitted_year">
									<option value="default" label="Select Program*"/>
									<%-- <form:options items = "${courses}" /> --%>
									<c:forEach var="programCo" items="${fromProgramConfig}">
										<option value="${programCo.onlineApplicationYear}">${programCo.onlineApplicationYear}</option>
									</c:forEach>
								</select><input type="text" class="form-control" id="idForm"
											name="" placeholder=""
											style="width: 225;" hidden >
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
								<div class="row rr">
									<div class="col-md-3">
										<label for="program" class="label1"><span style="color: red;">*</span>Program:</label>
									</div>
									<div class="col-md-3">
										<!-- <select id="program" name="program" class="browser-default custom-select col"
											style="width: 207;">
											<option value="default">-- select--</option>
											<option value="1">BCA</option>
											<option value="2">BBM</option>
											<option value="3">MBA</option>
										</select> -->
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
									<!-- 	<select name="course" id="course" class="browser-default custom-select col"
											style="width: 207;">
											<option value="default">-- select--</option>
											<option value="1">BCA</option>
											<option value="2">BBM</option>
											<option value="3">MBA</option>
										</select> -->
										<select class="browser-default custom-select col"
											style="width: 207;" name="course"  id="course">
									<option value="default" label="--Select Program--"/>
									<%-- <form:options items = "${courses}" /> --%>
									<c:forEach var="programCo" items="${fromCourseEntry}">
										<option value="${programCo.courseName}">${programCo.courseName}</option>
									</c:forEach>
								</select>
									</div>
									</div><!-- row ended -->
									</br>
										
							</div>
							<!-- column md 12 ended -->





						</div>
						<!-- panel body ended -->
					</div>
					<!-- panel ended --></br></br>
<hr>

						<p>Applicable Documents:</p>



						<div class="panel panel-default"
							style="border-top-width: 1px; border-top-style: solid; border-bottom-width: 1px; border-bottom-style: solid; border-right-width: 1px; border-right-style: solid; border-left-width: 1px; border-left-style: solid; padding-top: 5px; padding-right: 5px; padding-left: 5px; border-color: whitesmoke; margin-bottom: 8px;">
							<div class="panel-body">
						<div class="table-responsive">
							<table id="example" class="table table-bordered">
							<%-- <caption style="caption-side: top;">Educational Info:</caption> --%>
							
								<thead>
									<tr style="background-color: #80CBC4; color: white;">
										<th>Document(s)</th>
										<th>Need to Produce</th>
										<th>Need to produce semwise MC</th>
										<th>IsMarks Card</th>
										<th>Consolidated Marks</th>
										<th>Semester wise</th>
										<th>Include Language</th>
										<th>Previous Exam</th>
										<th>Exam Required</th>
									</tr>
								</thead>
								<tbody>
									<tr class="col">
										<td><div class="form-check">
  											<label class="form-check-label">
   											 <input type="checkbox" class="form-check-input" id="marksCard" name="marksCard" value="Yes">Marks Card
 											 </label>
										</div>
										
										
									</td>
						<td><fieldset id="group1" id="group1">
								<div class="inline">

									<input type="radio" id="needToProduce" value="Yes" name="needToProduce"> <label>Yes</label>
									<input type="radio" id="needToProduce2" value="No" name="needToProduce" checked> <label>No</label>



								</div>
							</fieldset></td>
						<td><fieldset id="group2">
								<div class="inline">

									<input type="radio" id="needToProduceSemWise" value="Yes" name="needToProduceSemWise"> <label>Yes</label>
									<input type="radio" id="needToProduceSemWise2" value="No" name="needToProduceSemWise" checked> <label>No</label>



								</div>
							</fieldset></td>
						<td><fieldset id="group3">
								<div class="inline">

									<input type="radio" id="isMarksCard" value="Yes" name="isMarksCard"> <label>Yes</label>
									<input type="radio" id="isMarksCard2" value="No" name="isMarksCard" checked> <label>No</label>



								</div>
							</fieldset></td>
						<td><fieldset id="group4">
								<div class="inline">

									<input type="radio" id="consolidatedMarks" value="Yes" name="consolidatedMarks"> <label>Yes</label>
									<input type="radio" id="consolidatedMarks2" value="No" name="consolidatedMarks" checked> <label>No</label>



								</div>
							</fieldset></td>
						<td><fieldset id="group5">
								<div class="inline">

									<input type="radio" id="semisterWise" value="Yes" name="semisterWise"> <label>Yes</label>
									<input type="radio" id="semisterWise2" value="No" name="semisterWise" checked> <label>No</label>



								</div>
							</fieldset></td>
						<td><fieldset id="group6">
								<div class="inline">

									<input type="radio" id="includeLanguage" value="Yes" name="includeLanguage"> <label>Yes</label>
									<input type="radio" id="includeLanguage2" value="No" name="includeLanguage" checked> <label>No</label>



								</div>
							</fieldset></td>
						<td><fieldset id="group7">
								<div class="inline">

									<input type="radio" id="previousExam" value="Yes" name="previousExam"> <label>Yes</label>
									<input type="radio" id="previousExam2" value="No" name="previousExam" checked> <label>No</label>



								</div>
							</fieldset></td>
						<td><fieldset id="group8">
								<div class="inline">

									<input type="radio" id="examRequired" value="Yes" name="examRequired"> <label>Yes</label>
									<input type="radio" id="examRequired2" value="No" name="examRequired" checked> <label>No</label>



								</div>
							</fieldset></td>
						</tr>


						</tbody>
						</table>
						</div>
					</div>
				</div>
</br>
					
					<button type="Submit" id="button" class="btn btn-lg btn-success"
						><span class="glyphicon glyphicon-ok"></span>Add Checklist</button>
					<!-- <div class="ui primary submit button" id="button">Submit</div> -->
					<button type="Reset" id="reset" class="btn btn-lg btn-danger"
						><span class="glyphicon glyphicon-repeat"></span>Reset</button>
					<!-- <div class="ui reset button">Reset</div> -->
					
					
					</form:form>
					
					<hr>
					<div class="panel panel-default"
					style="border-top-width: 1px; border-top-style: solid; border-bottom-width: 1px; border-bottom-style: solid; border-right-width: 1px; border-right-style: solid; border-left-width: 1px; border-left-style: solid; padding-top: 5px; padding-right: 5px; padding-left: 5px; border-color: whitesmoke; margin-bottom: 8px;">
					<div class="panel-body">
						<div class="table-responsive">
							<table id="tblChecklistEntry" class="table table-bordered table-hover">
								<thead>
									<tr style="background-color: #80CBC4; color: white;">
										<th>SI.NO</th>
										<th>Program Type</th>
										<th>Program</th>
										<th>Courses</th>
										<th>Admitted Year</th>
										<th> View </th>
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
	getAllChecklistEntry();
});


$.validator.setDefaults( {
	submitHandler: function () {
		var checklistEntry = {};
	 	var dynamicURL = "";
		var methodName = "";
		var status = ""; 
                 					/* var ab = programType.programType = $('#programType').val(); */

                 					checklistEntry.admitted_year = $('#admitted_year').val();
                 					checklistEntry.programType = $('#programType').val();
                 					checklistEntry.program = $('#program').val();
                 					checklistEntry.course = $('#course').val();
                 					checklistEntry.marksCard = $("input[name='marksCard']:checked").val();
                 					checklistEntry.needToProduce = $("input[name='needToProduce']:checked").val();
                 					checklistEntry.needToProduceSemWise = $("input[name='needToProduceSemWise']:checked").val();
                 					checklistEntry.consolidatedMarks = $("input[name='consolidatedMarks']:checked").val();
                 					checklistEntry.isMarksCard = $("input[name='isMarksCard']:checked").val();
                 					checklistEntry.semisterWise = $("input[name='semisterWise']:checked").val();
                 					checklistEntry.includeLanguage = $("input[name='includeLanguage']:checked").val();
                 					checklistEntry.previousExam = $("input[name='previousExam']:checked").val();
                 					checklistEntry.examRequired = $("input[name='examRequired']:checked").val();
                 				 	var checklistEntryId = $('#idForm').val();
                 					if(checklistEntryId)
                 						{
                 						dynamicURL="http://localhost:8080/updateChecklistEntryById/"+checklistEntryId;
                 						methodName="PUT";
                 						status="Updated"
                 						}
                 					else
                 						{
                 						dynamicURL="http://localhost:8080/loadAdminChecklistEntry";
                 						methodName="POST";
                 						status="Saved"
                 						} 
                 		 			var checklistEntryObj = JSON.stringify(checklistEntry);
                 				$.ajax({
                 							url:dynamicURL,
                 							method:methodName,
                 							data: checklistEntryObj,
                 							contentType:'application/json; charset=utf-8',
                 							success: function ()
                 							{
                 								swal(status+" Successfully.", {
                   									buttons: false,
                   									timer: 1000,
                 									});
                 								getAllChecklistEntry();
                 								reset();
                 								/* getAllApplicationNoEntry();
                 								reset(); */
                 								/* getAllProgramEntry();
                 								reset(); */

												/* AFTER SUCESS REDIRECT PAGE TO ASSIGN DOCUMENTS */
                 								
                 								/* var newUrl ="/checkListDocuments";
                 								window.location.href = newUrl; */
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
					  }
					  
					 
		

	}
	});


function getAllChecklistEntry()
{
	$.ajax({
	url:"http://localhost:8080/getAllChecklistEntry",
	method:"GET",
	datatype:"json",
	success:function(data)
	{
		var tableBody = $('#tblChecklistEntry tbody');
		tableBody.empty();
		$(data).each(function(index,element)
				{
					tableBody.append('<tr><td>'+element.id+'</td><td>'+element.programType+'</td><td>'+element.program+'</td><td>'+element.course+'</td><td>'+element.admitted_year+'</td><td><i class="eye icon"></i></td><td><i onclick="updateChecklistEntry('+element.id+')" class="edit icon"></i></td><td><i onclick="deleteChecklistEntry('+element.id+')" class="trash icon"></i></td></tr>');
				})
		},
		error:function (error)
		{
alert(error);
		}

		});
}


function updateChecklistEntry(id)
{
	 /* alert(id); */

	$.ajax({
		url:"http://localhost:8080/getChecklistEntryById/"+id,
		method:"GET",
		datatype:"json",
		success:function(data)
			{
			 /* alert(data.onlineapplicationNoFrom);  */
			
				$('#admitted_year').val(data.admitted_year);
				$('#programType').val(data.programType);
				$('#program').val(data.program);
				$('#course').val(data.course);
				$('#noOfScheme').val(data.noOfScheme);
				$('#scheme').val(data.scheme);
				
				$('#idForm').val(data.id);

				if(data.marksCard == "Yes")
				{             
    $('#marksCard').prop('checked', true);          
				}
			if(data.needToProduce == "Yes")
			{             
 $('#needToProduce').prop('checked', true);          
			}
			if(data.needToProduceSemWise == "Yes")
			{             
  $('#needToProduceSemWise').prop('checked', true);          
			}
			if(data.consolidatedMarks == "Yes")
			{             
 $('#consolidatedMarks').prop('checked', true);          
			}
			if(data.isMarksCard == "Yes")
			{             
$('#isMarksCard').prop('checked', true);          
			}
			if(data.semisterWise == "Yes")
			{             
$('#semisterWise').prop('checked', true);          
			}
			if(data.includeLanguage == "Yes")
			{             
$('#includeLanguage').prop('checked', true);          
			}
			if(data.previousExam == "Yes")
			{             
$('#previousExam').prop('checked', true);          
			}
			if(data.examRequired == "Yes")
			{             
$('#examRequired').prop('checked', true);          
			}
			
				getAllChecklistEntry();
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
    	var id = $('#idForm').val('');

    	var workExperience =  $('#marksCard2').prop('checked', true);
    	var workExperience =  $('#needToProduce2').prop('checked', true);
    	var workExperience =  $('#needToProduceSemWise2').prop('checked', true);
    	var workExperience =  $('#consolidatedMarks2').prop('checked', true);
    	var workExperience =  $('#semisterWise2').prop('checked', true);
    	var workExperience =  $('#includeLanguage2').prop('checked', true);
    	var workExperience =  $('#previousExam2').prop('checked', true);
    	var workExperience =  $('#examRequired2').prop('checked', true);

    	
	}

	function deleteChecklistEntry(id)
	{
		swal({
			  title: "Are you sure?",
			  text: "Once deleted, you will not be able to recover the Checklist!",
			  icon: "warning",
			  buttons: true,
			  dangerMode: true,
			})
			.then((willDelete) => {
			  if (willDelete) {
				  $.ajax({
						url:"http://localhost:8080/deleteChecklistEntryBy/"+id,
						method:'DELETE',
						contentType:'application/json; charset=utf-8',
						success: function ()
						{
							getAllChecklistEntry();
						}
				  });
			    swal("Checklist Entry has been deleted!", {
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