  <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
  
  <head>
<!-- <link href="static/css/bootstrap.min.css" rel="Stylesheet"></link>
<script src="static/js/bootstrap.min.js"></script>
 -->
 
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css">
  <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/jquery-validation@1.19.0/dist/jquery.validate.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js"></script>
  <script src='https://www.google.com/recaptcha/api.js'></script>
   <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
   <script src="https://cdn.jsdelivr.net/jquery.validation/1.16.0/additional-methods.min.js"></script>
   <link href="https://gitcdn.github.io/bootstrap-toggle/2.2.2/css/bootstrap-toggle.min.css" rel="stylesheet">
<script src="https://gitcdn.github.io/bootstrap-toggle/2.2.2/js/bootstrap-toggle.min.js"></script>

<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/semantic-ui@2.4.2/dist/semantic.min.css">
<script src="https://cdn.jsdelivr.net/npm/semantic-ui@2.4.2/dist/semantic.min.js"></script>

<style >
.menu
{
 width:100px;

}
</style>
<script type="text/javascript">
	$(document).ready(function(){

		$('#displaySelectedOrNot').show();
		
		$('#checkBoxAll').click(function(){
			if($(this).is(":checked"))
				$('.chkCheckBoxId').prop("checked",true);
			else
				$('.chkCheckBoxId').prop("checked",false);

			})
			
		

		/*  $("#status").on('change',function()
 				{
  		 var stat = $('#status option:selected').val();
  		 alert(stat); 
  		 var selected;
				if(stat == "selected"){
		 
					/* alert("value is"+ stat); 
					 $('.test.checkbox').checkbox('check');
				}
		  else{
			$('.test.checkbox').checkbox('uncheck');
		  }
 				}); */

 				$("#check").on('change',function()
 		 				{
 					if('#check').prop("unchecked")
 					{
 						$('#displaySelectedOrNot').hide();
 						}
 		 				});
		

		})
		
		
</script>
</head>
  
  
  <div class=container>
  <form:form action="/updateStatus" method="POST" modelAttribute="updateStatus">
		<div class=table-responsive>
			<table  class="table table-hover" id="filterstudents">
				<tr><th>Sl No</th><th>Student Name</th><th>Course</th><th>Entrance Exam</th>
					<th>Register Number</th><th>Marks</th><th>Caste</th>
					<!-- <th>Status</th> -->
					<th>Select</th><!-- <th>Delete</th> --></tr>
   					<c:forEach var="stud" items="${list}"> 
   					
   					<tr>  
   					  					
   					<td>${stud.id}</td>  
   					<td>${stud.fullname}</td> 
   					<td>${stud.course}</td> 
   					<td>${stud.entrance_exam}</td>  
   					<td>${stud.r_no}</td> 
   					<td>${stud.r_marks}</td>  
   					<td>${stud.caste}</td> 
   								 <%-- <td><a href="/editInterviewDefinition/${stud.id}"> --%>
   								 <td>
  <div class="checkbox">
    <!-- <input type="checkbox" checked data-toggle="toggle" data-on="Selected" data-off="Rejected" data-onstyle="success" data-width="93" data-height="35" data-offstyle="danger"> -->
   <!--  <div class="ui selection dropdown">
  <i class="dropdown icon"></i>
  <div class="default text">Select</div>
  <div class="menu">
    <div class="item" data-value="1">Selected</div>
    <div class="item" data-value="0">Rejected</div>
  </div>
</div> -->
<!-- <select class="form-control" id="status" name="cast" style="width: 100px;">
                      <option value = "default">SELECT</option>
                     <option value="selected">Selected</option>
                     <option value="rejected">Rejected</option>
      </select> -->

    <div class="ui test toggle checkbox">
    <!-- <small>Not Selected</small> -->
      <form:checkbox checked="checked" value="${stud.id}" name="status" class="chkCheckBoxId" path="status" id="check"/>
      <small id="displaySelectedOrNot">Selected</small>
     <c:out value="${stud.id}"></c:out>
      
          </div>
          </div>
</td> 
   		
  						<%-- <td><a href="/deleteInterviewDefinition/${stud.id}"><span class="fa fa-trash-o"></span></a></td> --%>			
   </tr>  
   </c:forEach> 
   
   </table>  
  <div class="ui positive check button" id="checkBoxAll">Select All</div> 
<div class="ui negative uncheck button">Deselect All</div>
<input type="submit" value="Apply" />



   </div>
   </form:form>
   </div>
   <script>
          $(document).ready(function(){
        	  $('.test.checkbox').checkbox('attach events', '.toggle.button');
        	  $('.test.checkbox').checkbox('attach events', '.check.button', 'check');
        	  $('.test.checkbox').checkbox('attach events', '.uncheck.button', 'uncheck');

        	  $('.ui.dropdown')
        	  .dropdown();

         	 

         	 /* $("#check").on('change',function()
     				{
         		if($("#check").attr('checked'))
             		{
					$("#status").val("selected");
             		}
         		else
             		{
         			$("#status").val("rejected");

             		}}); */
          	 
                  });

          
   </script>