<%@include file="header.jsp"%>

<body>
<div class="container">

<form:form  method="POST" modelAttribute="candidateAdmission" action="/candidate-admission-form">
 <%-- <c:forEach var="getlist" items="${listme}"> --%>
 
 <h5>Reference ID :- ${listme.referenceid}</h5>
 
<div class="container">
     
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
      <input type="text" class="form-control"  name="fullname" value="${listme.fullname}" id="fulname"  disabled/>
    </div>
    <div class="form-group col-md-4">
      <label for="inputdob">DOB</label>
      <form:input type="date" class="form-control" id="date" path="dob" placeholder="Enter DOB"/>
    </div>
    <div class="form-group col-md-4">
    <div class="btn-group btn-group-toggle" data-toggle="buttons">
  <label class="btn btn-secondary active">
    <input type="radio" name="options" id="option1" autocomplete="off" checked/> Gender
  </label>
  <label class="btn btn-secondary">
    <form:radiobutton name="options" id="option2" path="gender" autocomplete="on"/> Male
  </label>
  <label class="btn btn-secondary">
    <form:radiobutton path="gender" name="options2" id="option3" autocomplete="off"/> Female
  </label>
</div>
    </div>
  </div>
  
  <!-- Row Ended -->
      <div class="form-row">
    <div class="form-group col-md-4">
      <label for="inputname">Email</label>
      <input type="text" class="form-control"  value=" ${listme.mailid}"  id="mail" placeholder="Enter Mail ID" disabled/>
    </div>
    <div class="form-group col-md-4">
      <label for="inputdob">Phone Number</label>
      <input type="text" class="form-control" id="date"  value=" ${listme.phonenumber}"  placeholder="Enter Phone Number" disabled/>
    </div>
    <div class="form-group col-md-4">
      <label for="inputdob">Nationality</label>
      <form:input type="text" class="form-control" id="date" path="nationality" placeholder="Enter Nationality"/>
    </div>
  </div>
  
   <div class="form-row">
    <div class="form-group col-md-4">
      <label for="inputname">Caste</label>
      <form:input type="text" class="form-control" id="fulname" path="caste" placeholder="Enter Caste"/>
    </div>
    <div class="form-group col-md-8">
      <label for="inputdob">Address</label>
      <form:input type="text" class="form-control" id="date" path="address" placeholder="date"/>
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
      <form:input type="text" class="form-control" id="fulname" path="p_name" placeholder="fulname"/>
    </div>
    <div class="form-group col-md-6">
      <label for="inputdob">Phone Number</label>
      <form:input type="text" class="form-control" id="date" path="p_phonenumber" placeholder="date"/>
    </div><br/>
  </div>
  
  <div class="form-row">
    <div class="form-group col-md-4">
      <label for="inputname">Mail ID</label>
      <form:input type="text" class="form-control" id="fulname" path="p_mailid" placeholder="fulname"/>
    </div>
    <div class="form-group col-md-8">
      <label for="inputdob">Address</label>
      <form:input type="text" class="form-control" id="date" path="p_address" placeholder="date"/>
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
      <form:input type="text" class="form-control" id="fulname" path="sslc_board" placeholder="fulname"/>
    </div>
    <div class="form-group col-md-4">
      <label for="inputdob">PUC Board</label>
      <form:input type="text" class="form-control" id="date" path="puc_board" placeholder="date"/>
    </div>
    <div class="form-group col-md-4">
      <label for="inputdob">Graduation Board</label>
      <form:input type="text" class="form-control" id="date" path="graduate_board" placeholder="date"/>
    </div>
  </div>
  
  <div class="form-row">
    <div class="form-group col-md-4">
      <label for="inputname">YOP</label>
      <form:input type="text" class="form-control" path="s_yop" id="fulname" placeholder="fulname"/>
    </div>
    <div class="form-group col-md-4">
      <label for="inputdob">YOP</label>
      <form:input type="text" class="form-control" path="p_yop" id="date" placeholder="date"/>
    </div>
    <div class="form-group col-md-4">
      <label for="inputdob">YOP</label>
      <form:input type="text" class="form-control" id="date" path="g_yop" placeholder="date"/>
    </div>
  </div>
  
  <div class="form-row">
    <div class="form-group col-md-4">
      <label for="inputname">%</label>
      <form:input type="text" class="form-control" id="fulname" path="s_percentage" placeholder="fulname"/>
    </div>
    <div class="form-group col-md-4">
      <label for="inputdob">%</label>
      <form:input type="text" class="form-control" id="date" path="p_percentage" placeholder="date"/>
    </div>
    <div class="form-group col-md-4">
      <label for="inputdob">%</label>
      <form:input type="text" class="form-control" path="g_percentage" id="date" placeholder="date"/>
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
      <form:select class="form-control" path = "course" value=" ${listme.course}">
                     <form:option value = "NONE" label = "Select"/>
                     <form:options items = "${courses}" />
      </form:select>
    </div>
    <div class="form-group col-md-8">
      <label for="inputdob">Course Type</label>
      <div class="dropdown">
  <form:button class="btn btn-secondary dropdown-toggle" path="course_type" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
    Dropdown button
  </form:button>
  <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
    <a class="dropdown-item" href="#">Action</a>
    <a class="dropdown-item" href="#">Another action</a>
    <a class="dropdown-item" href="#">Something else here</a>
  </div>
</div>
    </div>
  </div>
    
<div class="form-row">
    <div class="form-group col-md-12">
      <label for="inputname">First Language</label>
      <div class="dropdown">
  <form:button class="btn btn-secondary dropdown-toggle" path="first_language" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
    Select
  </form:button>
  <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
    <a class="dropdown-item" href="#">Action</a>
    <a class="dropdown-item" href="#">Another action</a>
    <a class="dropdown-item" href="#">Something else here</a>
  </div>
</div>
    </div>
    
  </div>
    
  </div>
  </div>
  
    <br/>
  
  <div class="container">
     
       <div class="card">
          <div class="card-header">Quota</div>
          
          <div class="form-row">
    <div class="form-group col-md-4">
      <label for="inputname">Caste</label>
      <div class="dropdown">
  <form:button path="quota_caste" class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
    Select
  </form:button>
  <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
    <a class="dropdown-item" href="#">Action</a>
    <a class="dropdown-item" href="#">Another action</a>
    <a class="dropdown-item" href="#">Something else here</a>
  </div>
</div>
    </div>
    <div class="form-group col-md-8">
    <div class="btn-group btn-group-toggle" data-toggle="buttons">
  <label class="btn btn-secondary active">
    <input type="radio" name="options" id="option1" autocomplete="off" checked/> Select
  </label>
  <label class="btn btn-secondary">
    <form:radiobutton name="options" path="quota_sports"  id="option2" autocomplete="off"/> Sports
  </label>
  <label class="btn btn-secondary">
    <form:radiobutton name="options" path="quota_speciallyenabled" id="option3" autocomplete="off"/> Specially Enabled
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
          
          <div class="form-group col-md-12">
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
      <td><form:input type="text" path="entrance_exam" class="form-control" id="fulname" placeholder="fulname"/></td>
      <td><form:input type="text" path="r_no" class="form-control" id="fulname" placeholder="fulname"/></td>
      <td><form:input type="text" path="r_marks" class="form-control" id="fulname" placeholder="fulname"/></td>
    </tr>
    <tr>
      <th scope="row">2</th>
      <td><form:input type="text" path="entrance_exam2" class="form-control" id="fulname" placeholder="fulname"/></td>
      <td><form:input type="text" path="r_no2" class="form-control" id="fulname" placeholder="fulname"/></td>
      <td><form:input type="text" path="r_marks2" class="form-control" id="fulname" placeholder="fulname"/></td>
    </tr>
  </tbody>
</table>
    </div>
          
  </div>
  
  
  <br/>
  
 </div>
 <form:button type="submit" align="right" class="btn btn-outline-primary float-right" >Submit</form:button>
<%-- </c:forEach> --%>
 </form:form>
 
  
</div> 

</body>
</html>