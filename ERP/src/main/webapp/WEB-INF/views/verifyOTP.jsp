<%@include file="header.jsp"%>

<style type="text/css">
	body {
		background-image: url("images/mm.png");
		background-size: cover;
	}

	.login-form {
		width: 350px;
		margin: 0 auto;
		padding: 100px 0 30px;		
	}
	.login-form form {
		color: #7a7a7a;
		border-radius: 2px;
    	margin-bottom: 15px;
        font-size: 13px;
        background: #ececec;
        box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
        padding: 30px;	
        position: relative;	
    }
	.login-form h2 {
		font-size: 22px;
        margin: 35px 0 25px;
    }
	.login-form .avatar {
		position: absolute;
		margin: 0 auto;
		left: 0;
		right: 0;
		top: -50px;
		width: 95px;
		height: 95px;
		border-radius: 50%;
		z-index: 9;
		background: #70c5c0;
		padding: 15px;
		box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.1);
	}
	.login-form .avatar img {
		width: 100%;
	}	

    .login-form .btn {        
        font-size: 16px;
        font-weight: bold;
		background: #70c5c0;
		border: none;
		margin-bottom: 20px;
    }
	.login-form .btn:hover, .login-form .btn:focus {
		background: #50b8b3;
        outline: none !important;
	}  

</style>
</head>
<body>

<div class="login-form">

<%-- <form:form  method="GET"  action="/verify" autoComplete="off" modelAttribute="verifyOTPMA" id="verifyOtpForm">  
          <div class="row">
              <div class="form-group col-md-12">
					<input type="hidden"  value="${listme.referenceid}"  name="referenceid" class="form-control"/>
			
					</div>
				</div>
				<div class="form-group">
      <input type="text" id="otp" class="fadeIn third form-control" minlength="4" name="otp" placeholder="Enter OTP"/>
      </div>
				</div> --%>


    <form:form  method="GET"  action="/verify" autoComplete="off" modelAttribute="verifyOTPMA" id="verifyOtpForm">
		<div class="avatar">
			<img src="images/pp1.png" alt="Avatar">
		</div>
		<div class="row">
              <div class="form-group col-md-12">
					<input type="hidden"  value="${listme.referenceid}"  name="referenceid" class="form-control"/>
			
					</div>
				</div>
        <h2 class="text-center">Enter OTP</h2>  
        <div id="wrapper">
  <div id="dialog">
    
    <div id="form">
    	<input type="text" name="otp" id="otp" class="quantity" maxlength="1" size="1" min="0" max="9" pattern="[0-9]{1}" style="margin-left: 40px;border: none;border-bottom: 3px solid black; font-size: 20px; background: #ececec; text-align: center;">
      <input type="text" name="otp" id="otp" class="quantity" maxlength="1" size="1" min="0" max="9" pattern="[0-9]{1}" style="margin-left: 10px;border: none;border-bottom: 3px solid black; font-size: 20px; background: #ececec; text-align: center;">
      <input type="text" name="otp" id="otp" class="quantity" maxlength="1" size="1" min="0" max="9" pattern="[0-9]{1}" style="margin-left: 10px;border: none;border-bottom: 3px solid black; font-size: 20px; background: #ececec; text-align: center;">
      <input type="text" name="otp" id="otp" class="quantity" maxlength="1" size="1" min="0" max="9" pattern="[0-9]{1}" style="margin-left: 10px;border: none;border-bottom: 3px solid black; font-size: 20px; background: #ececec; text-align: center;">

    </div>
    

  </div>
</div> 

        <div class="form-group">
         <button type="submit" class="btn btn-primary btn-lg btn-block">Verify</button>
        </div>
		
    </form:form>
	
</div>
    <script>

	$(document).ready(function() {
		// validate the comment form when it is submitted
		

		// validate signup form on keyup and submit
		/* $("#verifyOtpForm").validate({
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
 */
		  $(".quantity").keypress(function (e) {
			     //if the letter is not digit then display error and don't type anything
			     if (e.which != 8 && e.which != 0 && (e.which < 48 || e.which > 57)) 
			        //display error message
			        /*$("#errmsg").html("Digits Only").show().fadeOut("slow");*/
			               return false;
			    /*}*/
			    /*var body = $('body');

			  function goToNextInput(e) {
			    var key = e.which,
			      t = $(e.target),
			      sib = t.next('input');
			      body.on('keyup', 'input', goToNextInput);
			  body.on('keydown', 'input', onKeyDown);
			  body.on('click', 'input', onFocus);
			}*/
			$(function() {
			  'use strict';

			  var body = $('body');

			  function goToNextInput(e) {
			    var key = e.which,
			      t = $(e.target),
			      sib = t.next('input');

			    if (key != 9 && (key < 48 || key > 57)) {
			      e.preventDefault();
			      return false;
			    }

			    if (key === 9) {
			      return true;
			    }

			    if (!sib || !sib.length) {
			      sib = body.find('input').eq(0);
			    }
			    sib.select().focus();
			  }

			  
			  body.on('keyup', 'input', goToNextInput);
			 
			 

			})

			   });
		
	});
	</script>
    
</body>
</html>                            