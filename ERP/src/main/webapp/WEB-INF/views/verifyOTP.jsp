
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
</head>
<body>
<!-- The Modal -->
  <div class="modal fade" id="myModal">
    <div class="modal-dialog modal-sm">
      <div class="modal-content">
      
        <!-- Modal Header -->
        <div class="modal-header">
          <h4 class="modal-title">Verify OTP </h4>
          <button type="button" class="close" data-dismiss="modal">&times;</button>
        </div>
        
        <!-- Modal body -->
        <div class="modal-body">
          <form:form  method="GET"  action="/verify" autoComplete="off" modelAttribute="verifyOTPMA">  
          
              <div class="form-group">
					<form:input type="hidden" path="referenceid"  value="${listme.referenceid}"  class="form-control input-sm"/>
					<div class="has-error">
						<form:errors path="id" class="help-inline"/>
					</div>
				</div>
     <div class="form-group">
      <input type="text" id="otp" class="fadeIn third" minlength="4" class="form-control" name="otp" placeholder="Enter OTP"/><br/>
      </div>
      <input type="submit" class="btn btn-info">
      
    </form:form>
        </div>
        
        <!-- Modal footer -->
        <div class="modal-footer">
          <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
          <button type="button" class="btn btn-secondary" data-dismiss="modal">Back To Login</button>
        </div>
        
      </div>
    </div>
    </div>
</body>
