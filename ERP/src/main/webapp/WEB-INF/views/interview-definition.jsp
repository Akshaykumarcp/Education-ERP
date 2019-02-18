<%@include file="header.jsp"%>
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
      <form:select class="form-control" path="programType" >
                     <option value = "NONE" label = "Select"/>
                     <option/>
      </form:select>
    </div>
    <div class="form-group col-md-4">
      <label for="course">Course:</label>
      <form:select class="form-control" path="course" >
                     <option value = "NONE" label = "Select"/>
                     <option />
      </form:select>
      
    </div>
    <div class="form-group col-md-4">
    <label for="course">Academic Year:</label>
    <form:select class="form-control" path="academicYear" >
                     <form:option value = "NONE" label = "Select"/>
                     <form:options  items = "${courses}" />
      </form:select>
    </div>
  </div>
  
  <!-- Second row -->
  
   <div class="form-row">
    <div class="form-group col-md-6">
    <label for="course">Interview Type:</label>
      <form:input type="text" class="form-control" id="date" path="interviewType"/>
    </div>
    <div class="form-group col-md-6">
      <label for="course">Interview Incharge:</label>
      <form:input type="text" class="form-control" id="date" path="inCharge"/>
      
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
</html>