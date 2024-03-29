
<!-- IMPORTS -->
<%@include file="header.jsp"%>
<%@ page import="java.security.SecureRandom"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<head>

<!-- <script src="js/registerForm.js"></script> -->

<style>
body {
	background-image:
		url(https://images.unsplash.com/photo-1498243691581-b145c3f54a5a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80.jpg);
	background-size: cover;
}

.error {
	color: red;
}
</style>
<script>
	function alerttme() {
		/* alert("suceess"); */
		swal({
			title : "Thank You For Registering",
			text : "Check Your Mail For Reference ID To Login",
			icon : "success",
		})

	}
	function alerttme2() {
		swal("Oops!", "Please Verify Catch!", "error")
	}
</script>
</head>

<body>

	<div class="container">
		<br>
		<div class="row">
			<div class="col"></div>
			<div class="col"></div>
			<div class="col"
				style="float: right; border: black; border-style: solid; border-radius: 25px; background-color: white; padding-top: 30px; padding-bottom: 30px">
				<!-- Nav pills -->
				<ul class="nav nav-tabs" role="tablist">
					<li class="nav-item"><a class="nav-link active"
						data-toggle="tab" href="#register">Register</a></li>
					<li class="nav-item"><a class="nav-link" data-toggle="tab"
						href="#login">Login</a></li>
				</ul>

				<!-- Tab panes -->
				<div class="tab-content">
					<div id="register" class="container tab-pane active">
						<br> <small style="float: right; color: red;">*
							Mandatory fields</small>
						<!-- REGISTERATION FORM BEGINING -->

						<form:form method="POST" modelAttribute="Registeration"
							id="registerForm" action="/registeration" autoComplete="off">

							<c:if test="${message ne null}">
								<%-- <div class="alert alert-danger">
      												${message}
      											</div> --%>

								<script type="text/javascript">
									alerttme2();
								</script>


							</c:if>

							<c:if test="${success ne null}">
								<%-- <h1>${success}</h1> --%>
								<script type="text/javascript">
									/* window.onload = function(){
										alert("yes!!!!") */
									alerttme();

									/* }  */
								</script>



							</c:if>

							<!-- JSP SCRIPLET FOR GENERATING REFERENCE ID -->

							<%
								int refid = (int) (Math.random() * 9000) + 1000;
							%>

							<%-- <form:errors cssClass="error"/>  --%>
							<div class="form-group">
								<form:input type="hidden" class="form-control"
									path="referenceid" id="ref" value="<%=refid%>"
									name="referenceid" />
								<%-- <form:errors path="referenceid" cssClass="error"/> --%>
							</div>

							<div class="form-group">

								<!-- <label for="email">Name:</label> -->

								<!-- <i class="fa fa-address-card-o"></i> -->

								<form:input type="text" class="form-control" path="fullname"
									name="personName" minlength="5" placeholder="Enter Full Name*"
									id="name" />
								<!-- <p id="err" class="text-danger">please enter the name before submit and should be more than 3 characters</p> -->
								<%-- <form:errors path="fullname" cssClass="error"/> --%>
							</div>

							<div class="form-group">
								<form:input type="text" class="form-control" path="phonenumber"
									minlength="10" placeholder="Enter Contact Number*" />
								<%-- <form:errors path="phonenumber" cssClass="error"/>	 --%>
							</div>

							<div class="form-group">
								<%-- <form:label path="mailid" for="pwd">Mail ID:</form:label> --%>
								<form:input type="email" class="form-control" path="mailid"
									placeholder="Enter Mail ID*" id="mail" />
								<%-- <form:errors path="mailid" cssClass="error"/>	 --%>
							</div>

							<div class="form-group">
								<!-- style="width: 180px" -->
								<form:select path="" name="prgm" class="form-control"
									id="programtype">
									<form:option value="default" label="Select Program*" />
									<%-- <form:options items = "${courses}" /> --%>
									<c:forEach var="program" items="${programs}">
										<option label="Select" myTag="${program.id}">
											${program.programname}</option>
									</c:forEach>
								</form:select>
							</div>

							<div class="form-group">
								<!-- <label for="sel1">Select Course</label> -->
								<form:select path="course" class="form-control" id="allcoursess">
									<form:option value="default" label="Select Course*" />
									<!-- <option>4</option> -->
								</form:select>
							</div>

							<!-- name="g-recaptcha-response" -->
							<div class="form-group">
								<div class="g-recaptcha"
									data-sitekey="6LeJ9Y4UAAAAAJBgdraRwMJCLu0FNYGrEyRtdUJh"></div>
								<input type="hidden" class="hiddenRecaptcha required"
									name="hiddenRecaptcha" id="hiddenRecaptcha"> <br>
								<!--  <button type="submit" id="registerButton" class="btn btn-primary">Submit</button>
  <button type="reset" class="btn btn-primary">Reset</button> -->
								<div class="ui buttons">
									<button id="registerButton" class="ui positive button">Submit</button>
									<div class="or"></div>
									<button class="ui button" type="reset">Reset</button>
								</div>
							</div>
						</form:form>
					</div>

					<!-- LOGIN FORM -->

					<div id="login" class="container tab-pane fade">
						<br>

						<form method="GET" action="/logIn" id="loginForm">
							<div class="form-group">

								<!-- style="color: white; margin-left: 5px;margin-bottom: 0.5rem;" -->
								<label>You Are ?</label> <select id="selectMe"
									class="browser-default custom-select" name="selector">
									<option value="default" selected>select</option>
									<option value="1">Admin</option>
									<option value="2">Department</option>
									<option value="3">Student</option>
								</select>
							</div>

							<!--  <div class="form-group">
   <input type="text" class="form-control"  placeholder="Enter Reference ID" id="enterMe"/>
  </div> -->
							<div class="form-group">
								<input type="text" class="form-control" name="userName"
									placeholder="Enter UserName" id="admin" />
							</div>
							<%-- <div class="form-group">
    <form:input type="text" class="form-control" path="" placeholder="Enter OTP" id="otp"/>
  </div> --%>
							<div class="form-group">
								<input type="password" class="form-control" name="passWord"
									placeholder="Enter Password" id="pass" />
							</div>

							<br>
							<!-- <button type="submit" class="btn btn-primary">Submit</button>
  <button type="reset" class="btn btn-primary">Reset</button> -->
							<div class="ui buttons">
								<button type="submit" class="ui positive button">Submit</button>
								<div class="or"></div>
								<button type="reset" class="ui button">Reset</button>
							</div>
						</form>

					</div>

				</div>
			</div>
		</div>
	</div>

	<script>
		$(document)
				.ready(
						function() {

							// validate the comment form when it is submitted

							/* HOMEPAGE LOGIN */

							$("#admin").hide();
							/*   $("#enterMe").hide(); 
							$("#otp").hide(); */
							$("#pass").hide();

							$("#selectMe").on("change", function() {
								/* var stor = $("#selectMe option:selected").val();
								alert(stor);
									if(stor==3)
										{ */
								/* $("#enterMe").show();	
								}
								else */
								$("#admin").show();
								$("#pass").show();

							});

							$("#programtype")
									.on(
											'change',
											function() {
												var countryid = $(
														'#programtype option:selected')
														.attr("mytag");
												/* alert(countryid);  */

												$
														.ajax({
															url : '/loadCourse/'
																	+ countryid,
															type : 'GET',
															success : function(
																	result) {
																var result = JSON
																		.parse(result);
																/* alert(result);  */
																var s = "";
																console
																		.log(5 + 6);
																s = " <option>Select Course*</option>";
																for (var i = 0; i < result.length; i++) {
																	console
																			.log("hello");
																	s += '<option>'
																			+ result[i].course
																			+ '</option>';
																	console
																			.log(s);
																}
																$(
																		"#allcoursess")
																		.html(s);
																console
																		.log(5 + 6);
															}
														});
											});

							$("#enterMe").on("change", function() {
								$("#otp").show();
							});

							$.validator.addMethod("valueNotEquals", function(
									value, element, arg) {
								return arg !== value;
							}, "Value must not equal arg.");

							$.validator.addMethod("valueNot", function(value,
									element, arg) {
								return arg !== value;
							}, "Value must not equal arg.");

							$.validator.addMethod("valueNotEqu", function(
									value, element, arg) {
								return arg !== value;
							}, "Value must not equal arg.");

							// validate signup form on keyup and submit
							$("#registerForm")
									.validate(
											{
												rules : {
													fullname : {
														required : true,
														minlength : 3,
														maxlength : 25
													},
													phonenumber : {
														required : true,
														minlength : 10,
														maxlength : 10,
														digits : true
													},
													mailid : {
														required : true,
														email : true
													},
													prgm : {
														valueNotEquals : "default"
													},
													course : {
														valueNotEqu : "default"
													},
													hiddenRecaptcha : {
														required : function() {
															if (grecaptcha
																	.getResponse() == '') {
																return true;
															} else {
																return false;
															}
														}
													}
												},
												/* highlight : function(element)
												{
													$(element).closes('.form-group').removeClass('has-success').addClass('has-error');
												},
												unhighlight:function(element)
												{
													$(element).closes('.form-group').removeClass('has-error').addClass('has-success');
												}, */
												messages : {
													fullname : {
														required : "Enter Full Name",
														minlength : "FullName Too Short",
														maxlength : "FullName Too Long"

													},
													phonenumber : {
														required : "Enter Phonenumber",
														minlength : "Phonenumber should be 10 digits",
														maxlength : "Phone number is 10 digits",
														digits : "Enter only digits"
													},
													mailid : {
														required : "Enter MailID"
													},
													prgm : "Select Program",
													course : "Select Program",
													hiddenRecaptcha : {

														required : "Verify captcha"
													}

												}
											});

							$("#loginForm").validate({
								rules : {
									selector : {
										valueNot : "default"
									},
									userName : {
										required : true,
										minlength : 3,
										maxlength : 4
									},
									passWord : {
										required : true,
										minlength : 3,
										maxlength : 4
									}
								},
								/* highlight : function(element)
								{
									$(element).closes('.form-group').removeClass('has-success').addClass('has-error');
								},
								unhighlight:function(element)
								{
									$(element).closes('.form-group').removeClass('has-error').addClass('has-success');
								}, */
								messages : {
									userName : {
										required : "Enter Username",
										minlength : "Username Too Short",
										maxlength : "Username Too Long"

									},
									passWord : {
										required : "Enter Password",
										minlength : "Password Too Short",
										maxlength : "Password Too Long"
									},
									selector : "Select Your Role",

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

							/* $("#registerButton").click(function(){
							 	swal({
							  title: "Thank You For Registering",
							  text: "Check Your Mail For Reference ID To Login",
							  icon: "success",
							});
							}); */

						});
	</script>

</body>