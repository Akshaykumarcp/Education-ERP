 <%@include file="/WEB-INF/views/admin/includes/header.jsp"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
 
 <!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<!-- Popper JS -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script> 
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
<script src="bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
<!-- DataTables -->
<script
	src="bower_components/datatables.net/js/jquery.dataTables.min.js"></script>
	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<script
	src="bower_components/datatables.net-bs/js/dataTables.bootstrap.min.js"></script>
<style>
* {
	font-family: calibri;
}
.label1{
float: right;
padding-top: 5px;
font-size: 18px;
}
#button{
margin-left: 400px;
margin-top: 5px;
}
.co{
background-color: ECEFF1;
}
.rr {
	background-color: #80CBC4;
}

.col {
	background-color: ECEFF1;

}
#group1{
	margin-left: 5px;
	}
	#group4{
	margin-left: 30px;
	}

#group2{
	margin-left: 75px;
	}
	#group6{
	margin-left: 7px;
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
	margin-left: 82px;
	margin-top: 5px;
	}
	#group1{
	margin-left: -11px;
	}
	#group2{
	margin-left: -8px;
	}
#group3{
	margin-left: -14px;
	}
	#group4{
	margin-left: 14px;
	}
#group5{
	margin-left: -12px;
	}
	#group6{
	margin-left: -4px;
	}
	
	#group7{
	margin-left: -9px;
	}
	#group8{
	margin-left: -10px;
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
				<li class="active">Checklist Documents</li>
			</ol>
		</section>

		<br />

		<!-- BODY CONTENT -->


		<div class="container">


			<div class="card">
				<div class="card-header card bg-info text-white">Checklist Documents
				</div>
				<div class="card-body">
				<!-- modelAttribute="applicationNo" -->
					<form:form id="form1" >
						<span style="color: red; float: right; margin-top: -20px;">*Mandatory
							Fields</span>
						<div class="panel panel-default"
							style="border-top-width: 1px; border-top-style: solid; border-bottom-width: 1px; border-bottom-style: solid; border-right-width: 1px; border-right-style: solid; border-left-width: 1px; border-left-style: solid; padding-top: 15px; padding-bottom: 15px; padding-right: 5px; padding-left: 5px; border-color: lavender; margin-top: 10px;">
							<div class="panel-body">
								<div class="col-md-12">
									<div class="row rr">
										<div class="col-md-3">
											<label for="academic" class="label1"><span
												style="color: red;">*</span>Admitted Year year:</label>
										</div>
										<div class="col-md-3">
											<select name="academic" id="academic"
												class="browser-default custom-select col" style="width: 207;">
												<option value="default">-- select--</option>
												<option value="1">2019-2020</option>
												<option value="2">2020-2021</option>
												<option value="3">2021-2022</option>
											</select>
										</div>
										<div class="col-md-3">
											<label for="type" class="label1"><span
												style="color: red;">*</span>Program Type:</label>
										</div>
										<div class="col-md-3">
											<select name="type" id="type"
												class="browser-default custom-select col" style="width: 207;">
												<option value="default">-- select--</option>
												<option value="1">One</option>
												<option value="2">Two</option>
												<option value="3">Three</option>
											</select>
										</div>
									</div>
									</br>
									<!-- row ended -->
									<div class="row rr" >
										<div class="col-md-3">
											<label for="program" class="label1"><span
												style="color: red;">*</span>Program:</label>
										</div>
										<div class="col-md-3">
											<select id="program" name="program"
												class="browser-default custom-select col" style="width: 207;">
												<option value="default">-- select--</option>
												<option value="1">BCA</option>
												<option value="2">BBM</option>
												<option value="3">MBA</option>
											</select>
										</div>
										<div class="col-md-3">
											<label for="course" class="label1"><span
												style="color: red;">*</span>Course:</label>
										</div>
										<div class="col-md-3">
											<select name="course" id="course"
												class="browser-default custom-select col" style="width: 207;">
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
						<!-- panel ended -->
					
						<hr>

						<p>Applicable Documents:</p>



						<div class="panel panel-default"
							style="border-top-width: 1px; border-top-style: solid; border-bottom-width: 1px; border-bottom-style: solid; border-right-width: 1px; border-right-style: solid; border-left-width: 1px; border-left-style: solid; padding-top: 5px; padding-right: 5px; padding-left: 5px; border-color: whitesmoke; margin-bottom: 8px;">
							<div class="panel-body">
						<div class="table-responsive">
							<table id="example" class="table table-bordered">
							<caption style="caption-side: top;">Educational Info:</caption>
							
								<thead>
									<tr style="background-color: #80CBC4; color: white;">
										<th>Document(s)</th>
										<th>Need to Produce</th>
										<th>Need to produce semwise MC</th>
										<th>IsMarks Card</th>
										<th>Consolidated Marks</th>
										<th>Semister wise</th>
										<th>Include Language</th>
										<th>Previous Exam</th>
										<th>Exam Required</th>
									</tr>
								</thead>
								<tbody>
									<tr class="col">
										<td><div class="form-check">
  											<label class="form-check-label">
   											 <input type="checkbox" class="form-check-input" value="">Marks Card
 											 </label>
										</div>
										
										
									</td>
						<td><fieldset id="group1" id="group1">
								<div class="inline">

									<input type="radio" value="value1" name="group1"> <label>Yes</label>
									<input type="radio" value="value2" name="group1"> <label>No</label>



								</div>
							</fieldset></td>
						<td><fieldset id="group2">
								<div class="inline">

									<input type="radio" value="value1" name="group2"> <label>Yes</label>
									<input type="radio" value="value2" name="group2"> <label>No</label>



								</div>
							</fieldset></td>
						<td><fieldset id="group3">
								<div class="inline">

									<input type="radio" value="value1" name="group3"> <label>Yes</label>
									<input type="radio" value="value2" name="group3"> <label>No</label>



								</div>
							</fieldset></td>
						<td><fieldset id="group4">
								<div class="inline">

									<input type="radio" value="value1" name="group4"> <label>Yes</label>
									<input type="radio" value="value2" name="group4"> <label>No</label>



								</div>
							</fieldset></td>
						<td><fieldset id="group5">
								<div class="inline">

									<input type="radio" value="value1" name="group5"> <label>Yes</label>
									<input type="radio" value="value2" name="group5"> <label>No</label>



								</div>
							</fieldset></td>
						<td><fieldset id="group6">
								<div class="inline">

									<input type="radio" value="value1" name="group6"> <label>Yes</label>
									<input type="radio" value="value2" name="group6"> <label>No</label>



								</div>
							</fieldset></td>
						<td><fieldset id="group7">
								<div class="inline">

									<input type="radio" value="value1" name="group7"> <label>Yes</label>
									<input type="radio" value="value2" name="group7"> <label>No</label>



								</div>
							</fieldset></td>
						<td><fieldset id="group8">
								<div class="inline">

									<input type="radio" value="value1" name="group8"> <label>Yes</label>
									<input type="radio" value="value2" name="group8"> <label>No</label>



								</div>
							</fieldset></td>
						</tr>


						</tbody>
						</table>
						</div>
					</div>
				</div>
					
<button type="Submit" id="button" class="btn btn-lg btn-success">Add</button>
					<!-- <div class="ui primary submit button" id="button">Submit</div> -->
					<button type="Reset" id="reset" class="btn btn-lg btn-danger"
							style="margin-left: 10px; margin-top: 5px;">Cancel</button>
					<!-- <div class="ui reset button">Reset</div> -->
					
					
					</form:form>

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


</script>


	<%-- <%@include file="admin/includes/footer.jsp"%> --%>
<%@include file="/WEB-INF/views/admin/includes/footer.jsp"%>
	<%-- <%@include file="admin/includes/footer.jsp"%> --%>