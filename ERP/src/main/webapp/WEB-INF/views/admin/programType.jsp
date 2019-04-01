
<%@include file="/WEB-INF/views/admin/includes/header.jsp"%>

<!-- cdn for icon -->
<script src="https://code.jquery.com/jquery-3.1.1.min.js"
	crossorigin="anonymous"></script>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/semantic-ui@2.4.2/dist/semantic.min.css">
<script
	src="https://cdn.jsdelivr.net/npm/semantic-ui@2.4.2/dist/semantic.min.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>

<style>
* {
	font-family: calibri;
}
</style>
		<!-- <script>
		$(document).ready(function() {
        alert("asd");
			function edit_row(no)
			{
				alert("edit programtype"+no);
				
			 document.getElementById("edit_button"+no).style.display="none";
			 /* document.getElementById("save_button"+no).style.display="block"; */
				
			 var name=document.getElementById("name_row"+no);
			 /* var country=document.getElementById("country_row"+no);
			 var age=document.getElementById("age_row"+no); */
				
			 var name_data=name.innerHTML;
			/*  var country_data=country.innerHTML;
			 var age_data=age.innerHTML; */
				
			 name.innerHTML="<input type='text' id='name_text"+no+"' value='"+name_data+"'>";
			/*  country.innerHTML="<input type='text' id='country_text"+no+"' value='"+country_data+"'>";
			 age.innerHTML="<input type='text' id='age_text"+no+"' value='"+age_data+"'>"; */
			 document.getElementById("edit_button"+no).style.display="none";
			 var name=document.getElementById("name_row"+no);
			 var name_data=name.innerHTML;
			 name.innerHTML="<input type='text' id='name_text"+no+"' value='"+name_data+"'>";
			 
			}
			
		});
		</script> -->

<div class="content-wrapper">


	<!-- Main content -->
	<section class="content container-fluid" id="mainContent">

		<!-- HEADER -->

		<section class="content-header container-fluid">
			<h1>
				Program Type <small></small>
			</h1>
			<ol class="breadcrumb">
				<li><a href="#"><i class="fa fa-dashboard"></i>Admin</a></li>
				<li class="active"><a href="">Program Type</a></li>
			</ol>
		</section>


		<br />

		<!-- BODY CONTENT -->
		<!-- <div class="container"> -->

		<form id="formProgramType">

			<div class="card">
				<div class="card-header card bg-info text-white">Program Type
					Entry</div>
				<div class="card-body">

					<span style="color: red; float: right; margin-top: -20px;">*Mandatory
						Fields</span>

					<div class="col-md-12">
						<div class="row">
							<div class="col-md-6">
								<label
									style="float: right; margin-bottom: 27px; margin-top: 5px;"><span
									style="color: red;">*</span>Program Type :</label>
							</div>
							<div class="col-md-4">
								<input type="text" class="form-control" id="programType"
									name="programType" placeholder="Enter Program Type"
									style="height: 35px; text-align: center; margin-bottom: 0px;">
								<p id="error" style="color: red;">Please Enter a program
									Type</p>
							</div>
							<br>
							<!--  <label id="lab" style="margin-top: -35px;margin-left: 5px;">Enter program Type </label> -->

						</div>
					</div>
					<div class="col-md-12">
						<div class="row">

							<button id="buttonProgramType" class="btn btn-success"
								style="margin-left: 33em;">Submit</button>
							<button type="Reset" id="reset" class="btn btn-danger"
								style="margin-left: 21px;">Reset</button>
							<button type="button" class="btn btn-primary" data-toggle="modal"
								data-target="#myModal">Open modal</button>

						</div>
					</div>
				</div>
			</div>
		</form>
		</br>

		<hr>
		</br>
		<table id="tblProgram" class="table table-bordered table-hover"
			style="table-hover-color: white;">
			<thead>
				<tr style="background-color: #80CBC4;">
					<th>SI.NO</th>
					<th>Program Type</th>
					<th>Edit</th>
					<th>Delete</th>
				</tr>
			</thead>
			<tbody>

			</tbody>
		</table>

		<div class="card-footer card bg-info text-white"></div>

	</section>
</div>


<script>
$(document).ready(function() {

			/* 	alert('hi'); */
			getAllProgramType();

			

			/* $('#tblProgram').SetEditable(); */
	 		var programType = {};
			$("#buttonProgramType").click(function(event){
					event.preventDefault();
													/* alert('inside'); */
					var ab = programType.programType = $('#programType').val();
													/* 	 alert(ab); */
		 			var programTypeObj = JSON.stringify(programType);
		 											/* alert(programTypeObj); */
				$.ajax({
							url:'http://localhost:8080/loadAdminProgramType',
							method:'POST',
							data: programTypeObj,
							contentType:'application/json; charset=utf-8',
							success: function ()
							{
								swal("Program Type Saved Successfully.", {
  									buttons: false,
  									timer: 1000,
									});
								getAllProgramType();
							},
							error: function (error)
							{
								alert(error);
							}
						});
			});
		 
    $('#error').hide();
    $("#button").click(function(){
      	 var pgm = $("#program").val().length;
		   	  if( pgm == '')
          	 { 
      		 $('#error').show();
      		 $("#program").css("border-color","red");
      		 }
     });
    
    $("#program").keypress(function(){
        var pgm = $("#program").val().length;
        /* var regex=/^(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?!.*\s).*$/;
        var ress=regex.test(pass); */
        if(pgm => 1)
        	{
        		$("#program").css("border-color","green");
        		$("#error").hide();
        		}
        		else
        		{
        		$("#error").show();
        		$("#program").css("border-color","red");
        		}
        });
    
        $("#reset").click(function() { 
        	$("#program").val([]);
        	
            });
        
});

function getAllProgramType()
{
	$.ajax({
	url:"http://localhost:8080/getAllProgramType",
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
					tableBody.append('<tr><td>'+element.id+'</td><td id="name_row">'+element.programType+'</td><td><a href="javascript:edit_row('+element.id+')"><i id="edit_button" value="edit" class="edit icon edit"></i></a></td><td><a href="/deleteProgramType/'+element.id+'"><i  class="trash icon"></i></a></td><td><a href="javascript:edit_row('+element.id+')"><input type="button" id="edit_button" value="Edit" class="edit" ></a></td></tr>');

					/* tableBody.append('<tr><td>'+element.id+'</td><td>'+element.programType+'</td><td><input type="button" id="edit_button1" value="Edit" class="edit" onclick="edit_row('1')"></td></tr>'); */					 
     
						})
		},
		error:function (error)
		{
alert(error);
			}

		});
}


function edit_row(id){
	console.log("Welcome"+ id);
	/* var me =$(".attr(").val(); */
	var me = $("#edit_button").attr("value");
	alert(me);
	$("#edit_button").attr("value").style.display="none";

	 var name=document.getElementById("name_row"+id);
	 var name_data=name.innerHTML;
	 name.innerHTML="<input type='text' id='name_text"+id+"' value='"+name_data+"'>";
		}

	
</script>
<!-- <div class="modal fade" id="myModal">
    <div class="modal-dialog modal-sm">
      <div class="modal-content">
      
        Modal Header
        <div class="modal-header">
          <h4 class="modal-title">Modal Heading</h4>
          <button type="button" class="close" data-dismiss="modal">&times;</button>
        </div>
        
        Modal body
        <div class="modal-body">
          <form:form method="POST" modelAttribute="editregister" class="form-horizontal" action="/saveCandidate">
	
		<div class="row">
			<div class="form-actions floatRight">
				<input type="submit" value="Edit" class="btn btn-primary btn-sm">
			</div>
		</div>
	</form:form>
        </div>
        
        Modal footer
        <div class="modal-footer">
          <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        </div>
        
      </div>
    </div>
  </div>
 -->
<%@include file="/WEB-INF/views/admin/includes/footer.jsp"%>

