<%@include file="header.jsp"%>

<body>
<div class="container-fluid">

<form:form  method="POST" modelAttribute="candidateAdmission" action="/candidate-admission-form">
 <%-- <c:forEach var="getlist" items="${listme}"> --%>
 
<div class="container">
     <h5>Reference ID :- ${listme.referenceid}</h5><br/>
       <div class="card">
          <div class="card-header">Personal Details</div>
          
          <div class="row">
			<div class="form-group col-md-12">
				<!-- <label class="col-md-3 control-lable" for="firstName">referenceid</label> -->
				<div class="col-md-7">
					<form:input type="hidden" path="referenceid"  value="${listme.referenceid}"  class="form-control input-sm"/>
					<div class="has-error">
						<form:errors path="id" class="help-inline"/>
					</div>
				</div>
			</div>
		</div>
          
          <!-- Row -->
          
          <div class="form-row">
    <div class="form-group col-md-4">
      <label for="inputname">Full Name</label>
      <input type="text" class="form-control"  name="fullname" style="width: 220px; align:center" value="${listme.fullname}" id="fulname"  disabled/>
    </div>
    <div class="form-group col-md-4">
      <label for="inputdob">DOB</label>
      <form:input type="date" class="form-control" id="date" style="width: 220px" path="dob" placeholder=""/>
    </div>
    <div class="form-group col-md-4">
    <label for="inputdob">Gender</label><br>
    <div class="form-check-inline">
  <label class="form-check-label">
    <input type="radio" class="form-check-input"  value="M" name="optradio">Male
  </label>
</div>
<div class="form-check-inline">
  <label class="form-check-label">
    <input type="radio" class="form-check-input" value="F" name="optradio">Female
  </label>
</div>
<div class="form-check-inline">
  <label class="form-check-label">
    <input type="radio" class="form-check-input" value="T" name="optradio">Transgender
  </label>
</div>
    </div>
  </div>
  
  <!-- Row Ended -->
  
      <div class="form-row">
    <div class="form-group col-md-4 col-md-offset-3">
      <label for="inputname">Email</label>
      <input type="text" class="form-control"  value=" ${listme.mailid}" style="width: 220px" id="mail" placeholder="" disabled/>
    </div>
    <div class="form-group col-md-4">
      <label for="inputdob">Phone Number</label>
      <input type="text" class="form-control" id="date"  style="width: 220px" value=" ${listme.phonenumber}"  placeholder="" disabled/>
    </div>
    <div class="form-group col-md-4">
      <label for="inputdob">Nationality</label>
      <form:input type="text" class="form-control" id="date" style="width: 220px" path="nationality" placeholder=""/>
    </div>
    </div>
  
   <div class="form-row">
    <div class="form-group col-md-4">
      <label for="inputname">Caste</label>
      <form:input type="text" class="form-control" id="fulname" style="width: 220px" path="caste" placeholder=""/>
    </div>
    <div class="form-group col-md-8">
      <label for="inputdob">Address</label>
      <form:input type="text" class="form-control" id="date" path="address" placeholder=""/>
    </div>
  </div>
  
  </div>
  </div>
  
  <br/>
  
  <div class="container">
     
       <div class="card">
          <div class="card-header">Parent / Gaurdian Details</div>
          
          
          <div class="form-row">
    <div class="form-group col-md-6">
      <label for="inputname">Parent / Gaurdian Name</label>
      <form:input type="text" class="form-control" id="fulname" style="width: 220px" path="p_name" placeholder=""/>
    </div>
    <div class="form-group col-md-6">
      <label for="inputdob">Phone Number</label>
      <form:input type="text" class="form-control" id="date" style="width: 220px" path="p_phonenumber" placeholder=""/>
    </div><br/>
  </div>
  
  <div class="form-row">
    <div class="form-group col-md-4">
      <label for="inputname">Mail ID</label>
      <form:input type="text" class="form-control" id="fulname" style="width: 220px" path="p_mailid" placeholder=""/>
    </div>
    <div class="form-group col-md-8">
      <label for="inputdob">Address</label>
      <form:input type="text" class="form-control" id="date" path="p_address" placeholder=""/>
    </div>
  </div>
          
  </div>
  </div>
  
  <br/>
  
  
  <div class="container">
     
       <div class="card">
          <div class="card-header">Academic Details</div>
         
         <div class="form-row">
    <div class="form-group col-md-4">
      <label for="inputname">SSLC Board</label>
      <form:input type="text" class="form-control" id="fulname" style="width: 220px" path="sslc_board" placeholder=""/>
    </div>
    <div class="form-group col-md-4">
      <label for="inputdob">PUC Board</label>
      <form:input type="text" class="form-control" id="date" style="width: 220px" path="puc_board" placeholder=""/>
    </div>
    <div class="form-group col-md-4">
      <label for="inputdob">Graduation Board</label>
      <form:input type="text" class="form-control" id="date" style="width: 220px" path="graduate_board" placeholder=""/>
    </div>
  </div>
  
  <div class="form-row">
    <div class="form-group col-md-4">
      <label for="inputname">YOP</label>
      <form:input type="text" class="form-control" path="s_yop" style="width: 220px" id="fulname" placeholder=""/>
    </div>
    <div class="form-group col-md-4">
      <label for="inputdob">YOP</label>
      <form:input type="text" class="form-control" path="p_yop" style="width: 220px" id="date" placeholder=""/>
    </div>
    <div class="form-group col-md-4">
      <label for="inputdob">YOP</label>
      <form:input type="text" class="form-control" id="date" style="width: 220px" path="g_yop" placeholder=""/>
    </div>
  </div>
  
  <div class="form-row">
    <div class="form-group col-md-4">
      <label for="inputname">%</label>
      <form:input type="text" class="form-control" id="fulname"  style="width: 220px" path="s_percentage" placeholder=""/>
    </div>
    <div class="form-group col-md-4">
      <label for="inputdob">%</label>
      <form:input type="text" class="form-control" id="date" style="width: 220px" path="p_percentage" placeholder=""/>
    </div>
    <div class="form-group col-md-4">
      <label for="inputdob">%</label>
      <form:input type="text" class="form-control" style="width: 220px" path="g_percentage" id="date" placeholder=""/>
    </div>
  </div>
  

        </div>
  </div>
  
    <br/>
  
  <div class="container">
     
       <div class="card">
          <div class="card-header">Course Details</div>
          
           <div class="form-row">
    <div class="form-group col-md-4">
      <label for="inputname">Course</label>
      <form:select class="form-control" style="width: 220px" path = "course">
                     <form:option value=" ${listme.course}"/>
                     
      </form:select>
    </div>
    <div class="form-group col-md-4">
      <label for="inputdob">Course Type</label>
     <form:select style="width: 220px" path="course_type" name="caste" class="form-control" id="caste">
  <form:option value = "NONE" label = "Select"/>
  <form:options items = "${coursesType}" />
  </form:select>
    </div>

    <div class="form-group col-md-4">
      <label for="inputname">First Language</label>
      <form:select style="width: 220px" path="first_language" name="caste" class="form-control" id="caste">
  <form:option value = "NONE" label = "Select"/>
  <form:options items = "${firstLanguage}" />
  </form:select>
    </div>
    
  
    
  </div>
  </div>
  </div>
  
    <br/>
  
  <div class="container">
     
       <div class="card">
          <div class="card-header">Quota</div>
          
          <div class="form-row">
    <div class="form-group col-md-4 ">
      <!-- <label for="inputname">Caste</label> --><br>
      
      
  <form:select style="width: 180px" path="quota_caste" name="caste" class="form-control" id="caste">
  <form:option value = "NONE" label = "Select Caste"/>
  <form:options items = "${caste}" />
  </form:select>
</div>
    <div class="form-group col-md-8">
    <br>
   <div class="form-check-inline">
  <label class="form-check-label">
    <input type="checkbox" class="form-check-input" value="">Sports
  </label>
</div>
<!-- <div class="form-check-inline">
  <label class="form-check-label">
    <input type="checkbox" class="form-check-input" value="">Option 2
  </label>
</div> -->
<div class="form-check-inline disabled">
  <label class="form-check-label">
    <input type="checkbox" class="form-check-input" value="">Specially Enabled
  </label>
</div>
    </div>
    
  </div>
          
  </div>
  </div>
  
    <br/>
  
  <div class="container">
     
       <div class="card">
          <div class="card-header">Entrance Exam Details</div>
          
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
      <td><form:input type="text" path="entrance_exam" class="form-control" id="fulname" placeholder=""/></td>
      <td><form:input type="text" path="r_no" class="form-control" id="fulname" placeholder=""/></td>
      <td><form:input type="text" path="r_marks" class="form-control" id="fulname" placeholder=""/></td>
    </tr>
    <tr>
      <th scope="row">2</th>
      <td><form:input type="text" path="entrance_exam2" class="form-control" id="fulname" placeholder=""/></td>
      <td><form:input type="text" path="r_no2" class="form-control" id="fulname" placeholder=""/></td>
      <td><form:input type="text" path="r_marks2" class="form-control" id="fulname" placeholder=""/></td>
    </tr>
  </tbody>
</table>
    </div>
          
  </div>
  
  
  <br/>
 <form:button type="submit" align="right" class="btn btn-outline-primary float-right" >Submit</form:button> 
 </div>
 
<%-- </c:forEach> --%>
 </form:form>
 
  
</div> 

</body>
</html>