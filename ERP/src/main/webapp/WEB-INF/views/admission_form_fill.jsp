<%@include file="header.jsp"%>

<head>
<meta name="viewport" content="width=device-width">
<style>
.red {
	color: red;
}

body {
	background-image:
		url(https://images.pexels.com/photos/242236/pexels-photo-242236.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500.jpg);
	background-size: contain;
}

.error {
	color: red;
}

.card-header {
	background-color: #00ACC1;
	margin-bottom: 40px;
	font-size: 22px;
	color: white;
}

.col {
	color: white;
}
font-family
:
 
'
Californian
 
FB
'
,
sans-serif
 
!
important
;


}
</style>
<script
	src="https://cdn.jsdelivr.net/npm/semantic-ui@2.4.2/dist/semantic.min.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$('.collbtn').click(function() { //you can give id or class name here for $('button')
			$(this).text(function(i, old) {
				return old == '+' ? '-' : '+';
			});
		});

		function readURL(input) {
			 /* alert(input);  */
			if (input.files && input.files[0]) {
				var reader = new FileReader();
/* alert(reader); */
var fsize = $('#inputFile')[0].files[0].size;
/* alert(fsize); */
var ftype = $('#inputFile')[0].files[0].type;
/* alert(ftype); */

/* if(fsize>1048576) //do something if file size more than 1 mb (1048576)
{
	alert(fsize +" bites\nToo big!");
}else{
	alert(fsize +" bites\nYou are good to go!");
	
}
}else{
alert("Please upgrade your browser, because your current browser lacks some new features we need!");
} */
/* 1048576 */
if(fsize < 2097152)
{
	switch(ftype)
	{
		case 'image/png':
		/* case 'image/gif': */
		case 'image/jpeg':
		case 'image/pjpeg': 
			/* alert("Acceptable image file!"); */
			reader.onload = function(e) {
				$('#image_upload_preview').attr('src', e.target.result);
			}

			reader.readAsDataURL(input.files[0]);
			break;
		default:
			swal("File Format Does Not Support.")
			.then((value) => {
			  swal(`Preferred File Format is JPEG And PNG`);
			});
	}

	   

		
}		
else
	{
	swal("Image Size is Greater Than 2 MB.")
	.then((value) => {
	  swal(`Please Select Image Less Than 2 MB. Select New Image And Proceed ${fsize}`);
	});
	}
}
		}

		$("#inputFile").change(function() {
			readURL(this);
		});


	});
</script>
</head>
>
<body>

	<div class="container-fluid">

		<form:form method="POST" modelAttribute="candidateAdmission"
			enctype="multipart/form-data" id="admissionForm"
			action="/candidate-admission-form">
			<%-- <c:forEach var="getlist" items="${listme}"> --%>
			<div class="container">
				<div class="container-fluid">
					<div class="row">
						<div class="col-md-3">
							<h5>Reference ID :- ${listme.referenceid}</h5>
						</div>
						<div class="col-md-6" style="text-align: center">
							<h2>Application Form</h2>
						</div>
						<div class="col-md-3">
							<h5>Application No :- ${listme.id}</h5>
						</div>
					</div>
				</div>
				<br />
				<div class="card">
					<div class="card-header">
						Personal Details<span class="red">*</span>
					</div>

					<div class="row">
						<div class="form-group col-md-12">
							<!-- <label class="col-md-3 control-lable" for="firstName">referenceid</label> -->
							<div class="col-md-7">
								<form:input type="hidden" path="referenceid"
									value="${listme.referenceid}" class="form-control input-sm" />
								<div class="has-error">
									<form:errors path="id" class="help-inline" />
								</div>
							</div>
						</div>
					</div>

					<!-- Row -->

					<div class="form-row">
						<div class="form-group col-md-4">
							<%-- <label for="inputname" style="padding-left: 20px">Full Name</label>
      <input type="text" class="form-control"  name="fullname" style="width: 220px; align:center; margin-left: 20px" value="${listme.fullname}" id="fulname"  disabled/> --%>
							<label for="inputname"
								style="padding-left: 20px; margin-top: 10px;">Full Name</label><span
								class="red">*</span> <input type="text" class="form-control"
								name="fullname"
								style="width: 220px; align: center; margin-left: 20px"
								value="${listme.fullname}" id="fulname" disabled>
						</div>
						<%-- <div class="form-group col-md-4">
      <label for="inputdob">DOB</label>
      <form:input type="date" class="form-control" id="date" style="width: 220px" name="dob" path="dob" placeholder=""/>
     --%>

						<div class="form-group col-md-3">
							<label for="inputdob" style="margin-top: 10px;">DOB</label><span
								class="red">*</span>
							<form:input type="date" class="form-control" id="date"
								style="width: 220px" name="dob" path="dob" placeholder="" />

						</div>
						<div class="form-group col-md-4"></div>
					</div>

					<!-- Row Ended -->

					<div class="form-row">
						<div class="form-group col-md-3">
							<label for="email" style="padding-left: 20px">Email</label><span
								class="red">*</span> <input type="email" class="form-control"
								value=" ${listme.mailid}"
								style="width: 220px; margin-left: 20px" name="mail"
								placeholder="" disabled />
						</div>
						<div class="form-group col-md-3">
							<label for="phonenumber">Phone Number</label><span class="red">*</span>
							<input type="text" class="form-control" name="phonenumber"
								style="width: 220px" value=" ${listme.phonenumber}"
								placeholder="" disabled />
						</div>

						<div class="form-group col-md-3">
							<label for="inputdob">Gender</label><span class="red">*</span><br>
							<div class="form-check-inline">
								<label class="form-check-label"> <form:radiobutton
										class="form-check-input" path="gender" value="Male"
										name="optradio" />Male
								</label>
							</div>
							<div class="form-check-inline">
								<label class="form-check-label"> <form:radiobutton
										class="form-check-input" path="gender" value="Female"
										name="optradio" />Female
								</label>
							</div>
						</div>
						<div class="form-group col-md-3">
							<img id="image_upload_preview" width="160px" height="150px"
								style="margin-top: -100px;" src="http://placehold.it/160x150"
								alt="your image" /> <input type='file' id="inputFile"
								name="photo" />
						</div>
					</div>

					<div class="form-row">
						<div class="form-group col-md-3">
							<label for="caste" style="padding-left: 20px">Caste</label><span
								class="red">*</span>
							<%-- <form:select class="form-control"
								style="width: 190px; margin-left: 20px" path="caste">
								<form:option value="default" label="Select" />
								<c:forEach var="program" items="${programs}">
									<option label="Select" myTag="${program.id}">
										${program.programname}</option>
								</c:forEach>
							</form:select> --%>
							<form:select style="width: 190px;margin-left: 20px" path="caste"
									name="caste" class="form-control">
									<form:option value="default" label="Select" />
									<form:options items="${caste}" />
								</form:select>
						</div>
						<div class="form-group col-md-3">
							<%-- <label for="nation">Nationality</label><span class="red">*</span>
      <form:input type="text" class="form-control" minlength="3" name="nationality" style="width: 220px" path="nationality" placeholder=""/> --%>
							<label for="nation">Nationality</label><span class="red">*</span>
							<%-- <form:select class="form-control" style="width: 190px"
								path="nationality">
								<form:option value="default" label="Select" />
								<form:options items = "${countries.get}" />
								<c:forEach var="country" items="${countries}">
									<option>${country.name}</option>
								</c:forEach>
							</form:select> --%>
							<form:select style="width: 190px;margin-left: 20px" path="nationality"
									name="caste" class="form-control">
									<form:option value="default" label="Select" />
									<form:options items="${natioanality}" />
								</form:select>

						</div>

						<div class="form-group col-md-6">
							<label for="inputdob">Address</label><span class="red">*</span>
							<form:textarea class="form-control"
								style=" height: 35px; width: 520px; margin-right: 20px"
								minlength="10" name="address" path="address" placeholder=""></form:textarea>
						</div>
					</div>

				</div>
			</div>

			<br />

			<div class="container">

				<div class="card" name="parent">
					<div class="card-header" style="padding-left: 20px">
						Parent / Gaurdian Details<span class="red">*</span>
						<button type="button" class="btn btn-info collbtn"
							data-toggle="collapse" data-target="#demo1" style="float: right;">+</button>
					</div>
					<div id="demo1" class="collapse">

						<div class="form-row">
							<div class="form-group col-md-4">
								<label for="parent" style="padding-left: 20px">Parent /
									Gaurdian Name</label><span class="red">*</span>
								<form:input type="text" class="form-control" minlength="3"
									style="width: 220px; margin-left: 20px" path="p_name"
									placeholder="" />
							</div>
							<div class="form-group col-md-8">
								<label for="parentPhoneNumber">Phone Number</label><span
									class="red">*</span>
								<form:input type="text" class="form-control" minlength="10"
									style="width: 220px" path="p_phonenumber" placeholder="" />
							</div>
							<br />
						</div>

						<div class="form-row">
							<div class="form-group col-md-4">
								<label for="mailID" style="padding-left: 20px">Mail ID </label>
								<form:input type="email" class="form-control"
									style="width: 220px; margin-left: 20px" path="p_mailid"
									placeholder="" />
							</div>
							<div class="form-group col-md-8">
								<label for="address">Address</label><span class="red">*</span>
								<form:textarea class="form-control" rows="5"
									style=" height: 40px; width: 620px; margin-right: 20px"
									minlength="10" id="date" path="p_address" placeholder=""></form:textarea>
							</div>
						</div>

					</div>
				</div>
			</div>
			<br />


			<div class="container">

				<div class="card">
					<div class="card-header">
						Academic Details<span class="red">*</span>
						<button type="button" class="btn btn-info collbtn"
							data-toggle="collapse" data-target="#demo2" style="float: right;">+</button>
					</div>
					<div id="demo2" class="collapse">
						<div class="form-row">
							<div class="form-group col-md-4">
								<label for="sslcBoard" style="padding-left: 20px">SSLC
									Board</label><span class="red">*</span>
								<form:input type="text" name="sslcBoard" class="form-control"
									minlength="3" style="width: 220px; margin-left: 20px"
									path="sslc_board" placeholder="" />
							</div>
							<div class="form-group col-md-4">
								<label for="pucBoard">PUC Board</label><span class="red">*</span>
								<form:input type="text" class="form-control" name="pucBoard"
									minlength="3" style="width: 220px" path="puc_board"
									placeholder="" />
							</div>
							<div class="form-group col-md-4">
								<label for="graduationBoard">Graduation Board</label><span
									class="red">*</span>
								<form:input type="text" class="form-control"
									name="graduationBoard" minlength="3" style="width: 220px"
									path="graduate_board" placeholder="" />
							</div>
						</div>

						<div class="form-row">
							<div class="form-group col-md-4">
								<label for="sYop" style="padding-left: 20px">YOP</label><span
									class="red">*</span>
								<form:input type="text" class="form-control" name="sYop"
									minlength="4" style="width: 220px; margin-left: 20px;"
									path="s_yop" />
							</div>
							<div class="form-group col-md-4">
								<label for="pYOP">YOP</label><span class="red">*</span>
								<form:input type="text" class="form-control" name="pYop"
									minlength="4" style="width: 220px;" path="p_yop" />
							</div>
							<div class="form-group col-md-4">
								<label for="gYop">YOP</label><span class="red">*</span>
								<form:input type="text" class="form-control" name="gYop"
									minlength="4" style="width: 220px;" path="g_yop" />
							</div>
						</div>

						<div class="form-row">
							<div class="form-group col-md-4">
								<label for="sPerc" style="padding-left: 20px">%</label><span
									class="red">*</span>
								<form:input type="text" class="form-control" name="sPerc"
									style="width: 220px; margin-left: 20px" path="s_percentage"
									placeholder="" />
							</div>
							<div class="form-group col-md-4">
								<label for="pPerc">%</label><span class="red">*</span>
								<form:input type="text" class="form-control" name="pPerc"
									style="width: 220px" path="p_percentage" placeholder="" />
							</div>
							<div class="form-group col-md-4">
								<label for="gPerc">%</label><span class="red">*</span>
								<form:input type="text" class="form-control"
									style="width: 220px" path="g_percentage" name="gPerc"
									placeholder="" />
							</div>
						</div>

					</div>
				</div>
			</div>

			<br />

			<div class="container">

				<div class="card">
					<div class="card-header">
						Course Details<span class="red">*</span>
						<button type="button" class="btn btn-info collbtn"
							data-toggle="collapse" data-target="#demo3" style="float: right;">+</button>
					</div>
					<div id="demo3" class="collapse">
						<div class="form-row">
							<div class="form-group col-md-4">
								<label for="course" style="padding-left: 20px">Course</label><span
									class="red">*</span>
								<form:select class="form-control"
									style="width: 220px; margin-left: 20px" path="course">
									<form:option value=" ${listme.course}" />

								</form:select>
							</div>
							<div class="form-group col-md-4">
								<label for="inputdob">Course Type</label><span class="red">*</span>
								<form:select style="width: 220px" path="course_type"
									class="form-control">
									<form:option value="default" label="Select" />
									<form:options items="${coursesType}" />
								</form:select>
							</div>

							<div class="form-group col-md-4">
								<label for="inputname">First Language</label><span class="red">*</span>
								<form:select style="width: 220px" path="first_language"
									name="firstLanguage" class="form-control">
									<form:option value="default" label="Select" />
									<form:options items="${firstLanguage}" />
								</form:select>
							</div>



						</div>
					</div>
				</div>
			</div>
			<br />

			<div class="container">

				<div class="card">
					<div class="card-header">
						Quota<span class="red">*</span>
						<button type="button" class="btn btn-info collbtn"
							data-toggle="collapse" data-target="#demo4" style="float: right;">+</button>
					</div>
					<div id="demo4" class="collapse">
						<div class="form-row">
							<div class="form-group col-md-4 ">
								<!-- <label for="inputname">Caste</label> -->
								<br>


								<form:select style="width: 180px ; margin-left: 20px"
									path="quota_caste" name="caste" class="form-control" id="caste">
									<form:option value="default" label="Select Caste" />
									<form:options items="${caste}" />
								</form:select>
							</div>
							<div class="form-group col-md-8">
								<br>
								<div class="form-check-inline">
									<label class="form-check-label"> <form:checkbox
											class="form-check-input" path="quota_sports" value="sports" />Sports
									</label>
								</div>
								<!-- <div class="form-check-inline">
  <label class="form-check-label">
    <form:checkbox class="form-check-input" path="" value=""/>Option 2
  </label>
</div> -->
								<div class="form-check-inline disabled">
									<label class="form-check-label"> <form:checkbox
											class="form-check-input" path="quota_speciallyenabled"
											value="speciallyEnabled" />Specially Enabled
									</label>
								</div>
							</div>

						</div>

					</div>
				</div>
			</div>
			<br />

			<div class="container">

				<div class="card">
					<div class="card-header">
						Entrance Exam Details<span class="red">*</span>
						<button type="button" class="btn btn-info collbtn"
							data-toggle="collapse" data-target="#demo5" style="float: right;">+</button>
					</div>
					<div id="demo5" class="collapse">
						<div class="form-group">
							<table class="table">
								<thead>
									<tr>
										<th scope="col">*</th>
										<th scope="col">Entrance Exam</th>
										<th scope="col">Registration No</th>
										<th scope="col">Percentage</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<th scope="row">1</th>
										<td><form:input type="text" path="entrance_exam"
												minlength="2" class="form-control" name="eExam"
												placeholder="" /></td>
										<td><form:input type="text" path="r_no"
												class="form-control" name="rNo" placeholder="" /></td>
										<td><form:input type="text" path="r_marks"
												class="form-control" name="ePerc" placeholder="" /></td>
									</tr>
									<tr>
										<th scope="row">2</th>
										<td><form:input type="text" path="entrance_exam2"
												minlength="2" class="form-control" name="eExam2"
												placeholder="" /></td>
										<td><form:input type="text" path="r_no2"
												class="form-control" name="rNo2" placeholder="" /></td>
										<td><form:input type="text" path="r_marks2"
												class="form-control" name="ePerc2" placeholder="" /></td>
									</tr>
								</tbody>
							</table>
						</div>

					</div>


					<br />
				</div>
				<br />

				<%-- <form:button type="submit"  class="btn btn-outline-primary btn-lg justify-content-center" style="margin-left:470px">Submit</form:button> 
 <form:button type="reset"  class="btn btn-outline-primary btn-lg justify-content-center" >Reset</form:button>  --%>

				<div class="ui buttons">
					<button type="submit"
						class="ui positive button justify-content-center"
						style="margin-left: 470px">Submit</button>
					<div class="or"></div>
					<button type="reset" class="ui button justify-content-center">Reset</button>
				</div>
			</div>



			<%-- </c:forEach> --%>
		</form:form>
		<br />
		<br />
		<br />




	</div>

	<script>
		$(document)
				.ready(
						function() {

							$.validator.addMethod("castte", function(value,
									element, arg) {
								return arg !== value;
							}, "Value must not equal arg.");

							$.validator.addMethod("courseTypee", function(
									value, element, arg) {
								return arg !== value;
							}, "Value must not equal arg.");

							$.validator.addMethod("firstLanguage", function(
									value, element, arg) {
								return arg !== value;
							}, "Value must not equal arg.");

							$("#admissionForm")
									.validate(
											{

												rules : {
													dob : {
														required : true
													},
													caste : {
														castte : "default"
													},
													nationality : {
														required : true,
														maxlength : 15
													},
													gender : {
														required : true
													},
													address : {
														required : true,
														minlength : 10,
														maxlength : 40
													},
													p_address : {
														required : true,
														minlength : 10,
														maxlength : 40
													},
													p_name : {
														required : true,
														minlength : 3,
														maxlength : 25,
													},
													p_phonenumber : {
														required : true,
														minlength : 10,
														maxlength : 10,
														digits : true
													},
													p_mailid : {
														required : true,
														email : true
													},
													p_address : {
														required : true,
														minlength : 10,
														maxlength : 40
													},
													sslc_board : {
														required : true,
														minlength : 2,
														maxlength : 30,
													},
													puc_board : {
														required : true,
														minlength : 2,
														maxlength : 30
													},
													graduate_board : {
														required : true,
														minlength : 2,
														maxlength : 30
													},
													s_yop : {
														required : true,
														minlength : 4,
														maxlength : 4,
														digits : true
													},
													p_yop : {
														required : true,
														minlength : 4,
														maxlength : 4,
														digits : true
													},
													g_yop : {
														required : true,
														minlength : 4,
														maxlength : 4,
														digits : true
													},
													s_percentage : {
														required : true

													},
													p_percentage : {
														required : true
													},
													g_percentage : "required",
													course_type : {
														courseTypee : "default"

													},
													first_language : {
														firstLanguage : "default"

													},
													entrance_exam : {

														minlength : 2,
														maxlength : 20
													},
													entrance_exam2 : {

														minlength : 2,
														maxlength : 20
													},
													r_no : {
														maxlength : 20

													},
													r_no2 : {
														maxlength : 20

													},
													r_marks : {
														maxlength : 6

													},
													r_marks2 : {
														maxlength : 6
													},
													photo : {
														required : true
													}
												},
												messages : {
													dob : {
														required : "Select Date Of Birth",

													},
													gender : {
														required : "Please Select Gender"
													},
													nationality : {
														required : "Enter Nationality",
														maxlength : "Value is too long"

													},
													address : {
														required : "Provide Address",
														maxlength : "Address Is Too Long"

													},
													p_address : {
														required : "Provide Address",
														minlength : "Too Short",
														maxlength : "Address Is Too Long"
													},
													caste : "Select Caste",

													p_mailid : {
														required : "Provide Mail ID"

													},
													p_name : {
														required : "Provide Parent/Gaurdian Name",
														maxlength : "Name Is Too Long"
													},
													p_phonenumber : {
														required : "Enter Phone Number",
														minlength : "Should be 10 Digits",
														maxlength : "PhoneNumber Too Long - Should be 10 Digits",
														digits : "Enter Only digits"
													},
													sslc_board : {
														required : "Enter SSLC Board",
														minlength : "Too Short",
														maxlength : "Board Name is too long"
													},
													puc_board : {
														required : "Enter PUC Board",
														minlength : "Too Short",
														maxlength : "Board Name Is Too Long"
													},
													graduate_board : {
														required : "Enter Graduation Board",
														minlength : "Too Short",
														maxlength : "Board Name Is Too Long"
													},
													s_yop : {
														required : "Enter Year Of Passout",
														minlength : "Year Is 4 Digits",
														maxlength : "Enter Only 4 Digits",
														digits : "Enter Only Digits"
													},
													p_yop : {
														required : "Enter Year Of Passout",
														minlength : "Year Is 4 Digits",
														maxlength : "Enter Only 4 Digits",
														digits : "Enter Only Digits"
													},
													g_yop : {
														required : "Enter Year Of Passout",
														minlength : "Year Is 4 Digits",
														maxlength : "Enter Only 4 Digits",
														digits : "Enter Only Digits"
													},
													s_percentage : {
														required : "Enter Percentage Scored",
														maxlength : "Value Entered Is Too Long"

													},
													p_percentage : {
														required : "Enter Percentage Scored",
														maxlength : "Value Entered Is Too Long"

													},
													g_percentage : {
														required : "Enter Percentage Scored",
														maxlength : "Value Entered Is Too Long"

													},
													course : {
														required : "Select Course",
													},
													course_type : "Select Course",
													first_language : "Select First Language",
													entrance_exam : {
														maxlength : "Value Entered is Too Long"
													},
													entrance_exam2 : {
														maxlength : "Value Entered is Too Long"
													},
													r_no : {
														maxlength : "Value Entered is Too Long"
													},
													r_no2 : {
														maxlength : "Value Entered is Too Long"
													},
													r_marks : {
														maxlength : "Value Entered is Too Long"
													},
													r_marks2 : {
														maxlength : "Value Entered is Too Long"
													},
													photo : "Select Photo"

												}
											});

							// propose username by combining first- and lastname
							$("#username").focus(function() {
								var firstname = $("#firstname").val();
								var lastname = $("#lastname").val();
								if (firstname && lastname && !this.value) {
									this.value = firstname + "." + lastname;
								}
							});

							//code to hide topic selection, disable for demo
							var newsletter = $("#newsletter");
							// newsletter topics are optional, hide at first
							var inital = newsletter.is(":checked");
							var topics = $("#newsletter_topics")[inital ? "removeClass"
									: "addClass"]("gray");
							var topicInputs = topics.find("input").attr(
									"disabled", !inital);
							// show when newsletter is checked
							newsletter.click(function() {
								topics[this.checked ? "removeClass"
										: "addClass"]("gray");
								topicInputs.attr("disabled", !this.checked);
							});

						});
	</script>


</body>
</html>