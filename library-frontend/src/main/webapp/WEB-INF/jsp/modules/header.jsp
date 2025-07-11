<%
    String role = (String) session.getAttribute("role");
%>


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
	


<!-- MetisMenu CSS -->
<link href="https://cdn.jsdelivr.net/npm/metismenu/dist/metisMenu.min.css" rel="stylesheet">


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
	            <h4 class="logo-text">Library System</h4>
	        </div>
	        <div class="toggle-icon ms-auto"><i class='bx bx-arrow-back'></i></div>
	    </div>
	
	    <!--navigation-->
	    <ul class="metismenu" id="menu">

    <!-- Dashboard (All roles) -->
    <li>
        <a href="#">
            <div><i class='bx bx-home-alt'></i></div>
            <div class="menu-title">Dashboard</div>
        </a>
    </li>

    <!-- Add Librarian (Only for ADMIN) -->
    <% if ("admin".equals(role)) { %>
    <li>
         <a href="javascript:;" class="has-arrow">
            <div><i class='bx bx-book'></i></div>
            <div class="menu-title">Add Librarian</div>
        </a>
    <ul>
            <li><a href="AddLibrarian">Add Librarian</a></li>
            
            <li><a href="LibrarianViwe">Show All info</a></li>
        </ul>
    </li>
    <% } %>

    <!-- Add User (Only for ADMIN) -->
    <% if ("admin".equals(role) || "librarian".equals(role)) { %>
    <li>
        <a href="#">
            <div><i class='bx bx-user'></i></div>
            <div class="menu-title">Add User</div>
        </a>
    </li>
    <% } %>

    <!-- Books Menu (Only for ADMIN and LIBRARIAN) -->
    <% if ("admin".equals(role) || "librarian".equals(role)) { %>
    <li>
        <a href="javascript:;" class="has-arrow">
            <div><i class='bx bx-book'></i></div>
            <div class="menu-title">Books</div>
        </a>
        <ul>
            <li><a href="AddBooks">Add Book</a></li>
            <li><a href="#">Update Book</a></li>
            <li><a href="#">Delete Book</a></li>
            <li><a href="#">Show All Books</a></li>
        </ul>
    </li>
    <% } %>
    
    
     <!-- Books Menu (Only for ADMIN and LIBRARIAN) -->
    <% if ("admin".equals(role) || "librarian".equals(role)) { %>
    <li>
        <a href="javascript:;" class="has-arrow">
            <div><i class='bx bx-book'></i></div>
            <div class="menu-title">Categories</div>
        </a>
        <ul>
             <li><a href="#">Fiction</a></li>
        <li><a href="#">Science</a></li>
        <li><a href="#">Technology</a></li>
        <li><a href="#">History</a></li>
        <li><a href="#">Comics</a></li>
        </ul>
    </li>
    <% } %>
    
    
    

    <!-- Menus for All Roles -->
    <li>
        <a href="#">
            <div><i class='bx bx-book-bookmark'></i></div>
            <div class="menu-title">Booked Books</div>
        </a>
    </li>

    <li>
        <a href="#">
            <div><i class='bx bx-book-open'></i></div>
            <div class="menu-title">Available Books</div>
        </a>
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