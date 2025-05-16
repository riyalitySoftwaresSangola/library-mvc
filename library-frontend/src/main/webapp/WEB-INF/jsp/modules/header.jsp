<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!doctype html>
<html lang="en" class="semi-dark">

<head>
	<!-- Required meta tags -->
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	
	<!-- Favicon -->
	<link rel="icon" href="resources/assets/images/favicon-32x32.png" type="image/png" />

	<!-- Plugins CSS -->
	<link href="resources/assets/plugins/notifications/css/lobibox.min.css" rel="stylesheet"/>
	<link href="resources/assets/plugins/vectormap/jquery-jvectormap-2.0.2.css" rel="stylesheet"/>
	<link href="resources/assets/plugins/simplebar/css/simplebar.css" rel="stylesheet"/>
	<link href="resources/assets/plugins/perfect-scrollbar/css/perfect-scrollbar.css" rel="stylesheet"/>
	<link href="resources/assets/plugins/metismenu/css/metisMenu.min.css" rel="stylesheet"/>

	<!-- Loader -->
	<link href="resources/assets/css/pace.min.css" rel="stylesheet"/>
	<script src="resources/assets/js/pace.min.js"></script>

	<!-- Bootstrap CSS -->
	<link href="resources/assets/css/bootstrap.min.css" rel="stylesheet"/>
	<link href="resources/assets/css/bootstrap-extended.css" rel="stylesheet"/>
	<link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;500&amp;display=swap" rel="stylesheet"/>
	<link href="resources/assets/css/app.css" rel="stylesheet"/>
	<link href="resources/assets/css/icons.css" rel="stylesheet"/>

	<!-- Theme Style CSS -->
	<link rel="stylesheet" href="resources/assets/css/dark-theme.css"/>
	<link rel="stylesheet" href="resources/assets/css/semi-dark.css"/>
	<link rel="stylesheet" href="resources/assets/css/header-colors.css"/>

	<title>Home</title>
</head>

<body onload="info_noti()">
	<!--wrapper-->
	<div class="wrapper">
		<!--sidebar wrapper -->
		<div class="sidebar-wrapper" data-simplebar="true">
			<div class="sidebar-header">
				<div>
					<h4 class="logo-text">My Birth Day</h4>
				</div>
				<div class="toggle-icon ms-auto"><i class='bx bx-arrow-back'></i>
				</div>
			 </div>
			<!--navigation-->
			<ul class="metismenu" id="menu">
				<li>
					<a href="home">
						<div><i class='bx bx-home-alt'></i></div>
						<div class="menu-title">Dashboard</div>
					</a>
					<ul>
						<li> <a href="addUserForm"><i class='bx bx-radio-circle'></i>Add User</a>
						</li>
						<li> <a href="#"><i class='bx bx-radio-circle'></i>Add Birth Day</a>
						</li>
						<li> <a href="getAllBirthdaysList"><i class='bx bx-radio-circle'></i>View Birthdays</a>
						</li>
					</ul>
				</li>
				
			</ul>
			<!--end navigation-->
		</div>
		<!--end sidebar wrapper -->
		<!--start header -->
		<header>
			<div class="topbar d-flex align-items-center">
				<nav class="navbar navbar-expand gap-3">
					<div class="mobile-toggle-menu"><i class='bx bx-menu'></i>
					</div>

					<div class="search-bar d-lg-block d-none" data-bs-toggle="modal" data-bs-target="#SearchModal">
						<a href="avascript:;" class="btn d-flex align-items-center"><i class='bx bx-search'></i>Search</a>
					 </div>
				</nav>
			</div>
		</header>
		<!--end header -->