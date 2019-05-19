<%@include file="/WEB-INF/views/admin/includes/header.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<style>
*{
font-family: calibri;
}
#button {
	margin-left: 450px;
	margin-top: 20px;
}

@media screen and (max-width: 600px) {
	#button {
		margin-left: 56px;
	}
}

</style>
<div class="content-wrapper">


	<!-- Main content -->
	<section class="content container" id="mainContent">

		<!-- HEADER -->

 		<section class="content-header">
			<h1>
				Application Fee Guideline <small></small>
			</h1>
			<ol class="breadcrumb">
				<li><a href="#"><i class="fa fa-dashboard"></i>HomePage</a></li>
				<li class="active">Application Fee Guideline</li>
			</ol>
		</section>

		<br />

		<!-- BODY CONTENT -->


		<div class="container">	
			
			<div class="card">
  <div class="card-header bg-info text-white">Application Fee Guideline</div>
  <div class="card-body">
  <span style="color: red; float: right;">* manditory fields</span></br>
  <form>
  <div class="col-md-12">
  <input type="checkbox" value=""><span style="margin-left: 25px;">Yes, I have understood the application fee terms ans I have remitted the application fee and have two copies of the Bank application Fee Challan with the Reference Number, Journal Number, Branch Code and Date of Transaction.</span>
  
  <button type="Submit" id="button" class="btn btn-lg btn-success">Accept</button>

						<button type="Reset" id="reset" class="btn btn-lg btn-danger"
							style="margin-left: 10px; margin-top: 20px;">Decline</button>
  
  
  
  </div>
  </form>
  </div><!-- card body ended -->
  <div class="card-footer bg-info text-white"></div>
</div><!-- card ended -->
			
		</div><!-- container ended -->


	</section>

</div> <!-- wrapper ended -->

<%@include file="/WEB-INF/views/admin/includes/footer.jsp"%>