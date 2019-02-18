<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>

<head>
<!-- <link href="static/css/bootstrap.min.css" rel="Stylesheet"></link>
<script src="static/js/bootstrap.min.js"></script>
 -->
 
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js"></script>
</head>
<table  class="table table-striped" id="t02" >
</table>
<table class="table table-striped">
<thead>

<thead>
</table>
   <div class=container>
		<div class=table-responsive>
			<table  class="table table-striped" id="t01" border="2" width="70%" cellpadding="2">
				<thead><tr><th>Id</th><th>Reference ID</th><th>Full Name</th><th>Phone number</th>
					<th>Mail ID</th><th>course</th>
					<th>Edit</th><th>Delete</th></tr>  </thead>
				<tbody>
   					<c:forEach var="registered" items="${list}"> 
   					<tr>  
   					
   					<td>${registered.id}</td>  
   							<td>${registered.referenceid}</td> 
   					<td>${registered.fullname}</td> 
   					<td>${registered.phonenumber}</td>  
   					<td>${registered.mailid}</td> 
   						<td>${registered.course}</td>   
   						<td><a href="/editCandidate/${registered.id}">Edit</a></td>  
  						<td><a href="/deletecandidate/${registered.id}"><span class="glyphicon glyphicon-trash">delete</span></a></td>
   						
   </tr>  
   </c:forEach> 
   </tbody>
   </table>  
   </div>
   </div>
</body>
</html>