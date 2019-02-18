

<%@include file="header.jsp"%>

  <!-- <h2>Login form</h2> -->
  
  <!-- <div class="panel panel-primary">
      <div class="panel-heading">Login form</div> -->
      <%-- <c:url var="getMob" value="/getMobile/add" ></c:url> --%>
      

  
 
 
   <%--  <div class="form-group">
    <label for="otp">Enter OTP:</label>
    <form:input type="text" path="" class="form-control" id="ot" placeholder="Enter password" name="otp"/>
    </div> --%>
   
   
<!--   </div> -->
 
<div class="container">
  
  <div class="card">
    <div class="card-header">Login</div>
     <div class="form-group">
      <form:form  method="GET" modelAttribute="loginCandi" action="/Mobile">
    <label for="ref">Enter Reference ID:</label>
    <form:input type="text" path="referenceid" class="form-control" id="reffid" placeholder="Enter reference ID" name="reffid"/>
     <button type="submit" class="btn btn-primary">Submit</button>
  </form:form>
    </div>
  </div>
</div>

</body>
</html>