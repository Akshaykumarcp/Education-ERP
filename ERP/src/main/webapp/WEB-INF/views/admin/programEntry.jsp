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
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/semantic-ui@2.4.2/dist/semantic.min.css">
<script
	src="https://cdn.jsdelivr.net/npm/semantic-ui@2.4.2/dist/semantic.min.js"></script>
<style>
* {
	font-family: calibri;
}
/* .col{
color: white;
} */
.panel {
	border-top-style: solid;
	border-top-width: 1px;
	border-bottom-width: 1px;
	border-bottom-style: solid;
	border-right-width: 1px;
	border-right-style: solid;
	border-left-width: 1px;
	border-left-style: solid;
	padding-top: 5px;
	padding-bottom: 2px;
	padding-right: 5px;
	padding-left: 3px;
	border-color: lavender;
	margin-top: 2px;
}

orm.commentform label.error, label.error {
	/* remove the next line when you have trouble in IE6 with labels in list */
	color: red;
	font-style: calibri
}

/* .row {
	background-color: #80CBC4;
} */
 
.col {
	background-color: #ECEFF1;
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

form.commentform .gray * {
	color: black;
}
</style>
<div class="content-wrapper">


	<!-- Main content -->
	<section class="content container-fluid" id="mainContent">

		<!-- HEADER -->

		<section class="content-header">
			<h1>
				Program Configuration<small></small>
			</h1>
			<ol class="breadcrumb">
				<li><a href="#"><i class="fa fa-dashboard"></i>Admin</a></li>
				<li class="active"><a href="">Program Configuration</a></li>
			</ol>
		</section>

		<br />

		<!-- BODY CONTENT -->
		<!-- <div class="container"> -->



		<div class="card">
			<div class="card-header card bg-info text-white">Program</div>
			<div class="card-body">
				<span style="color: red; float: right; margin-top: -20px;">*Mandatory
					Fields</span>
				<form:form id="commentform" modelAttribute="programty">
					<div class="panel panel-default" class="panel">
						<div class="panel-body">

							<div class="col-md-12">
								<div class="row">
									<div class="col-md-3">
										<label for="sel"
											style="float: right; margin-bottom: 27px; margin-top: 5px;"><span
											style="color: red;">*</span>Program Type :</label>
									</div>
									<div class="col-md-3">
										<!-- <select class="browser-default custom-select" name="sel"
											id="programType" style="width: 225;">
											<option value="default">-- select--</option>
											<option value="1">One</option>
											<option value="2">Two</option>
											<option value="3">Three</option>
										</select> -->
										<form:select path="programType" name="type" class="form-control"
									id="programType">
									<form:option value="default" label="Select Program*"  />
									<%-- <form:options items = "${courses}" /> --%>
									<c:forEach var="program" items="${programtypes}">
										<option value="${program.programType}">${program.programType}</option>
									</c:forEach>
								</form:select>
									</div>
									<div class="col-md-3">
										<label for="program_type"
											style="float: right; margin-bottom: 27px; margin-top: 5px;"><span
											style="color: red;">*</span>Program Code :</label>
									</div>
									<div class="col-md-3">

										<input type="text" class="form-control" id="programCode"
											name="code" placeholder="Enter Program Code"
											style="width: 225;">
											<input type="text" class="form-control" id="idForm"
											name="" placeholder=""
											style="width: 225;" hidden >
										<!-- <p class="err" style="color:red;">Please enter the program code</p> -->


									</div>
								</div>
								<div class="row">
									<div class="col-md-3">
										<label for="program"
											style="float: right; margin-bottom: 27px; margin-top: 5px;"><span
											style="color: red;">*</span>Program:</label>
									</div>
									<div class="col-md-3">

										<input type="text" class="form-control" id="program"
											name="program" placeholder="Enter Program"
											style="width: 225;">
										<!-- <p class="err" style="color: red;">Please Enter the Program Code</p> -->
									</div>
									<div class="col-md-3">
										<label for="stream"
											style="float: right; margin-bottom: 27px; margin-top: 5px;"><span
											style="color: red;">*</span>Stream :</label>
									</div>
									<div class="col-md-3">
										<select class="browser-default custom-select" name="stream"	id="stream">
											<option value="default">-- select--</option>
											<option value="1">One</option>
											<option value="2">Two</option>
											<option value="3">Three</option>
										</select>
									</div>
								</div>





								<div class="row">
									<div class="col-md-3">
										<label for="program_name"
											style="float: right; margin-bottom: 27px; margin-top: 5px;">Program
											Name in certification :</label>
									</div>
									<div class="col-md-3">

										<input type="text" class="form-control" id="programNameInCertificate"
											name="program_name" placeholder="Enter Program Name">

										<!-- <p class="err" style=" color: red;">Please enter the program name</p> -->
									</div>
								</div>
							</div>
							</br> </br>
						</div>
					</div>
					</br>
					<div class="panel panel-default" class="pannel">
						<div class="panel-body">
							<div class="table-responsive">
								<table id="example2" class="table table-bordered table-hover">
									<caption
										style="text-align: center; caption-side: top; background-color: #80CBC4; color: white;">Application
										Form Configuration</caption>

									<tbody>
										<tr>
											<td style="text-align: right;">Mother Tongue:</td>
											<td>
												<fieldset id="group1">
													<div class="inline">
														<!-- <div class="form-check"> -->
														<input type="radio" id="motherToungue" value="Yes" name="motherToungue" checked>
														<label for="group1">Yes</label> 
														<input type="radio" id="motherToungue2" value="No"  name="motherToungue" checked> <label>No</label>

														<!-- </div> -->

													</div>
												</fieldset>
											</td>
											<td style="text-align: right;">Second Language:</td>
											<td>
												<fieldset id="group2">
													<div class="inline">

														<input type="radio" id="secondLanguage" value="Yes" name="secondLanguage">
														<label>Yes</label> <input type="radio" id="secondLanguage2" checked="checked" value="No"
															name="secondLanguage"> <label>No</label>



													</div>
												</fieldset>
											</td>
										</tr>
										<tr>
											<td style="text-align: right;">Display Known Languages:</td>
											<td>
												<fieldset id="group3">
													<div class="inline">

														<input type="radio" value="Yes" name="knownLanuguage" id="knownLanuguage">
														<label>Yes</label> <input type="radio" id="knownLanuguage2" checked="checked" value="No"
															name="knownLanuguage"> <label> No </label>

													</div>


												</fieldset>
											</td>
											<td style="text-align: right;">Height & weight:</td>
											<td>
												<fieldset id="group4">
													<div class="inline">

														<input type="radio" value="Yes" name="heightAndWeight" id="heightAndWeight">
														<label>Yes</label> <input type="radio" id="heightAndWeight2" checked="checked" value="No"
															name="heightAndWeight"> <label>No</label>



													</div>
												</fieldset>
											</td>
										</tr>
										<tr>
											<td style="text-align: right;">Family Background:</td>
											<td>
												<fieldset id="group5">
													<div class="inline">

														<input type="radio" id="familyBacground" value="Yes" name="familyBacground">
														<label>Yes</label> <input id="familyBacground2" type="radio"  checked="checked" value="No"
															name="familyBacground"> <label>No</label>



													</div>
													</div>
												</fieldset>
											</td>
											<td style="text-align: right;">Entrance Details:</td>
											<td>
												<fieldset id="group6">
													<div class="inline">

														<input type="radio" value="Yes" id="entranceDetails" name="entranceDetails">
														<label>Yes</label> <input type="radio" id="entranceDetails2" checked="checked" value="No"
															name="entranceDetails"> <label>No</label>



													</div>
													</div>
												</fieldset>
											</td>
										</tr>
										<tr>
											<td style="text-align: right;">Lateral Details:</td>
											<td>
												<fieldset id="group7">
													<div class="inline">

														<input type="radio" value="Yes" name="lateralDetails" id="lateralDetails">
														<label>Yes</label> <input type="radio" value="No" checked="checked" id="lateralDetails2"
															name="lateralDetails"> <label>No</label>



													</div>
												</fieldset>
											</td>
											<td style="text-align: right;">Training Short Courses:</td>
											<td>
												<fieldset id="group8">
													<div class="inline">

														<input type="radio" value="Yes" name="trainingShortCourse" id="trainingShortCourse">
														<label>Yes</label> <input type="radio" value="No" checked="checked" id="trainingShortCourse2"
															name="trainingShortCourse" > <label>No</label>

													</div>
												</fieldset>
											</td>
										</tr>
										<tr>
											<td style="text-align: right;">Transfer Course:</td>
											<td>
												<fieldset id="group9">
													<div class="inline">

														<input type="radio" value="Yes" name="transferCourse" id="transferCourse">
														<label>Yes</label> <input type="radio" value="No" checked="checked" id="transferCourse2"
															name="transferCourse"> <label>No</label>



													</div>
												</fieldset>
											</td>
											<td style="text-align: right;">Additional Information:</td>
											<td>
												<fieldset id="group10">
													<div class="inline">

														<input type="radio" value="Yes" id="additionalInformation" name="additionalInformation">
														<label>Yes</label> <input type="radio" checked="checked" id="additionalInformation2" value="No"
															name="additionalInformation"> <label>No</label>



													</div>
												</fieldset>
											</td>
										</tr>
										<tr>
											<td style="text-align: right;">Extra Curriculum:</td>
											<td>
												<fieldset id="group11">
													<div class="inline">

														<input type="radio" value="Yes" id="extraCurriculum" name="extraCurriculum">
														<label>Yes</label> <input type="radio" checked="checked" id="extraCurriculum2" value="No"
															name="extraCurriculum"> <label>No</label>



													</div>
												</fieldset>
											</td>
											<td style="text-align: right;">Is TC Display:</td>
											<td>
												<fieldset id="group12">
													<div class="inline">

														<input type="radio" value="Yes" name="isTCDisplay" id="isTCDisplay">
														<label>Yes</label> <input type="radio" checked="checked" value="No" id="isTCDisplay2"
															name="isTCDisplay"> <label>No</label>



													</div>
												</fieldset>
											</td>
										</tr>
										<tr>
											<td style="text-align: right;">Is Online Application
												Open:</td>
											<td>
												<fieldset id="group13">
													<div class="inline">

														<input type="radio" value="Yes" id="isOnlineApplicationOpen" name="isOnlineApplicationOpen">
														<label>Yes</label> <input type="radio" value="No" checked="checked" id="isOnlineApplicationOpen2"
															name="isOnlineApplicationOpen"> <label>No</label>



													</div>
												</fieldset>
											</td>
											<td style="text-align: right;"><label for="select">Online
													Application for:</label></td>
											<td><select class="browser-default custom-select"
												id="onlineApplicationYear" name="type">
													<option value="default">-- select--</option>
													<option value="2019-2020">2019-2020</option>
													<option value="2020-2021">2020-2021</option>
													<option value="2021-2022">2021-2022</option>
											</select></td>
										</tr>



									</tbody>
								</table>
							</div>
						</div>
					</div>

					<div class="panel panel-default" class="panel">
						<div class="panel-body">

							<div class="table-responsive">
								<table id="example" class="table table-bordered table-hover">
									<tr>
										<td style="text-align: right;"><span style="color: red;">*</span>Attendance
											with Registration No:</td>


										<td>
											<fieldset id="group14">
												<div class="inline">

													<input type="radio" value="Yes" id="attendanceWithRegistrationNo" name="attendanceWithRegistrationNo">
													<label>Yes</label> <input type="radio" id="attendanceWithRegistrationNo2" checked="checked" value="No"
														name="attendanceWithRegistrationNo"> <label>No</label>



												</div>
											</fieldset>
										</td>

									</tr>
								</table>
							</div>

						</div>
					</div>

					<button type="Submit" id="buttonProgramEntry" class="btn btn-success"
						style="margin-left: 450px; margin-top: 5px;">Submit</button>
					<!-- <div class="ui primary submit button" id="buttonProgramEntry">Submit</div> -->
					<button type="Reset" id="reset" class="btn btn-danger"
						style="margin-left: 10px; margin-top: 5px;">Reset</button>
					<!-- <div class="ui reset button">Reset</div> -->
				</form:form>

				<div class="panel panel-default"
					style="border-top-width: 1px; border-top-style: solid; border-bottom-width: 1px; border-bottom-style: solid; border-right-width: 1px; border-right-style: solid; border-left-width: 1px; border-left-style: solid; padding-top: 5px; padding-right: 5px; padding-left: 5px; border-color: whitesmoke; margin-bottom: 8px;">
					<div class="panel-body">
						<div class="table-responsive">
							<table id="tblProgram" class="table table-bordered table-hover">
								<thead>
									<tr style="background-color: #80CBC4; color: white;">
										<th>SI.NO</th>
										<th>Program Type</th>
										<th>Program Code</th>
										<th>program</th>
										<th>view</th>
										<th>Edit</th>
										<th>Delete</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td>1</td>
										<td>Under Graduation</td>
										<td>BBA</td>
										<td>Bachelor of Business Administration</td>
										<td><i class="eye icon"></i></td>
										<td><i onclick="update('+element.id+')" class="edit icon"></i></td>
										<td><i class="trash icon"></i></td>
									</tr>
									
								</tbody>
							</table>
						</div>
					</div>
				</div>







				<!-- </form> -->
				<div class="card-footer card bg-info text-white"></div>



				<!-- </div> -->
	</section>

</div>
<script>
	 $(document).ready(function() {
alert("helo");
		 getAllProgramEntry();
	 });
		 
		 
		 /* $('.err').hide();
	 $("#button").click(function(){
	 var pgm = $("#program").val().length;
	 var pg = $("#program_code").val().length;
	 var p = $("program_name").val().length;
	 if( pgm == '')
	 { 
	 $('.err').show();
	 $("#program").css("border-color","red");
	 }
	 if( pg == '')
	 { 
	 $('.err').show();
	 $("#program_code").css("border-color","red");
	 }
	
	 if( p == '')
	 { 
	 $('.err').show();
	 $("#program_name").css("border-color","red");
	 }
	 }); 
	 });
	 */


		$.validator.setDefaults( {
			submitHandler: function () {
				var programEntry = {};
				var dynamicURL = "";
				var methodName = "";
				var status = "";
                         					/* var ab = programType.programType = $('#programType').val(); */

                         					programEntry.programType = $('#programType').val();
                         					programEntry.program = $('#program').val();
                         					programEntry.programNameInCertificate = $('#programNameInCertificate').val();
                         					programEntry.programCode = $('#programCode').val();
                         					programEntry.stream = $('#stream').val();
                         					programEntry.motherTongue = $("input[name='motherToungue']:checked").val();
                         					programEntry.knownLanuguage = $("input[name='knownLanuguage']:checked").val();
                         					programEntry.familyBackground = $("input[name='familyBacground']:checked").val();
                         					programEntry.lateralDetails =$("input[name='lateralDetails']:checked").val();
                         					programEntry.transferCourse =$("input[name='transferCourse']:checked").val();
                         					programEntry.extraCurriculum = $("input[name='extraCurriculum']:checked").val();
                         					programEntry.isOnlineApplicationOpen = $("input[name='isOnlineApplicationOpen']:checked").val();
                         					programEntry.secondLanguage = $("input[name='secondLanguage']:checked").val();
                         					programEntry.heightAndWeight = $("input[name='heightAndWeight']:checked").val();
                         					programEntry.entranceDetails =$("input[name='entranceDetails']:checked").val();
                         					programEntry.trainingShortCourse = $("input[name='trainingShortCourse']:checked").val();
                         					programEntry.additionalInformation = $("input[name='additionalInformation']:checked").val();
                         					programEntry.isTCDisplay =$("input[name='isTCDisplay']:checked").val();
                         					programEntry.onlineApplicationYear = $('#onlineApplicationYear').val();
                         					programEntry.attendanceWithRegistrationNo = $("input[name='attendanceWithRegistrationNo']:checked").val();
                         				 	var programEntryId = $('#idForm').val();
                         					if(programEntryId)
                         						{
                         						dynamicURL="http://localhost:8080/updateProgramConfigById/"+programEntryId;
                         						methodName="PUT";
                         						status="Updated"
                         						}
                         					else
                         						{
                         						dynamicURL="http://localhost:8080/loadAdminProgramEntry";
                         						methodName="POST";
                         						status="Saved"
                         						} 
                         		 			var programEntryObj = JSON.stringify(programEntry);
                         				$.ajax({
                         							url:dynamicURL,
                         							method:methodName,
                         							data: programEntryObj,
                         							contentType:'application/json; charset=utf-8',
                         							success: function ()
                         							{
                         								swal(status+" Successfully.", {
                           									buttons: false,
                           									timer: 1000,
                         									});
                         								getAllProgramEntry();
                         								reset();
                         							},
                         							error: function (error)
                         							{
                         								alert(error);
                         							}
                         						});

            return false;

			}

		} );


/* 
	 var programEntry = {};
		$("#buttonProgramEntry").click(function(event){
				event.preventDefault();
				alert("Program Entry")
				programEntry.programType = $('#programType').val();
				programEntry.program = $('#program').val();
				programEntry.programNameInCertificate = $('#programNameInCertificate').val();
				programEntry.programCode = $('#programCode').val();
				programEntry.stream = $('#stream').val();
				programEntry.motherTongue = $('#motherToungue').val();
				programEntry.knownLanuguage = $('#knownLanuguage').val();
				programEntry.familyBackground = $('#familyBacground').val();
				programEntry.lateralDetails = $('#lateralDetails').val();
				programEntry.transferCourse = $('#transferCourse').val();
				programEntry.extraCurriculum = $('#extraCurriculum').val();
				programEntry.isOnlineApplicationOpen = $('#isOnlineApplicationOpen').val();
				/* programEntry.seatNoGenerationRequied = $('#seatNoGenerationRequied').val(); */
				/* programEntry.secondLanguage = $('#secondLanguage').val();
				programEntry.heightAndWeight = $('#heightAndWeight').val();
				programEntry.entranceDetails = $('#entranceDetails').val();
				programEntry.trainingShortCourse = $('#trainingShortCourse').val();
				programEntry.additionalInformation = $('#additionalInformation').val();
				programEntry.isTCDisplay = $('#isTCDisplay').val();
				programEntry.onlineApplicationYear = $('#onlineApplicationYear').val();
				programEntry.attendanceWithRegistrationNo = $('#attendanceWithRegistrationNo').val();
				
	 			var programEntryObj = JSON.stringify(programEntry);
	 			
			$.ajax({
						url:'http://localhost:8080/loadAdminProgramEntry',
						method:'POST',
						data: programEntryObj,
						contentType:'application/json; charset=utf-8',
						success: function ()
						{
							swal("Program Entry Saved Successfully.", {
								buttons: false,
								timer: 1000,
								});
							getAllProgramEntry();
						},
						error: function (error)
						{
							alert(error);
						}
					});
		}); */
		 

		function getAllProgramEntry()
		{
			$.ajax({
			url:"http://localhost:8080/getAllProgramEntry",
			method:"GET",
			datatype:"json",
			success:function(data)
			{
				var tableBody = $('#tblProgram tbody');
				tableBody.empty();
				$(data).each(function(index,element)
						{
								/* <a href="#"></a> */
								/* data-toggle="modal" data-target="#myModal" */
								/* <i class="edit icon"></i> */
								/* data-toggle="modal" data-target="#myModal" */
								/* href="/getProgramTypeById/'+element.id+'" */
							tableBody.append('<tr><td>'+element.id+'</td><td>'+element.programType+'</td><td>'+element.programCode+'</td><td>'+element.program+'</td><td><i class="eye icon"></i></td><td><i onclick="update('+element.id+')" class="edit icon"></i></td><td><i onclick="deleteProgramEntry('+element.id+')" class="trash icon"></i></td></tr>');
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


		function update(id)
		{
			/* alert(id); */

			$.ajax({
				url:"http://localhost:8080/getProgramConfigById/"+id,
				method:"GET",
				datatype:"json",
				success:function(data)
					{
					/* alert(data); */
						$('#programType').val(data.programType);
						$('#idForm').val(data.id);
						$('#program').val(data.program);
						
						$('#programNameInCertificate').val(data.programNameInCertificate);
						$('#programCode').val(data.programCode);
						
						$('#stream').val(data.stream);
						
						$('#onlineApplicationYear').val(data.onlineApplicationYear);
						/* alert(data.motherTongue); */
						if(data.motherTongue == "Yes")
							{             
                   $('#motherToungue').prop('checked', true);          
							}
						if(data.knownLanuguage == "Yes")
						{             
                $('#knownLanuguage').prop('checked', true);          
						}
						if(data.familyBackground == "Yes")
						{             
                 $('#familyBacground').prop('checked', true);          
						}
						if(data.lateralDetails == "Yes")
						{             
                $('#lateralDetails').prop('checked', true);          
						}
						if(data.transferCourse == "Yes")
						{             
             $('#transferCourse').prop('checked', true);          
						}
						if(data.extraCurriculum == "Yes")
						{             
               $('#extraCurriculum').prop('checked', true);          
						}
						if(data.isOnlineApplicationOpen == "Yes")
						{             
               $('#isOnlineApplicationOpen').prop('checked', true);          
						}
						if(data.seatNoGenerationRequied == "Yes")
						{             
               $('#seatNoGenerationRequied').prop('checked', true);          
						}
						if(data.isOnlineApplicationOpen == "Yes")
						{             
              $('#isOnlineApplicationOpen').prop('checked', true);          
						}
						if(data.secondLanguage == "Yes")
						{             
               $('#secondLanguage').prop('checked', true);          
						}
						if(data.heightAndWeight == "Yes")
						{             
               $('#heightAndWeight').prop('checked', true);          
						}
						if(data.entranceDetails == "Yes")
						{             
                $('#entranceDetails').prop('checked', true);          
						}
						if(data.trainingShortCourse == "Yes")
						{             
                $('#trainingShortCourse').prop('checked', true);          
						}
						if(data.additionalInformation == "Yes")
						{             
           $('#additionalInformation').prop('checked', true);          
						}
						if(data.isTCDisplay == "Yes")
						{             
            $('#isTCDisplay').prop('checked', true);          
						}
						
						/* $('#onlineApplicationYear').val(data.onlineApplicationYear);
						if(data.attendanceWithRegistrationNo == "Yes")
						{             
              $('#attendanceWithRegistrationNo').prop('checked', true);          
						} */
					
						
						getAllProgramEntry();
						},
						error:function(error)
						{
		alert(error);
							}
				
				});
			}

		 function reset()
		    {
		    	var programEntryId = $('#idForm').val();
		    	var programType = $('#programType').val('');
		    	var program = $('#program').val('');
		    	var programNameInCertificate = $('#programNameInCertificate').val('');
		    	var programCode = $('#programCode').val('');
		    	var stream = $('#stream').val('');
		    	var motherTongue =  $('#motherToungue2').prop('checked', true);
		    	var knownLanuguage = $('#knownLanuguage2').prop('checked', true); 
		    	var entranceDetails = $('#entranceDetails2').prop('checked', true); 
		    	var familyBackground = $('#familyBacground2').prop('checked', true); 
		    	var lateralDetails = $('#lateralDetails2').prop('checked', true); 
		    	var transferCourse = $('#transferCourse2').prop('checked', true); 
		    	var extraCurriculum = $('#extraCurriculum2').prop('checked', true); 
		    	var isOnlineApplicationOpen = $('#isOnlineApplicationOpen2').prop('checked', true); 
		    	var seatNoGenerationRequied = $('#seatNoGenerationRequied2').prop('checked', true); 
		    	var isOnlineApplicationOpen = $('#isOnlineApplicationOpen2').prop('checked', true); 
		    	var secondLanguage = $('#secondLanguage2').prop('checked', true); 
		    	var heightAndWeight = $('#heightAndWeight2').prop('checked', true); 
		    	var trainingShortCourse = $('#trainingShortCourse2').prop('checked', true); 
		    	var additionalInformation = $('#additionalInformation2').prop('checked', true); 
		    	var isTCDisplay = $('#isTCDisplay2').prop('checked', true); 
		    	var onlineApplicationYear =  $('#onlineApplicationYear').val('');
		    	var attendanceWithRegistrationNo = $('#attendanceWithRegistrationNo2').prop('checked', true); 
		     }
				
			$.validator.addMethod("lettersonly", function(value, element) {
				return this.optional(element) || /^[a-z]+$/i.test(value);
			});
			$.validator.addMethod("valueNotEquals", function(value, element, arg) {
				return arg !== value;
			});

	$("#commentform").validate({
		rules : {
			type : {
				valueNotEquals : "default"
			},
			code : {
				required : true,
				/* digits : true */
			},
			program : {
				required : true,
				/* lettersonly : true */
			},
			select : {
				valueNotEquals : "default"
			},
			stream : {
				valueNotEquals : "default"
			}
		},
		messages : {
			type : {
				valueNotEquals : "Please Select Program Type"
			},
			code : {
				required : "Please Enter The Program code",
				/* digits : "Enter Only digits" */
			},
			program : {
				required : "Please Enter The Program",
				/* lettersonly : "Enter Only Letters" */
			},
			select : {
				valueNotEquals : "Please Select Application"
			},
			stream : {
				valueNotEquals : "Please Select Stream"
			}
		}
	});

	function deleteProgramEntry(id)
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
						url:"http://localhost:8080/deleteProgramConfig/"+id,
						method:'DELETE',
						contentType:'application/json; charset=utf-8',
						success: function ()
						{
							getAllProgramEntry();
						}
				  });
			    swal("Program Entry has been deleted!", {
			      icon: "success",
			    });
			  } else {
			    swal("program Entry is Safe!");
			  }
			});
	}
	
</script>
<%@include file="/WEB-INF/views/admin/includes/footer.jsp"%>