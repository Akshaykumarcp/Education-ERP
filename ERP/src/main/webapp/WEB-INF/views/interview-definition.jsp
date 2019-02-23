<%@include file="header.jsp"%>
<%@ page isELIgnored="false"%>

<head>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script>
$(document).ready(function(){
	//alert("ga");
	$("#programtype").on('change',function(){
		
var countryid = $('#programtype option:selected').val();
alert(countryid);
 $.ajax({
	 type:'GET', 
	 /* 
	url:'loadCourse', */
	/* data: countryid,
		 */
	url: '/demo/loadCourse/'+countryid,
	       /*  data: { 'id' : countryid}, */
	      // ContentType: 'application/json',
	success:function(result)
	{
		var sav= result;
		//alert(result);
		 //var result = JSON.parse(result);
		 alert(sav);
		 var obj = JSON.parse(sav);
		 //alert(obj.getId(););
		var s="";
		console.log(5 + 6);
		for(var i=0;i<obj.length;i++)
			{
			console.log("hello");
				//s+='<option value="'+obj[i].id+'">'+obj[i].course+'</option>';
				//console.log(s);
		
			}
		 
		  $("#test").html(s);
		  console.log(5 + 6);
		}
});  
			}); 


	/* var txt = '{"course":"bca", "course":"bsc", "course":"bbm"}'
		var txt = JSON.parse(txt);
	alert(txt.length);
	//document.getElementById("demo").innerHTML = obj.name + ", " + obj.age;
	for(var i=0;i <obj.length;i++){
		alert("ff");
	document.getElementById("demo").innerHTML = obj[i];
	
	console.log(obj.course[i]);
	} */

	
});
</script>
</head>

<body>

 <div class="container">
 
 <form:form  method="POST" modelAttribute="interviewdef" action="/interview-definition">
 
 
  <div class="card">
          <div class="card-header">Interview Definition</div>
 <br/>
 
 <!-- first row -->
  <div class="form-row">
    <div class="form-group col-md-4">
    <label for="course">Program Type:</label>
    <%-- <h1>${programs.programname}</h1> --%>
    
      <form:select class="form-control" path="programType" style="width: 220px;"  id="programtype" name="programtype" >
      <option value = "-1">SELECT</option>
      <c:forEach var="program" items="${programs}">     
      	 <option value = "${program.id}" label="Select"> ${program.programname} </option>
      </c:forEach>
                    
                   
      </form:select>
      <p id="test"></p>
    </div>
    <div class="form-group col-md-4">
      <label for="course">Course:</label>
      <form:select class="form-control" path="course" style="width: 220px;" id="allcoursess" >
      <form:option value = "NONE" label = "Select"/>
                     <form:options  items = "${courses}" />
                     
      </form:select>
      
    </div>
    <div class="form-group col-md-4">
    <label for="course">Academic Year:</label>
    <form:select class="form-control" style="width: 220px;" path="academicYear" >
                     <form:option value = "NONE" label = "Select"/>
                     <form:options  items = "${academicYear}" />
      </form:select>
    </div>
   
  </div>
  
  <!-- Second row -->
  
   <div class="form-row">
    <div class="form-group col-md-6">
    <label for="course">Interview Type:</label>
      <form:input type="text" class="form-control" id="date" style="width: 220px;" path="interviewType"/>
    </div>
    <div class="form-group col-md-6">
      <label for="course">Interview Incharge:</label>
      <form:input type="text" class="form-control" id="date" style="width: 220px;" path="inCharge"/>
      
    </div>
   <!--  <div class="form-group col-md-4">
    <label for="course">Academic Year:</label>
    <select class="form-control" >
                     <option value = "NONE" label = "Select"/>
                     <option/>
      </select>
    </div> -->
  </div>
  
    <div class="form-row">
    <div class="form-group col-md-6">
    <form:button type="submit" align="right" class="btn btn-outline-primary float-right" >Submit</form:button>
  
    </div>
    <div class="form-group col-md-6">
      <form:button type="submit" align="right" class="btn btn-outline-primary float-center" >Reset</form:button>
      
    </div>
   
  </div>
  
  </div>
  
  </form:form>
  </div>


</body>