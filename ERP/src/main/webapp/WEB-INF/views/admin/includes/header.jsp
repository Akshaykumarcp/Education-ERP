<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>Dashboard</title>
  <!-- Tell the browser to be responsive to screen width -->
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css">
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>

  <!-- Font Awesome -->
  <link rel="stylesheet" href="bower_components/font-awesome/css/font-awesome.min.css">
  <!-- Ionicons -->
  <link rel="stylesheet" href="bower_components/Ionicons/css/ionicons.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="dist/css/AdminLTE.min.css">
  <!-- AdminLTE Skins. We have chosen the skin-blue for this starter
        page. However, you can choose any other skin. Make sure you
        apply the skin class to the body tag so the changes take effect. -->
  <link rel="stylesheet" href="dist/css/skins/skin-blue.min.css">

  <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
  <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
  <!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->

  <!-- Google Font -->
  <link rel="stylesheet"
        href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

</head>

<!--
BODY TAG OPTIONS:
=================
Apply one or more of the following classes to get the
desired effect
|---------------------------------------------------------|
| SKINS         | skin-blue                               |
|               | skin-black                              |
|               | skin-purple                             |
|               | skin-yellow                             |
|               | skin-red                                |
|               | skin-green                              |
|---------------------------------------------------------|
|LAYOUT OPTIONS | fixed                                   |
|               | layout-boxed                            |
|               | layout-top-nav                          |
|               | sidebar-collapse                        |
|               | sidebar-mini                            |
|---------------------------------------------------------|
-->
<body class="hold-transition skin-blue sidebar-mini">
<div class="wrapper">

  <!-- Main Header -->
  <header class="main-header">

    <!-- Logo -->
    <a href="" class="logo">
      <!-- mini logo for sidebar mini 50x50 pixels -->
      <span class="logo-mini"><b>A</b>LT</span>
      <!-- logo for regular state and mobile devices -->
      <span class="logo-lg"><b>Credessol</b>College</span>
    </a>

    <!-- Header Navbar -->
    <nav class="navbar navbar-static-top" role="navigation">
      <!-- Sidebar toggle button-->
      <a href="#" class="sidebar-toggle" data-toggle="push-menu" role="button">
        <span class="sr-only">Toggle navigation</span>
      </a>
      <!-- Navbar Right Menu -->
      <div class="navbar-custom-menu">
        <ul class="nav navbar-nav">
          <!-- Messages: style can be found in dropdown.less-->
         <!--  <li class="dropdown messages-menu">
            Menu toggle button
            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
              <i class="fa fa-envelope-o"></i>
              <span class="label label-success">4</span>
            </a>
            <ul class="dropdown-menu">
              <li class="header">You have 4 messages</li>
              <li>
                inner menu: contains the messages
                <ul class="menu">
                  <li>start message
                    <a href="#">
                      <div class="pull-left">
                        User Image
                        <img src="dist/img/user.jpg" class="img-circle" alt="User Image">
                      </div>
                      Message title and timestamp
                      <h4>
                        Support Team
                        <small><i class="fa fa-clock-o"></i> 5 mins</small>
                      </h4>
                      The message
                      <p>Why not buy a new awesome theme?</p>
                    </a>
                  </li>
                  end message
                </ul>
                /.menu
              </li>
              <li class="footer"><a href="#">See All Messages</a></li>
            </ul>
          </li> -->
          <!-- /.messages-menu -->

          <!-- Notifications Menu -->
        <!--   <li class="dropdown notifications-menu">
            Menu toggle button
            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
              <i class="fa fa-bell-o"></i>
              <span class="label label-warning">10</span>
            </a>
            <ul class="dropdown-menu">
              <li class="header">You have 10 notifications</li>
              <li>
                Inner Menu: contains the notifications
                <ul class="menu">
                  <li>start notification
                    <a href="#">
                      <i class="fa fa-users text-aqua"></i> 5 new members joined today
                    </a>
                  </li>
                  end notification
                </ul>
              </li>
              <li class="footer"><a href="#">View all</a></li>
            </ul>
          </li> -->
          <!-- Tasks Menu -->
          <!-- <li class="dropdown tasks-menu">
            Menu Toggle Button
            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
              <i class="fa fa-flag-o"></i>
              <span class="label label-danger">9</span>
            </a>
            <ul class="dropdown-menu">
              <li class="header">You have 9 tasks</li>
              <li>
                Inner menu: contains the tasks
                <ul class="menu">
                  <li>Task item
                    <a href="#">
                      Task title and progress text
                      <h3>
                        Design some buttons
                        <small class="pull-right">20%</small>
                      </h3>
                      The progress bar
                      <div class="progress xs">
                        Change the css width attribute to simulate progress
                        <div class="progress-bar progress-bar-aqua" style="width: 20%" role="progressbar"
                             aria-valuenow="20" aria-valuemin="0" aria-valuemax="100">
                          <span class="sr-only">20% Complete</span>
                        </div>
                      </div>
                    </a>
                  </li> -->
                  <!-- end task item -->
                </ul>
              </li>
              <!-- <li class="footer">
                <a href="#">View all tasks</a>
              </li> -->
            </ul>
          </li>
          <!-- User Account Menu -->
          <!-- class="dropdown user user-menu" -->
         <!--  <li > -->
            <!-- Menu Toggle Button -->
            <!-- class="dropdown-toggle" data-toggle="dropdown" -->
      <!--       <a href="#"> -->
              <!-- The user image in the navbar-->
              <!-- <img src="dist/img/user2-160x160.jpg" class="user-image" alt="User Image">	
              <!-- hidden-xs hides the username on small devices so only the image appears. -->
              <%-- <span class="hidden-xs" style="color:white">Welcomes ${adminname}</span>
            </a> --%>
            <!-- User Account: style can be found in dropdown.less -->
            
          <li class="dropdown user user-menu">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
              <!-- <img src="dist/img/user2-160x160.jpg" class="user-image" alt="User Image"> -->
              <span class="hidden-xs" style="color:white">Welcome ${adminname}</span>
            </a>
            <ul class="dropdown-menu">
              <!-- User image -->
              <li class="user-header">
                <img src="" class="img-circle" alt="User Image">

               <!--  <p>
                  Alexander Pierce - Web Developer
                  <small>Member since Nov. 2012</small>
                </p> -->
              </li>
              <!-- Menu Body -->
              <li class="user-body">
               <!--  <div class="row">
                  <div class="col-xs-4 text-center">
                    <a href="#">Followers</a>
                  </div>
                  <div class="col-xs-4 text-center">
                    <a href="#">Sales</a>
                  </div>
                  <div class="col-xs-4 text-center">
                    <a href="#">Friends</a>
                  </div>
                </div> -->
                <!-- /.row -->
              </li>
              <!-- Menu Footer-->
              <li class="user-footer">
                <div class="pull-left">
                  <a href="#" class="btn btn-default btn-flat">Profile</a>
                </div>
                <div class="pull-right">
                  <a href="#" class="btn btn-default btn-flat">Sign out</a>
                </div>
              </li>
            </ul>
          </li>
            <ul class="dropdown-menu">
              <!-- The user image in the menu -->
              <li class="user-header">
              
              <!-- ADMIN IMAGE -->
                <!-- <img src="dist/img/user2-160x160.jpg" class="img-circle" alt="User Image"> -->

                <p>
                  Credessol College
                  <!-- <small>Member since Nov. 2008</small> -->
                </p>
              </li>
              <!-- Menu Body -->
              <li class="user-body">
                <div class="row">
                  <div class="col-xs-4 text-center">
                    <!-- <a href="#">Followers</a> -->
                  </div>
                  <div class="col-xs-4 text-center">
                    <!-- <a href="#">Sales</a> -->
                  </div>
                  <div class="col-xs-4 text-center">
                    <!-- <a href="#">Friends</a> -->
                  </div>
                </div>
                <!-- /.row -->
              </li>
              <!-- Menu Footer-->
              <li class="user-footer">
                <div class="pull-left">
                  <!-- <a href="#" class="btn btn-default btn-flat">Profile</a> -->
                </div>
                <div class="pull-right">
                  <!-- <a href="#" class="btn btn-default btn-flat">Sign out</a> -->
                </div>
              </li>
            </ul>
          </li>
          <!-- Control Sidebar Toggle Button -->
          <!-- <li>
            <a href="#" data-toggle="control-sidebar"><i class="fa fa-gears"></i></a>
          </li> -->
       <!--  </ul> -->
      </div>
    </nav>
  </header>
  <!-- Left side column. contains the logo and sidebar -->
  <aside class="main-sidebar">

    <!-- sidebar: style can be found in sidebar.less -->
    <section class="sidebar">

      <!-- Sidebar user panel (optional) -->
      <div class="user-panel">
        <div class="pull-left image">
        
        <!-- WELCOME ADMIN IMAGE -->
        
          <img src="dist/img/user2.jpg" class="img-circle" alt="User Image">
        </div>
        <div class="pull-left info">
          <p>Welcome ${adminname}</p>
          <!-- Status -->
          <!-- <a href="#"><i class="fa fa-circle text-success"></i> Online</a> -->
        </div>
      </div>

      <!-- search form (Optional) -->
      <form action="#" method="get" class="sidebar-form">
        <div class="input-group">
          <input type="text" name="q" class="form-control" placeholder="Search...">
          <span class="input-group-btn">
              <button type="submit" name="search" id="search-btn" class="btn btn-flat"><i class="fa fa-search"></i>
              </button>
            </span>
        </div>
      </form>
      <!-- /.search form -->

      <!-- Sidebar Menu -->
      <ul class="sidebar-menu" data-widget="tree">
        <li class="header">Activities</li>
        <!-- Optionally, you can add icons to the links -->
        <!-- <li class="active"><a href="#"><i class="fa fa-link"></i> <span>Dashboard</span></a></li>
        <li><a href="#"><i class="fa fa-link"></i> <span>Dashboard</span></a></li> -->
        <li>
        <a href="/homepage"> HomePage</a>
           <!--  <span class="pull-right-container">
                <i class="fa fa-angle-left pull-right"></i>
              </span> -->
          
          </li>
        <li class="treeview">
          <a href="#"><i class="fa fa-link"></i> <span>Admin</span>
            <span class="pull-right-container">
                <i class="fa fa-angle-left pull-right"></i>
              </span>
          </a>
          <ul class="treeview-menu">
          <li><a href="/programtype">Program Type</a></li>
           <li><a href="/programEntry">Program Configuration</a></li>
           <li><a href="/courseEntry">Course Entry</a></li>
           <li><a href="/applicationNoEntry">Application No Entry</a></li>
           <li><a href="/curriculumScheme">Curriculum Scheme</a></li>
           <li><a href="/checkListEntry">Check List Assignment</a></li>
           <li><a href="/offlineApplication">Offline Application Form</a></li>
           <li><a href="/onlineApplicationForm">Online Application Form</a></li>
           <li><a href="/interviewDefinition">Interview Definition</a></li>
           <li><a href="/interviewSelectionProcess">Interview Selection Process</a></li>
           
            <li><a href="#" id="candidatesApplied">Candidates Applied</a></li>
            <li><a  id="interviewDefinition">Interview Definition</a></li>
          </ul>
        </li>
      </ul>
      <!-- /.sidebar-menu -->
    </section>
    <!-- /.sidebar -->
  </aside>