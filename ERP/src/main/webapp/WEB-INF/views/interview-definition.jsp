

<head>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

  <!-- <link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" type="text/css" rel="stylesheet"> -->
  <!-- <link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css"> -->
  
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css">
  <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/jquery-validation@1.19.0/dist/jquery.validate.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js"></script>
  <script src='https://www.google.com/recaptcha/api.js'></script>
   <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
   <script src="https://cdn.jsdelivr.net/jquery.validation/1.16.0/additional-methods.min.js"></script>
</head>

<body>

<section class="content-header">
      <h1>
        Interview Selection Process
        <small></small>
      </h1>
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i>Admission</a></li>
        <li class="active">Interview Selection Process</li>
      </ol>
    </section>
<br/>
 <div class="container">

 <form  method="GET" action="/filterStudents" id="interviewSelection">
 
 
  <div class="card">
          <!-- <div class="card-header">Interview Selection Process</div> -->
 <br/>
 
 <!-- first row -->

  <div class="form-row">
    <div class="form-group col-md-4">
    <label style="width: 220px;margin-left: 60px" for="course">Program Type:</label>
    <%-- <h1>${programs.programname}</h1> --%>
    
       <select class="form-control" style="width: 220px;margin-left: 60px" id="programtype" name="programtype" >
      <option value = "default">Select</option>
      <c:forEach var="program" items="${programs}"> 
      	 <option  myTag="${program.id}" > ${program.programname} </option>
      </c:forEach>       
      </select>
       <!-- <input type="text" id="setMyTag" /> -->
      <p id="setMyTag"></p>	
    </div>
    <div class="form-group col-md-4">
      <label for="course">Course:</label>
       <select class="form-control" style="width: 220px;" name="course" id="allcoursess" >
      </select>
      <%-- <form:option value = "NONE" label = "Select"/>
                     <form:options  items = "${courses}" />
                     
      </form:select> --%>
      
    </div>
    <!-- <div class="form-group col-md-4">
    <label for="course">Academic Year:</label>
    <select class="form-control" style="width: 220px;">
                     <option value = "NONE" label = "Select"/>
                     <option value="saab">2017-201</option>
  					<option value="mercedes">Mercedes</option>
  						<option value="audi">Audi</option>
      </select>
    </div> -->
   
  </div>
  
  
  <!-- Second row -->
  <div class="form-row">
    <div class="form-group col-md-4">
    <label style="width: 220px;margin-left: 60px" for="course">Entrance Exam Marks Cut Off:</label>
   <input type="text" class="form-control" name="marks" style="width: 220px;margin-left: 60px" id="exam" style="width: 220px;"/>
    </div>
    <div class="form-group col-md-4">
      <label for="course">Caste:</label>
      <select class="form-control" id="caste" name="cast" style="width: 220px;">
                      <option value = "">SELECT</option>
                     <option value="SC">SC</option>
                     <option value="ST">ST</option>
  					<option value="OBC">OBC</option>
  						<option value="GM">GM</option>
      </select>
     <!-- <input type="text" class="form-control" id="caste" style="width: 220px;" /> -->
      <%-- <form:option value = "NONE" label = "Select"/>
                     <form:options  items = "${courses}" />
                     
      </select> --%>
      
    </div>
  <%--   <div class="form-group col-md-4">
    <label for="course">Academic Year:</label>
    <select class="form-control" style="width: 220px;" path="academicYear" >
                     <form:option value = "NONE" label = "Select"/>
                     <form:options  items = "${academicYear}" />
      </select>
    </div> --%>
   
  </div>
  
  
  <!-- Third row -->
  
  <!--  <div class="form-row">
    <div class="form-group col-md-4">
    <label for="course">Interview Type:</label>
      <input type="text" class="form-control" id="date" style="width: 220px;" path="interviewType"/>
    </div>
    <div class="form-group col-md-4">
      <label for="course">Interview Incharge:</label>
      <input type="text" class="form-control" id="date" style="width: 220px;" path="inCharge"/>
      
    </div>
    <div class="form-group col-md-4">
    <label for="course">Academic Year:</label>
    <select class="form-control" >
                     <option value = "NONE" label = "Select"/>
                     <option/>
      </select>
    </div>
  </div> -->
  
    <div class="form-row">
    <div class="form-group col-md-6">
    <button type="submit" class="btn btn-outline-primary float-right" >Submit</button>
  
    </div>
    <div class="form-group col-md-6">
      <button type="submit" class="btn btn-outline-primary float-center" >Reset</button>
      
    </div>
   
  </div>
  
  </div>
  
  </form>
  <!-- <button id="filterStudents" class="btn btn-outline-primary" >submit</button> -->
  
<script>


	 
$(document).ready(function()
{
	
	$("#programtype").on('change',function()
	{		
		var countryid = $('#programtype option:selected').attr("mytag");
		/* alert(countryid); */
		
 		$.ajax({ 		 
			url: '/loadCourse/'+countryid,
			type:'GET', 
			success:function(result)
				{		
		 			var result = JSON.parse(result);
		 			/* alert(result); */	
		 			var s="";
					console.log(5 + 6);
					for(var i=0;i<result.length;i++)
						{
							console.log("hello");
							s+='<option>'+result[i].course+'</option>';
							console.log(s);		
						} 		 
		   			$("#allcoursess").html(s); 
		  			console.log(5 + 6);
				}  
				});
		}); 

	$("#filterStudents").click(function(){
		alert("All students");
		$.ajax({
		url : 'filterStudents',
		success : function(data)
		{
		$("#displayMee").html(data);
			}

			}); 
		});


	
	$.validator.addMethod("valueNotEquals", function(value, element, arg){
	  return arg !== value;
	 }, "Value must not equal arg.");

/* 	$.validator.addMethod("valueNotEqu", function(value, element, arg){
		  return arg !== value;
		 }, "Value must not equal arg."); */
		 
			// validate signup form on keyup and submit
			$("#interviewSelection").validate({
				rules: {
					
					programtype:
						{
						valueNotEquals: "default"
						}
					/* allcoursess:{
						valueNotEqu: "default"
						} */
				},
				/* highlight : function(element)
				{
					$(element).closes('.form-group').removeClass('has-success').addClass('has-error');
				},
				unhighlight:function(element)
				{
					$(element).closes('.form-group').removeClass('has-error').addClass('has-success');
				}, */
				messages: {
							programtype : "Select Program"
						/* 	allcoursess: "Select Program" */
						
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
			var topics = $("#newsletter_topics")[inital ? "removeClass" : "addClass"]("gray");
			var topicInputs = topics.find("input").attr("disabled", !inital);
			// show when newsletter is checked
			newsletter.click(function() {
				topics[this.checked ? "removeClass" : "addClass"]("gray");
				topicInputs.attr("disabled", !this.checked);
			});


	
});
</script>
  </div>
  
  <span id="displayMee"> </span>
  
  <%-- 
  <!-- TABLE FOR DISPLAYING INTERVIEW DEFINITION -->
  <br/>
  <br/>
  <br/>
  <div class=container>
		<div class=table-responsive>
			<table  class="table table-hover">
				<thead><tr><th>Sl No</th><th>Program Type</th><th>Course</th><th>Academic Year</th>
					<th>Interview Type</th><th>Interview Incharge</th>
					<th>Edit</th><th>Delete</th></tr>  </thead>
				<tbody>
				<c:set var="count" value="0" scope="page" />
   					<c:forEach var="intDef" items="${list}"> 
   					
   					<tr>  
   					<% int i=1; %>
   					<% int count=0; 
   					count++;
   					%> ${count+1}
   					<td><%= i++ %></td>  
   					<td>${intDef.programType}</td> 
   					<td>${intDef.course}</td> 
   					<td>${intDef.academicYear}</td>  
   					<td>${intDef.interviewType}</td> 
   					<td>${intDef.inCharge}</td>   
   						<td><a href="/editInterviewDefinition/${intDef.id}"><span class="fa fa-pencil-square-o"></span></a></td>  
  						<td><a href="/deleteInterviewDefinition/${intDef.id}"><span class="fa fa-trash-o"></span></a></td>
   						
   </tr>  
   </c:forEach> 
   </tbody>
   </table>  
   </div>
   </div>
 --%>
 
 <!-- TABLE FOR DISPLAYING Students according to criteria-->
 <!--  <br/>
  <br/>
  <br/> -->
 
		<!-- <div class=table-responsive>
			<table  class="table table-hover" id="filterstudents">
				<tr><th>Sl No</th><th>Student Name</th><th>Course</th><th>Entrance Exam</th>
					<th>Register Number</th><th>Marks</th><th>Caste</th>
					<th>Select</th><th>Delete</th></tr> -->
				
				<%-- <c:set var="count" value="0" scope="page" />
   					<c:forEach var="stud" items="${list}"> 
   					
   					<tr>  
   					<% int i=1; %>
   					
   					<td><%= i++ %></td>  
   					<td>${stud.name}</td> 
   					<td>${stud.course}</td> 
   					<td>${stud.r_exam}</td>  
   					<td>${stud.r_no}</td> 
   					<td>${stud.r_marks}</td>  
   					<td>${stud.caste}</td>  
   					 <td><a href="/editInterviewDefinition/${stud.id}">
    <input type="checkbox" class="form-check-input" value="">
  
</td>  
  						<td><a href="/deleteInterviewDefinition/${stud.id}"><span class="fa fa-trash-o"></span></a></td>
   						
   </tr>  
   </c:forEach>  --%>
   
 <!--   </table>  
   </div> -->
    

</body>



<!-- 
 var sav= result;
	alert(result); 
	
	//var sav= result;
	//alert(result);
 
 //var obj = sav;
  //var obj = jQuery.parseJSON(sav); 
 //alert(obj.getId());
 //alert(obj.name === "course" );
 
 
 
 var output = [];

$.each(sav, function(key, value)
{
  output.push('<option value="'+ key +'">'+ value +'</option>');
});

$('#allcoursess').html(output.join('')); */
 
$.each(JSON.parse(sav), function(key, value) {
	alert(key+" "+value);
     $('#allcoursess')
          .append($('<option>', { value : key })
          .text(value));
}); 
 
	 var txt = '{"course":"bca", "course":"bsc", "course":"bbm"}'
		var txt = JSON.parse(txt);
	alert(txt.length);
	//document.getElementById("demo").innerHTML = obj.name + ", " + obj.age;
	for(var i=0;i <obj.length;i++){
		alert("ff");
	document.getElementById("demo").innerHTML = obj[i];
	
	console.log(obj.course[i]);
	}  -->
	
	 <!-- var a = $('mytag').val();
		alert(a); 

		//$('#setMyTag').val(myTag);
		 var countryid =  val(mytag);
		alert(countryid);  -->
	
	 
	<!-- url:'loadCourse', 
	 data: countryid,
		 

		    data: { 'id' : countryid}, */
	      ContentType: 'application/json', -->