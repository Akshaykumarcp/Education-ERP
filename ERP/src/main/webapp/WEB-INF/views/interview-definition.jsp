<%@include file="header.jsp"%>

<head>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
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
	 
 /* 
	 $("#filterStudents").click(function(){
			alert("testing");
				var programType = $('#programtype option:selected').val();
				var course = $('#allcoursess option:selected').val();
				var entranceExam = $('#exam').val();
				var caste = $('#caste option:selected').val();

				alert(programType+""+course+""+entranceExam+""+caste);

				$.ajax
				({
					type : 'GET',
					url : '/loadStudents/'+course+'/'+entranceExam+'/'+caste,
					success : function(result) 
					{
						alert(result);
						var result = JSON.parse(result);
						//int i=1;
						alert(result);
						var s="";
						for(var i=0;i<result.length;i++)
						{
							console.log("For loop entry");
							s+='<tr><td>'+result[i].id+'</td><td>'+result[i].name+'</td><td>'+result[i].course+'</td><td>'+result[i].entrance_exam+'</td><td>'+result[i].r_no+'</td><td>'+result[i].r_marks+'</td></tr>';
							console.log("or loop exit");
						}
						$("#filterstudents").html(s);
						console.log(5 + 6);
					}
				});
			}); */
});

</script>
</head>

<body>

 <div class="container">
 
 <form  method="GET" action="/filterStudents">
 
 
  <div class="card">
          <div class="card-header">Interview Selection Process</div>
 <br/>
 
 <!-- first row -->

  <div class="form-row">
    <div class="form-group col-md-4">
    <label for="course">Program Type:</label>
    <%-- <h1>${programs.programname}</h1> --%>
    
       <select class="form-control" style="width: 220px;"  id="programtype" name="programtype" >
      <option value = "-1">SELECT</option>
      <c:forEach var="program" items="${programs}"> 
      	 <option label="Select"  myTag="${program.id}" > ${program.programname} </option>
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
    <label for="course">Entrance Exam Marks Cut Off:</label>
   <input type="text" class="form-control" name="marks" id="exam" style="width: 220px;"/>
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
    <button type="submit" id="filterStudentsss" class="btn btn-outline-primary float-right" >Submit</button>
  
    </div>
    <div class="form-group col-md-6">
      <button type="submit" class="btn btn-outline-primary float-center" >Reset</button>
      
    </div>
   
  </div>
  
  </div>
  
  </form>
  <button id="filterStudents" class="btn btn-outline-primary" >submit</button>
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