  <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
  
  <head>
<!-- <link href="static/css/bootstrap.min.css" rel="Stylesheet"></link>
<script src="static/js/bootstrap.min.js"></script>
 -->
 
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js"></script>
  <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
</head>
  
  
  <div class=container>
		<div class=table-responsive>
			<table  class="table table-hover" id="filterstudents">
				<tr><th>Sl No</th><th>Student Name</th><th>Course</th><th>Entrance Exam</th>
					<th>Register Number</th><th>Marks</th><th>Caste</th>
					<th>Select</th><th>Delete</th></tr>
   					<c:forEach var="stud" items="${list}"> 
   					
   					<tr>  
   					  					
   					<td>${stud.id}</td>  
   					<td>${stud.fullname}</td> 
   					<td>${stud.course}</td> 
   					<td>${stud.entrance_exam}</td>  
   					<td>${stud.r_no}</td> 
   					<td>${stud.r_marks}</td>  
   					<td>${stud.caste}</td>  
   					 <td><a href="/editInterviewDefinition/${stud.id}">
    <input type="checkbox" class="form-check-input" value=""></td> 
  						<td><a href="/deleteInterviewDefinition/${stud.id}"><span class="fa fa-trash-o"></span></a></td>			
   </tr>  
   </c:forEach> 
   
   </table>  
   </div>
   </div>