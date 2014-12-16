<!DOCTYPE html>
<html>
<head>
	<title>Secmon | {{page}}</title>
	<meta http-equiv="content-type" content="text/html;charset=UTF-8" />
	<meta charset="utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
	<meta content="" name="description" />
	<meta content="" name="author" />
    
	<link href="assets/plugins/pace/pace-theme-flash.css" rel="stylesheet" type="text/css" media="screen"/>
	<link href="assets/plugins/jquery-scrollbar/jquery.scrollbar.css" rel="stylesheet" type="text/css"/>
	<link href="assets/plugins/boostrapv3/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
	<link href="assets/plugins/boostrapv3/css/bootstrap-theme.min.css" rel="stylesheet" type="text/css"/>
	<link href="assets/plugins/font-awesome/css/font-awesome.css" rel="stylesheet" type="text/css"/>
	<link href="assets/css/animate.min.css" rel="stylesheet" type="text/css"/>
	<link href="assets/css/style.css" rel="stylesheet" type="text/css"/>
	<link href="assets/css/responsive.css" rel="stylesheet" type="text/css"/>
	<link href="assets/css/custom-icon-set.css" rel="stylesheet" type="text/css"/>
	<link rel="shortcut icon" href="assets/img/favicon.ico" type="image/x-icon">
	<link rel="icon" href="assets/img/favicon.ico" type="image/x-icon">
</head>
<body class="">
<!-- BEGIN HEADER -->
<div class="header navbar navbar-inverse"> 
	<!-- BEGIN TOP NAVIGATION BAR -->
	<div class="navbar-inner">
		<!-- BEGIN NAVIGATION HEADER -->
		<div class="header-seperation"> 
			<!-- BEGIN MOBILE HEADER -->
			<ul class="nav pull-left notifcation-center" id="main-menu-toggle-wrapper" style="display:none">	
				<li class="dropdown">
					<a id="main-menu-toggle" href="#main-menu" class="">
						<div class="iconset top-menu-toggle-white"></div>
					</a>
				</li>		 
			</ul>
			<!-- END MOBILE HEADER -->
			<!-- BEGIN LOGO -->	
			<a href="#">
				<img src="assets/img/logo2.png" class="logo" alt="" data-src="assets/img/logo2.png" data-src-retina="assets/img/logo2.png" width="106" height="21"/>
			</a>
			<!-- END LOGO --> 
			<!-- BEGIN LOGO NAV BUTTONS -->
			<ul class="nav pull-right notifcation-center">	
				<li class="dropdown" id="header_task_bar">
					<a href="#" class="dropdown-toggle active" data-toggle="">
						<div class="iconset top-home"></div>
					</a>
				</li>				        
			</ul>
			<!-- END LOGO NAV BUTTONS -->
		</div>
		<!-- END NAVIGATION HEADER -->
		<!-- BEGIN CONTENT HEADER -->
		<div class="header-quick-nav"> 
			<!-- BEGIN HEADER LEFT SIDE SECTION -->
			<div class="pull-left"> 
				<!-- BEGIN SLIM NAVIGATION TOGGLE -->
				<ul class="nav quick-section">
					<li class="quicklinks">
						<a href="#" class="" id="layout-condensed-toggle">
							<div class="iconset top-menu-toggle-dark"></div>
						</a>
					</li>
				</ul>

				<!-- END SLIM NAVIGATION TOGGLE -->				
				<!-- BEGIN HEADER QUICK LINKS -->
				<ul class="nav quick-section">
					<li class="quicklinks"><a href="#" onclick="pageReload()" class=""><div class="iconset top-reload"></div></a></li>
				</ul>
				<!-- BEGIN HEADER QUICK LINKS -->				
			</div>
			<!-- END HEADER LEFT SIDE SECTION -->
		</div> 
		<!-- END CONTENT HEADER --> 
	</div>
	<!-- END TOP NAVIGATION BAR --> 
</div>
<!-- END HEADER -->
	
<!-- BEGIN CONTENT -->
<div class="page-container row-fluid">
	<!-- BEGIN SIDEBAR -->
	<!-- BEGIN MENU -->
	<div class="page-sidebar" id="main-menu"> 
		  <div class="page-sidebar-wrapper scrollbar-dynamic" id="main-menu-wrapper">
		<!-- BEGIN MINI-PROFILE -->
		<div class="user-info-wrapper">	
			<div class="user-info">
			</div>
		</div>
		<!-- END MINI-PROFILE -->
		<!-- BEGIN SIDEBAR MENU -->	
		<ul>	

		 

			%if page == 'Overview':
			   	<li class="start active">
			%else:
			   	<li class="">
			%end
				<a href="overview">
					<i class="icon-custom-home"></i>
					<span class="title">Overview</span>
					<span class="selected"></span>
				</a>
			</li>

			%if page == 'Rules':
			   	<li class="start active">
			%else:
			   	<li class="">
			%end
				<a href="rules">
					<i class="fa fa-edit"></i>
					<span class="title">Rules</span>
				</a>
			</li>

			%if page == 'Settings':
			   	<li class="start active">
			%else:
			   	<li class="">
			%end
				<a href="settings">
					<i class="fa fa-gear"></i>
					<span class="title">Settings</span>
				</a>
			</li>

			%if page == 'About':
			   	<li class="start active">
			%else:
			   	<li class="">
			%end
				<a href="about">
					<i class="fa fa-info"></i>
					<span class="title">About</span>
				</a>
			</li>

			%if page == 'Logout':
			   	<li class="start active">
			%else:
			   	<li class="">
			%end
				<a href="logout">
					<i class="fa fa-power-off"></i>
					<span class="title">Logout</span>
				</a>
			</li>

		</ul>
		<!-- END SIDEBAR MENU -->
	</div>
	</div>
	<!-- BEGIN SCROLL UP HOVER -->
	<a href="#" class="scrollup">Scroll</a>
	<!-- END SCROLL UP HOVER -->
	<!-- END MENU -->

	<!-- BEGIN SIDEBAR FOOTER WIDGET -->
	<div class="footer-widget">		
	<a href="https://github.com/zaanpenguin/SecurityMonitor" target="_blank">Version <strong>0.0.1</strong></a>	
	</div>
	<!-- END SIDEBAR FOOTER WIDGET -->
	<!-- END SIDEBAR -->
	<!-- BEGIN PAGE CONTAINER-->
	<div class="page-content"> 
		<div class="content">  
			<!-- <div class="page-title"><h3>{{page}}</h3></div> -->
			<!-- PAGE CONTENT -->