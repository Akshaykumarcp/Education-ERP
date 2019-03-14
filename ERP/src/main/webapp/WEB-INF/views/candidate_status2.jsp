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
<style>
body  {
/* https://images.unsplash.com/photo-1457369804613-52c61a468e7d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80.jpg */
  background-image: url(https://images.unsplash.com/photo-1511184150666-9bb7d41a88f4?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80.jpg);
  background-size: cover;
}

.error { 
		color: red; font-weight: bold; 
	}
</style>


<%-- <c:if test="${not empty list}"> --%>
<ul>
    <%-- <c:forEach var="listValue" items="${list}"> --%>
        
    

<div class="container">
  <h1 align="center" style="color: #4DB6AC">Candidate Status</h1><br/>
   <hr style="width: 200px;margin-top;border-style: ridge;border-block-color: black;">
  <div class="row">
  <div class="col">  <h3>Welcome ${candidate} </h3><br/>  </div>
  <div class="col"><h6 align="right"><a href="/candidate-status">Logout</a></h6>  </div>

  </div>
  
  <div class="container">
  <div class="login-form col-md-6" style="border: black; float: center; border-style: solid; border-radius: 25px; background-color: white;padding-top: 30px;padding-bottom: 30px;pading-right: 1px;margin-left: 300px;padding-left: 40px;" >
    <div class="row">
  
    <div class="col text-center">Reference ID</div>
    <%-- <input type="text" class="form-control" value="${listValue.getReferenceid()}" disabled> --%>
    <div class="col"><label>${list.getReferenceid()}</label></div>
  </div>
  <div class="row">
    <div class="col text-center" >Full Name</div>
    <%-- <input type="text" class="form-control" value="${listValue.getFullname()}" disabled> --%>
    <div class="col">  <label >${list.getFullname()}</label></div>
  </div>
  
  <div class="row">
    <div class="col text-center">Phone number</div>
    <div class="col" ><input type="text" class="form-control" value="${list.getPhonenumber()}" disabled></div>
  </div>
  
  <div class="row">
    <div class="col text-center" >Mail ID</div>
    <div class="col" ><input type="text" class="form-control" value="${list.getMailid()}" disabled></div>
  </div>
  
  <div class="row">
    <div class="col text-center">Status</div>
    <%-- <input type="text" class="form-control" value="${listValue.getReferenceid()}" disabled> --%>
    <div class="col" ><label >${list.getStatus()}</label></div>
  </div>
  </div>
  </div>
  </div>
  <%-- </c:forEach> --%>
</ul>
 <%--  </c:if> --%>

