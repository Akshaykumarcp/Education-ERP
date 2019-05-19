<%@include file="/WEB-INF/views/admin/includes/header.jsp"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<style>
*{
font-family: calibri;
}
.rr{
background-color: #80CBC4;
}


</style>
<div class="content-wrapper">


	<!-- Main content -->
	<section class="content container" id="mainContent">

		<!-- HEADER -->

		<section class="content-header">
			<h1>
				Course Entry <small></small>
			</h1>
			<ol class="breadcrumb">
				<li><a href="#"><i class="fa fa-dashboard"></i>HomePage</a></li>
				<li class="active">Course Entry</li>
			</ol>
		</section>

		<br />

		<!-- BODY CONTENT -->


		<div class="container">


			<div class="card">
				<div class="card-header card bg-info text-white">Assign Course TO Department</div>
				<div class="card-body">
					<div class="panel panel-default">
						<div class="panel-body">

							<div class="table-responsive">
								<table id="example" class="table table-borderless table-hover">
									<thead>
										<tr style="background-color: #80CBC4; color: white;">
											<td>Department Name</td>
											<td></td>
										</tr>
									</thead>
									<tbody>
									<form:form method="POST" modelAttribute="assignCourse" class="form-horizontal" action="/saveAssignDepartment">
										<tr class="rr">
											<td style="align: right;"><form:checkbox path="department"
												value="Admin"/>
												<form:input type="hidden" path="id"  class="form-control input-sm"/>
												</td>
											<td><label>Admin</label>
										</tr>
										<tr class="rr">
											<td><form:checkbox path="department" value="Admission"/></td>
											<td><label>Admission</label>
										</tr>
										<tr class="rr">
											<td><form:checkbox path="department" value="Aerospace Engineering"/></td>
											<td><label>Aerospace Engineering</label>
										</tr>
										<tr class="rr">
											<td><form:checkbox path="department" value="Alumni Relations"/></td>
											<td><label>Alumni Relations</label>
										</tr>
										<tr class="rr">
											<td><form:checkbox path="department" value="Business Analytics"/></td>
											<td><label>Business Analytics</label>
										</tr>
										<tr class="rr">
											<td><form:checkbox path="department" value="CAN"/></td>
											<td><label>CAN</label>
										</tr>
										<tr class="rr">
											<td><form:checkbox path="department" value="CECL"/></td>
											<td><label>CECL</label>
										</tr>
										<tr class="rr">
											<td><form:checkbox path="department"  value="CII"/></td>
											<td><label>CII</label>
										</tr>
										<tr class="rr">
											<td><form:checkbox  path="department" value="CS/IT(Computer Science)Engineering"/></td>
											<td><label>CS/IT(Computer Science)Engineering</label>
										</tr>
										<tr class="rr">
											<td><form:checkbox path="department" value="CS/It Engineering"/></td>
											<td><label>CS/It Engineering</label>
										</tr>
										<tr class="rr">
											<td><form:checkbox path="department" value="Chancellors Office"/></td>
											<td><label>Chancellor's Office</label>
										</tr>
										<tr class="rr">
											<td><form:checkbox path="department" value="Chemistry"/></td>
											<td><label>Chemistry</label>
										</tr>
										<tr class="rr">
											<td><form:checkbox path="department" value="Civil Engineering"/></td>
											<td><label>Civil Engineering</label>
										</tr>
										<tr class="rr">
											<td><form:checkbox path="department" value="DPA"/></td>
											<td><label>DPA</label>
										</tr>
										<tr class="rr">
											<td>										<input type="submit" value="Submit" class="btn btn-primary btn-sm"></td>
										</tr>

										</form:form>
									</tbody>
								</table>
							</div>





						</div>
						<!-- panel body ended -->
					</div>
					<!-- panel ended -->

				</div>
				<!-- card body ended -->
				<div class="card-footer card bg-info text-white"></div>

			</div>
			<!-- card ended -->
		</div>

	</section>


	<%@include file="/WEB-INF/views/admin/includes/footer.jsp"%>

