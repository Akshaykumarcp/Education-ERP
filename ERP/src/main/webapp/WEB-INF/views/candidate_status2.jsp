<%@include file="header.jsp"%>
<%-- <body>
<h1 align="center">Status</h1>
<table  class="table table-striped" id="t02" >

</table>
<table class="table table-striped">
<thead>

<thead>
</table>
   <div class=container>
		<div class=table-responsive>
			<table  class="table table-striped" id="t01" border="2" width="70%" cellpadding="2">
				<thead><tr><th>Reference ID</th><th>Full Name</th><th>Phone number</th>
					<th>Mail ID</th><th>Status</th></tr>  </thead>
				<tbody>
   					<c:forEach var="registered" items="${list}"> 
   					<tr>  
   					  
   					<td>${registered.referenceid}</td> <br/>
   					<td>${registered.fullname}</td>  <br/>
   					<td>${registered.phonenumber}</td>   <br/>
   					<td>${registered.mailid}</td> 
   					<td>${registered.status}</td> 					
   </tr>  
   </c:forEach> 
   </tbody>
   
   </table>  
   </div>
   </div>

</body> --%>
<c:if test="${not empty list}">
<ul>
    <c:forEach var="listValue" items="${list}">
        
    

<div class="container">
  <h1 align="center">Status</h1><br/>
  
  <div class="row">
  <div class="col">  <h3>Welcome ${listValue.getFullname()} </h3><br/>  </div>
  <div class="col"><h6 align="right"><a href="/candidate-status">Logout</a></h6>  </div>

  </div>
  
  <div class="row">
    <div class="col" style="background-color:lavender;">Reference ID</div>
    <div class="col" style="background-color:orange;"><input type="text" class="form-control" value="${listValue.getReferenceid()}" disabled></div>
  </div>
  
  <div class="row">
    <div class="col" style="background-color:lavender;">Full Name</div>
    <div class="col" style="background-color:orange;"><input type="text" class="form-control" value="${listValue.getFullname()}"></div>
  </div>
  
  <div class="row">
    <div class="col" style="background-color:lavender;">Phone number</div>
    <div class="col" style="background-color:orange;"><input type="text" class="form-control" value="${listValue.getPhonenumber()}"></div>
  </div>
  
  <div class="row">
    <div class="col" style="background-color:lavender;">Mail ID</div>
    <div class="col" style="background-color:orange;"><input type="text" class="form-control" value="${listValue.getMailid()}"></div>
  </div>
  
  <div class="row">
    <div class="col" style="background-color:lavender;">Status</div>
    <div class="col" style="background-color:orange;"><input type="text" class="form-control" value="${listValue.getReferenceid()}"></div>
  </div>
  </div>
  </c:forEach>
</ul>
  </c:if>
