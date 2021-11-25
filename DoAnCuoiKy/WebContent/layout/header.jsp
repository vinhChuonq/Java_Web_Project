<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<style>
/*DropMenu*/
.dropbtn {
	color: black;
	font-size: 16px;
	border: none;
	cursor: pointer;
}

.dropdown {
	position: relative;
	display: inline-block;
	padding-right: 1%;
	width: 50%;
	text-align: right;
}

.dropdown-menu {
	display: none;
	position: absolute;
	right: 0;
	background-color: #f9f9f9;
	min-width: 160px;
	box-shadow: 0px 8px 16px 0px rgba(0, 0, 0, 0.2);
	z-index: 1;
	text-align: left;
}

.dropdown-menu a {
	color: black;
	padding: 12px 16px;
	text-decoration: none;
	display: block;
}

.dropdown-menu a:hover {
	background-color: #f1f1f1;
}

.dropdown:hover .dropdown-menu {
	display: block;
}

.dropdown:hover .dropbtn {
	color: blue;
	background-color: gainsboro;
}
/*Css*/
.container-Header { background-color:rgb(242, 242, 242);
	
}

.container-Header .row {
	display: flex;
	justify-content: space-between;
}

.logocms {
	padding-left: 0.5%;
	width: 50%;
}

.dropdown-menu a i {
	margin-right: 10px;
}
</style>
<meta charset="ISO-8859-1">
<title>Header</title>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css" />
</head>
<body style="margin: 0">
	<div class="container-Header">
		<div class="row">
			<div class="logocms">
				<h1>CMS</h1>
			</div>
			<div class="dropdown">
				<button class="dropbtn">
					<h1>
						<i class="fas fa-user"></i> <i class="fas fa-sort-down"></i>
					</h1>
				</button>
				<div class="dropdown-menu">
					<a href="editprofile.tiles?id=1"><i class="fas fa-user"></i>User Profile</a>
					<hr />
					<a href="Login"><i class="fas fa-sign-out-alt"></i>Logout</a>
				</div>
			</div>
		</div>
		<hr style="margin: 0" />
	</div>
</body>
</html>
