<%@include file="header.jsp"%>

<head>
<meta name="viewport" content="width=device-width">
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.0/jquery.validate.min.js"></script>
 <style>
 

body  {
  background-image: url(https://images.unsplash.com/photo-1470790376778-a9fbc86d70e2?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=649&q=80.jpg);
  background-size: contain;
}
 
   .card-header{
    background-color: #00ACC1;
    margin-bottom: 40px;
   }
   .col{
    color: white;
   }
  font-family: 'Californian FB', sans-serif !important;
}
</style>

</head>>
<body>

<div class="container-fluid">

<form:form  method="POST" modelAttribute="candidateAdmission" id="admissionForm" action="/candidate-admission-form">
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
      <label for="inputname" style="padding-left: 20px">Full Name</label>
      <input type="text" class="form-control"  name="fullname" style="width: 220px; align:center; margin-left: 20px" value="${listme.fullname}" id="fulname"  disabled/>
    </div>
    <div class="form-group col-md-4">
      <label for="inputdob">DOB</label>
      <form:input type="date" class="form-control" id="date" style="width: 220px" name="date" path="dob" placeholder=""/>
    </div>
    <div class="form-group col-md-4">
    <label for="inputdob">Gender</label><br>
    <div class="form-check-inline">
  <label class="form-check-label">
    <form:radiobutton class="form-check-input"  path="gender" value="Male" name="optradio"/>Male
  </label>
</div>
<div class="form-check-inline">
  <label class="form-check-label">
    <form:radiobutton class="form-check-input" path="gender" value="Female" name="optradio"/>Female
  </label>
</div>

    </div>
  </div>
  
  <!-- Row Ended -->
  
      <div class="form-row">
    <div class="form-group col-md-4 col-md-offset-3">
      <label for="email" style="padding-left: 20px">Email</label>
      <input type="email" class="form-control"  value=" ${listme.mailid}" style="width: 220px ; margin-left: 20px" name="mail" placeholder="" disabled/>
    </div>
    <div class="form-group col-md-4">
      <label for="phonenumber">Phone Number</label>
      <input type="text" class="form-control" name="phonenumber"  style="width: 220px" value=" ${listme.phonenumber}"  placeholder="" disabled/>
    </div>
    <div class="form-group col-md-4">
      <label for="nation">Nationality</label>
      <form:input type="text" class="form-control" minlength="3" name="nationality" style="width: 220px" path="nationality" placeholder=""/>
    </div>
    </div>
  
   <div class="form-row">
    <div class="form-group col-md-4">
      <label for="caste" style="padding-left: 20px">Caste</label>
      <form:input type="text" class="form-control" name="caste" style="width: 220px; margin-left: 20px" path="caste" placeholder=""/>
    </div>
    <div class="form-group col-md-8">
      <label for="inputdob">Address</label>
      <form:textarea class="form-control" style=" height: 40px; width: 620px; margin-right: 20px" minlength="10" name="address" path="address" placeholder=""></form:textarea>
    </div>
  </div>
  
  </div>
  </div>
  
  <br/>
  
  <div class="container">
     
       <div class="card">
          <div class="card-header" style="padding-left: 20px">Parent / Gaurdian Details</div>
          
          
          <div class="form-row">
    <div class="form-group col-md-4">
      <label for="parent" style="padding-left: 20px">Parent / Gaurdian Name</label>
      <form:input type="text" class="form-control" name="parentName" minlength="3" style="width: 220px; margin-left: 20px" path="p_name" placeholder=""/>
    </div>
    <div class="form-group col-md-8">
      <label for="parentPhoneNumber">Phone Number</label>
      <form:input type="text" class="form-control" name="parentPhoneNumber" minlength="10" style="width: 220px" path="p_phonenumber" placeholder=""/>
    </div><br/>
  </div>
  
  <div class="form-row">
    <div class="form-group col-md-4">
      <label for="mailID" style="padding-left: 20px">Mail ID </label>
      <form:input type="email" class="form-control" name="mailID" style="width: 220px; margin-left: 20px" path="p_mailid" placeholder=""/>
    </div>
    <div class="form-group col-md-8">
      <label for="address">Address</label>
      <form:textarea class="form-control" rows="5" name="address" style=" height: 40px; width: 620px; margin-right: 20px" minlength="10" id="date" path="p_address" placeholder=""></form:textarea>
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
      <label for="sslcBoard" style="padding-left: 20px">SSLC Board</label>
      <form:input type="text" name="sslcBoard" class="form-control"  minlength="3" style="width: 220px; margin-left: 20px" path="sslc_board" placeholder=""/>
    </div>
    <div class="form-group col-md-4">
      <label for="pucBoard">PUC Board</label>
      <form:input type="text" class="form-control" name="pucBoard" minlength="3" style="width: 220px" path="puc_board" placeholder=""/>
    </div>
    <div class="form-group col-md-4">
      <label for="graduationBoard">Graduation Board</label>
      <form:input type="text" class="form-control" name="graduationBoard" minlength="3" style="width: 220px" path="graduate_board" placeholder=""/>
    </div>
  </div>
  
  <div class="form-row">
    <div class="form-group col-md-4">
      <label for="sYop" style="padding-left: 20px">YOP</label>
      <form:input type="text" class="form-control" name="sYop" minlength="4" style="width: 220px; margin-left: 20px;" path="s_yop" />
    </div>
    <div class="form-group col-md-4">
      <label for="pYOP">YOP</label>
      <form:input type="text" class="form-control" name="pYop" minlength="4" style="width: 220px;" path="p_yop" />
    </div>
    <div class="form-group col-md-4">
      <label for="gYop">YOP</label>
      <form:input type="text" class="form-control" name="gYop" minlength="4" style="width: 220px;" path="g_yop" />
    </div>
  </div>
  
  <div class="form-row">
    <div class="form-group col-md-4">
      <label for="sPerc" style="padding-left: 20px">%</label>
      <form:input type="text" class="form-control" name="sPerc"  style="width: 220px; margin-left: 20px" path="s_percentage" placeholder=""/>
    </div>
    <div class="form-group col-md-4">
      <label for="pPerc">%</label>
      <form:input type="text" class="form-control" name="pPerc" style="width: 220px" path="p_percentage" placeholder=""/>
    </div>
    <div class="form-group col-md-4">
      <label for="gPerc">%</label>
      <form:input type="text" class="form-control" style="width: 220px" path="g_percentage" name="gPerc" placeholder=""/>
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
      <label for="course" style="padding-left: 20px">Course</label>
      <form:select class="form-control" style="width: 220px; margin-left: 20px" path = "course">
                     <form:option value=" ${listme.course}"/>
                     
      </form:select>
    </div>
    <div class="form-group col-md-4">
      <label for="inputdob">Course Type</label>
     <form:select style="width: 220px" path="course_type" name="courseType" class="form-control">
  <form:option value = "NONE" label = "Select"/>
  <form:options items = "${coursesType}" />
  </form:select>
    </div>

    <div class="form-group col-md-4">
      <label for="inputname">First Language</label>
      <form:select style="width: 220px" path="first_language" name="firstLanguage" class="form-control">
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
      
      
  <form:select style="width: 180px ; margin-left: 20px" path="quota_caste" name="caste" class="form-control" id="caste">
  <form:option value = "NONE" label = "Select Caste"/>
  <form:options items = "${caste}" />
  </form:select>
</div>
    <div class="form-group col-md-8">
    <br>
   <div class="form-check-inline">
  <label class="form-check-label">
    <form:checkbox class="form-check-input" path="quota_sports" value="sports"/>Sports
  </label>
</div>
<!-- <div class="form-check-inline">
  <label class="form-check-label">
    <form:checkbox class="form-check-input" path="" value=""/>Option 2
  </label>
</div> -->
<div class="form-check-inline disabled">
  <label class="form-check-label">
    <form:checkbox class="form-check-input" path="quota_speciallyenabled" value="speciallyEnabled"/>Specially Enabled
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
      <td><form:input type="text" path="entrance_exam" minlength="2" class="form-control" name="eExam" placeholder=""/></td>
      <td><form:input type="text" path="r_no" class="form-control" name="rNo" placeholder=""/></td>
      <td><form:input type="text" path="r_marks" class="form-control" name="ePerc" placeholder=""/></td>
    </tr>
    <tr>
      <th scope="row">2</th>
      <td><form:input type="text" path="entrance_exam2" minlength="2" class="form-control" name="eExam2" placeholder=""/></td>
      <td><form:input type="text" path="r_no2" class="form-control" name="rNo2"  placeholder=""/></td>
      <td><form:input type="text" path="r_marks2" class="form-control" name="ePerc2" placeholder=""/></td>
    </tr>
  </tbody>
</table>
    </div>
          
  </div>
  
  
  <br/>
 <form:button type="submit"  class="btn btn-outline-primary float-center" >Submit</form:button> 
 <form:button type="reset"  class="btn btn-outline-primary float-center" >Reset</form:button> 
 

 </div>
 
<%-- </c:forEach> --%>
 </form:form>
 <br/><br/><br/>
 

 
  
</div> 
<script>
$("#admissionForm").validate();
</script>
<script>

$(document).ready(function(){
    
    $("#otp").hide();

     $(".form-group").on("change",function() {
    	 $("#otp").show();
    }); 

    $("#admissionForm").validate
	({
		rules:{
			dob : {
				required:true
				},
			gender: required : true,
			nationality : {
				required:true,
				minlength:3				
						},
			gender: required : true	,
			},
			caste : {
				required:true			
						}
			,
			address : {
				required:true,
				minlength:10				
						}
			,
			p_name : {
				required:true,
				minlength:3				
						}
			,
			p_phonenumber : {
				required:true,
				minlength:10				
						}
			,
			p_mailid : {
				email:true			
						}
			,
			p_address : {
				required:true,
				minlength:10				
						}
			,
			sslc_board : {
				required:true,
				minlength:3				
						}
			,
			puc_board : {
				required:true,
				minlength:3				
						}
			,
			graduate_board : {
				required:true,
				minlength:3				
						}
			,
			s_yop : {
				required:true,
				minlength:4				
						}
			,
			p_yop : {
				required:true,
				minlength:4				
						}
			,
			g_yop : {
				required:true,
				minlength:4				
						}
			,
			s_percentage : {
				required:true
								
						}
			,
			p_percentage : {
				required:true
							
						}
			,
			g_percentage : {
				required:true
							
						}
			,
			courseType : {
				required:true
							
						}
			,
			 first_language: {
				required:true
						},
						 quota_caste: {
								required:true
										}
						,
						quota_sports: {
							required:true
									}
						,
						quota_speciallyenabled: {
							required:true
									}
						,
						 entrance_exam: {
							required:true,
							minlength:2
									}
						,
						 r_no: {
							required:true
									}
						,
						 r_marks: {
							required:true
									}
						,
						entrance_exam: {
							required:true,
							minlength:2
									}
						,
						 r_no2: {
							required:true
									}
						,
						 r_marks2: {
							required:true
									}
			
		messages: 
			{
			referenceid : 
						{
					required : "Enter Reference ID",
					minlength : "Reference ID is 4 digits Number",
					digits : "Enter only numbers"
						},
				otp : 
						{
					required : "Enter OTP",
					minlength : "OTP is 4 digits Number",
					digits : "Enter only numbers"
						}
			}		
	});
});
</script>
</body>
</html>