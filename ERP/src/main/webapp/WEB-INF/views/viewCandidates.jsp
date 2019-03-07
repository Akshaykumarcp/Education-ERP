<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>

<head>

  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css">
  
</head>
<body>

 <div class="row">
        <div class="col-xs-12">
          <div class="box">
            <div class="box-header">
              <h3 class="box-title">Candidates Applied</h3>
            </div>
 <div class="box-body">
			<table  class="table table-hover">
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
  						<td><a href="/deletecandidate/${registered.id}"><span class="fa fa">Delete</span></a></td>
   						
   </tr>  
   </c:forEach> 
   </tbody>
   </table>  
   </div>
   </div>
   </div>
   </div>
</body>
</html>