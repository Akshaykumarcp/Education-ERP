
    <%@include file="header.jsp"%>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<script type="text/javascript">
    $(window).on('load',function(){
    	$('#myModal').modal({
            backdrop: 'static',
            keyboard: true, 
            show: true
    });
        $('#myModal').modal('show');
    });
</script>
<style>
.error { 
		color: red; 
	}

</style>
</head>
<body>
<!-- The Modal -->
  <div class="modal fade" id="myModal">
    <div class="modal-dialog modal-sm">
      <div class="modal-content">
      
        <!-- Modal Header -->
        <div class="modal-header">
          <h4 class='col-12 modal-title text-center'>Verify OTP </h4>
          <!-- <button type="button" class="close" data-dismiss="modal">&times;</button> -->
        </div>
        
        <!-- Modal body -->
        <div class="modal-body">
          <form:form  method="GET"  action="/verify" autoComplete="off" modelAttribute="verifyOTPMA" id="verifyOtpForm">  
          <div class="row">
              <div class="form-group col-md-12">
					<input type="hidden"  value="${listme.referenceid}"  name="referenceid" class="form-control"/>
					<%-- <div class="has-error">
						<form:errors path="id" class="help-inline"/>
					</div> --%>
				</div>
				</div>
     <div class="form-group">
      <input type="text" id="otp" class="fadeIn third form-control" minlength="4" name="otp" placeholder="Enter OTP"/>
      </div>
      <div class="row justify-content-center">
      <input type="submit" class="btn btn-info">
      </div>
    </form:form>
        </div>
        
        <!-- Modal footer -->
        <div class="modal-footer">
          <!-- <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button> -->
          <a href="/Login_candidate" class="btn btn-info" role="button">Back To Login</a>
          <!-- <button type="button" class="btn btn-primary"><a href=""></a></button> -->
          <a href="/" class="btn btn-info" role="button">Back To HomePage</a>
          <!-- <button type="button" class="btn btn-outline-primary"><a href="/"></a> </button> -->
        </div>
        
      </div>
    </div>
    </div>
    
    
    <!-- VALIDATIONS -->
    <script>

	$(document).ready(function() {
		// validate the comment form when it is submitted
		

		// validate signup form on keyup and submit
		$("#verifyOtpForm").validate({
			rules: {
				otp: {
					required: true,
					minlength: 4,
					maxlength:4,
					digits:true
				}
				
			},
			messages: {
				otp: {
					required: "Please provide a OTP",
					minlength: "Your OTP is 4 digits long",
					maxlength: "Enter Only 4 Digits",
					digits: "Enter Only Digits"
				}
			}
		});
       
		// propose username by combining first- and lastname
		$("#username").focus(function() {
			var firstname = $("#firstname").val();
			var lastname = $("#lastname").val();
			if (firstname && lastname && !this.value) {
				this.value = firstname + "." + lastname;
			}
		});

		//code to hide topic selection, disable for demo
		var newsletter = $("#newsletter");
		// newsletter topics are optional, hide at first
		var inital = newsletter.is(":checked");
		var topics = $("#newsletter_topics")[inital ? "removeClass" : "addClass"]("gray");
		var topicInputs = topics.find("input").attr("disabled", !inital);
		// show when newsletter is checked
		newsletter.click(function() {
			topics[this.checked ? "removeClass" : "addClass"]("gray");
			topicInputs.attr("disabled", !this.checked);
		});


		
	});
	</script>
    
</body>
