<jsp:include page="header.jsp" />

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Screening Process</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script>
$(document).ready(function(){
	//alert("ga");
	$("#allstudentss").click(function(){
		//alert("All students");
		$.ajax({
		url : 'viewCandidates',
		success : function(data)
		{
		$("#result1").html(data);
			}

			}); 
		});
});
</script>
</head>


<div class="container">
<h2 align="center">Screening Process</h2>  
  <div class="row">
  <!-- onclick="myFunction()" -->
  <div class="col-md-2">
  <button id="allstudentss" class="btn btn-primary"> Students Applied</button>
  </br>
  </br>
  <button type="button" class="btn btn-primary"> Shortlist By </button>
  
  </br></br>
  
  <div class="dropdown">
  <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
    Competetive Exam
  </button>
  <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
    <a class="dropdown-item" href="#"><label class="form-check-label">
    <input type="radio" class="form-check-input" name="optradio"> 60 - 70%  </label></a>
    <a class="dropdown-item" href="#"><label class="form-check-label">
    <input type="radio" class="form-check-input" name="optradio">70 - 80% 
  </label></a>
    <a class="dropdown-item" href="#"><label class="form-check-label">
    <input type="radio" class="form-check-input" name="optradio">80 - 90%
  </label></a>
  <a class="dropdown-item" href="#"><label class="form-check-label">
    <input type="radio" class="form-check-input" name="optradio">90% Above
  </label></a>
  </div>
</div>
  </br>
  <div class="dropdown">
  <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
    Merit
  </button>
   <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
    <a class="dropdown-item" href="#"><label class="form-check-label">
    <input type="radio" class="form-check-input" name="optradio"> 60 - 70%  </label></a>
    <a class="dropdown-item" href="#"><label class="form-check-label">
    <input type="radio" class="form-check-input" name="optradio">70 - 80% 
  </label></a>
    <a class="dropdown-item" href="#"><label class="form-check-label">
    <input type="radio" class="form-check-input" name="optradio">80 - 90%
  </label></a>
  <a class="dropdown-item" href="#"><label class="form-check-label">
    <input type="radio" class="form-check-input" name="optradio">90% Above
  </label></a>
  </div>
</div>
</br>
<div class="dropdown">
  <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
    Caste
  </button>
   <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
    <a class="dropdown-item" href="#"><label class="form-check-label">
    <input type="radio" class="form-check-input" name="optradio"> SC / ST </label></a>
    <a class="dropdown-item" href="#"><label class="form-check-label">
    <input type="radio" class="form-check-input" name="optradio">OBC
  </label></a>
    <a class="dropdown-item" href="#"><label class="form-check-label">
    <input type="radio" class="form-check-input" name="optradio">General
  </label></a>
  <a class="dropdown-item" href="#"><label class="form-check-label">
    <input type="radio" class="form-check-input" name="optradio">90% Above
  </label></a>
  </div>
</div>
</br>
  
  <button type="button" class="btn btn-primary" onclick="call(3)"> Students Selected</button>
  </br> </br>
  
  <button type="button" class="btn btn-primary">Students Rejected</button>
  
  </br></div>
  
  <div class="col-md-10" style="background-color:lavenderblush;">
 
  <span id="result1"></span>
  
  </div>
</div>
  
</div>
</body>
</html>