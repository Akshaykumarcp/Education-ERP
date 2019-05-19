<%@include file="/WEB-INF/views/admin/includes/header.jsp"%>

<meta name='viewport' content='width=device-width, initial-scale=1'>
<link rel='stylesheet' href='https://use.fontawesome.com/releases/v5.7.0/css/all.css' integrity='sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ' crossorigin='anonymous'>
<script src="https://cdn.jsdelivr.net/npm/semantic-ui@2.4.2/dist/semantic.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/jquery-validation@1.19.0/dist/jquery.validate.min.js"></script>
<style>
*{
font-family: calibri;
}
.f{
font-family: calibri;
}

</style>
  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1 class="f">
        Home page
        <small></small>
      </h1>
     	<ol class="breadcrumb">
				<li><a href="#"><i class="fa fa-dashboard"></i>Admin</a></li>
				<li class="active"><a href="">Program Type</a></li>
			</ol>
    </section>

    <!-- Main content -->
    <section class="content">
      <!-- Small boxes (Stat box) -->
      <div class="row">
        <div class="col-lg-4 col-xs-6">
          <!-- small box -->
          <div class="small-box bg-aqua">
            <div class="inner">
              
               <h5 class="f">Work Book</h5>
               <i class="ion ion-ios-star" ></i>
               <i class="ion ion-ios-star" ></i>
               <i class="ion ion-ios-star" ></i>
            </div>
            <div class="icon">
              <i class="ion ion-ios-paper" ></i>
            </div>
            
          </div>
        </div>
        <!-- ./col -->
        <div class="col-lg-4 col-xs-6">
          <!-- small box -->
          <div class="small-box bg-green">
            <div class="inner">
         

              <h5 class="f">Request for Support</h5>
              <i class="ion ion-ios-star" ></i>
               <i class="ion ion-ios-star" ></i>
               <i class="ion ion-ios-star" ></i>
            </div>
            <div class="icon">
              <i class="ion ion-ios-cog"></i>
            </div>
       
          </div>
        </div>
        <!-- ./col -->
        <div class="col-lg-4 col-xs-6">
          <!-- small box -->
          <div class="small-box bg-yellow">
            <div class="inner">
              

              <h5 class="f">Telephone Directory</h5>
              <i class="ion ion-ios-star" ></i>
               <i class="ion ion-ios-star" ></i>
               <i class="ion ion-ios-star" ></i>
            </div>
            <div class="icon">
              <i class="ion ion-ios-cog"></i>
            </div>
           
          </div>
        </div>
        <!-- ./col -->
              <!-- ./col -->
      </div>
      <!-- /.row -->
      <!-- Main row -->
      <div class="panel panel-default" style="border-top-width: 1px;border-top-style: solid;border-bottom-width: 1px;border-bottom-style: solid;border-left-width: 1px;border-left-style: solid;border-right-width: 1px;border-right-style: solid;padding-top: 10px;padding-bottom: 10px;padding-left: 10px;padding-right: 10px;border-color: yellowgreen;">
  <div class="panel-body">
  <div class="row">
  <div class="col-md-4">
  <i class='fas fa-user' style='font-size:100px; float: right;'></i>
  </div>
  <div class="col-md-4">
  <h3 class="f">Personal Info</h3>
  <div class="row">
   <div class="col-md-2">
  <label>Name:</label>
  </div>
   <div class="col-md-2">
  <label>${adminname}</label>
  </div>
  </div>
<!--   <div class="row">
   <div class="col-md-2">
  <label>DOB:</label>
  </div>
   <div class="col-md-2">
  <label>12-03-1990</label>
  </div>
  </div>
  <div class="row">
   <div class="col-md-2">
  <label>Phone:</label>
  </div>
   <div class="col-md-2">
  <label>0123456789</label>
  </div>
  </div> -->
  <div class="row">
   <div class="col-md-2">
  <label>Email:</label>
  </div>
   <div class="col-md-2">
  <label>${adminmail}</label>
  </div>
  </div>
  
  </div>
  </div>
</div>

<%@include file="/WEB-INF/views/admin/includes/footer.jsp"%>
      
       <!-- /.content-wrapper -->
  