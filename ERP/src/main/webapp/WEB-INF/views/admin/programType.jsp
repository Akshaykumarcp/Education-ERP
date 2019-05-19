
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
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/semantic-ui@2.4.2/dist/semantic.min.css">
<script src="https://cdn.jsdelivr.net/npm/semantic-ui@2.4.2/dist/semantic.min.js"></script>
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery-form-validator/2.3.26/jquery.form-validator.min.js"></script>
	<script
	src="https://cdn.jsdelivr.net/npm/jquery-validation@1.19.0/dist/jquery.validate.min.js"></script>
	
<style>
*{
font-family: calibri;
}
.label1{
float: right;
margin-top: 5px;
font-size: 20px;
}
.rr{
background-color: #80CBC4;
}
.col{
background-color: ECEFF1;
}
#button{
margin-left: 450px;
margin-top: 15px;
}
#reset{
margin-top: 15px;
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
form.form .gray * {
	color: black;
}
@media screen and (max-width: 600px) {
	.label1 {
		float: left;
	}
	#button{
	margin-left: 67px;
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

	<!-- Button trigger modal -->
	<!-- <button type="button" class="btn btn-primary" data-toggle="modal"
		data-target="#myModal">Launch demo modal</button> -->

	<!-- Modal -->

	<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">

					<div class="myForm">
						<form id="programTypeForm">
							<div class="form-group">
								<label for="id">ID</label> <input type="text"
									class="form-control" id="id" aria-describedby="" value=""
									placeholder="" readonly>
								<!-- <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small> -->
							</div>
							<div class="form-group rr">
								<label for="programtype">Program Type</label> <input
									type="password" class="form-control" id="mprogramType" value=""
									name="mprogramType" placeholder="Enter Program Type">
							</div>


							<div class="modal-footer">
								<button type="button" class="btn btn-secondary"
									data-dismiss="modal">Close</button>
								<button type="submit" class="btn btn-primary">Save
									changes</button>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
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
								<input type="text" class="form-control" id="idForm" name=""
									placeholder="Enter "
									style="height: 35px; text-align: center; margin-bottom: 0px;"
									hidden>
								
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
							<!-- <button type="button" class="btn btn-primary" data-toggle="modal"
								data-target="#myModal">Open modal</button> -->

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
/* 	alert('hi'); 
	var programType = {};
var dynamicURL = "";
var methodName = "";
var status = "";  */

			getAllProgramType();
}); 

/* 			$(".table #eBtn").on('click',function()
					{
				alert('inside');				
$(".myForm e#examplModal").modal();

				}); */

		/* 		$("#eBtn").click(function()
						{
					alert('inside');				
	$(".myForm #myModal").modal();

					});
 */
			

			/* $('#tblProgram').SetEditable(); */
				
			/* $("#buttonProgramType").click(function(){
					var ab = programType.programType = $('#programType').val();
					
					var programTypeId = $('#idForm').val();
					if(programTypeId)
						{
						dynamicURL="http://localhost:8080/updateProgramTypeById/"+programTypeId;
						methodName="PUT";
						status="Updated"
						}
					else
						{
						dynamicURL="http://localhost:8080/loadAdminProgramType";
						methodName="POST";
						status="Saved"
						}
		 			var programTypeObj = JSON.stringify(programType);
				$.ajax({
							url:dynamicURL,
							method:methodName,
							data: programTypeObj,
							contentType:'application/json; charset=utf-8',
							success: function ()
							{
								swal(status+" Successfully.", {
  									buttons: false,
  									timer: 1000,
									});
								getAllProgramType();
								reset();
							},
							error: function (error)
							{
								alert(error);
							}
						});*/
			
						jQuery.validator.addMethod("lettersonly", function(value, element) {
							  return this.optional(element) || /^[a-z]+$/i.test(value);
							}, "Letters only please"); 


			$.validator.setDefaults( {
				submitHandler: function () {
	                 var programType = {};
					var dynamicURL = "";
					var methodName = "";
					var status = "";
	                            					var ab = programType.programType = $('#programType').val();
	                            					var programTypeId = $('#idForm').val();
	                            					if(programTypeId)
	                            						{
	                            						dynamicURL="http://localhost:8080/updateProgramTypeById/"+programTypeId;
	                            						methodName="PUT";
	                            						status="Updated"
	                            						}
	                            					else
	                            						{
	                            						dynamicURL="http://localhost:8080/loadAdminProgramType";
	                            						methodName="POST";
	                            						status="Saved"
	                            						}
	                            		 			var programTypeObj = JSON.stringify(programType);
	                            				$.ajax({
	                            							url:dynamicURL,
	                            							method:methodName,
	                            							data: programTypeObj,
	                            							contentType:'application/json; charset=utf-8',
	                            							success: function ()
	                            							{
	                            								swal(status+" Successfully.", {
	                              									buttons: false,
	                              									timer: 1000,
	                            									});
	                            								getAllProgramType();
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

			
			$("#formProgramType").validate({
				rules:{
					programType: 
					{
					required: true,
					lettersonly: true
					}					
					},
			messages:{
				programType: {
					required: "Please Enter Program Type",
					lettersonly: "Enter Only The Letter's"
				}
				}
			});
				                                           

    function reset()
    {
    	var programTypeId = $('#idForm').val('');
    	var programType = $('#programType').val('');
     }
    
        $("#reset").click(function() { 
        	$("#program").val([]);
        	
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
						
					tableBody.append('<tr><td>'+element.id+'</td><td>'+element.programType+'</td><td><i onclick="update('+element.id+')" class="edit icon"></i></td><td><i onclick="deleteProgramType('+element.id+')" class="trash icon"></i></td></tr>');
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
	alert(id);

	$.ajax({
		url:"http://localhost:8080/getProgramTypeById/"+id,
		method:"GET",
		datatype:"json",
		success:function(data)
			{
			alert(data);
				$('#programType').val(data.programType);
				$('#idForm').val(data.id);
				getAllProgramType();
				},
				error:function(error)
				{
alert(error);
					}
		
		});
	}

function deleteProgramType(id)
{
	/*  swal({
			title:"Are you sure?",
			text:"It will be deleted permanently",
			type:"warning",
			showCancelButton: true,
			confirmButtonColor:'red',
			cancelButtonColor:'#d333',
			confirmButtonText:'Yes, Delete it!',
			showLoaderOnConfirm:true,
			preConfirm: function()
			{
				return new Promise(function(resolve){
					alert(id);
					$.ajax({
						url:"http://localhost:8080/deleteProgramType/"+id,
						method:"DELETE",
						datatype:"json",	
						})
						.done(function(response){
						swal('Deleted!', response.message, response.status);
						getAllProgramType();
							})
						.fail(function(){
							swal('OOops...!',"Something Went Wrong with Ajax!",'error');

							});
							
					});
				},
		allowOutsideClick:false
		});
		 */ 
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
					url:"http://localhost:8080/deleteProgramType/"+id,
					method:'DELETE',
					contentType:'application/json; charset=utf-8',
					success: function ()
					{
						getAllProgramType();
					}
			  });
		    swal("Program Type has been deleted!", {
		      icon: "success",
		    });
		  } else {
		    swal("program Type is Safe!");
		  }
		});
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

