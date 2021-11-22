<!--  <div >
Menu
<ul>
<li><a href=".">Home</a></li>
<li><a href="viewcontent.tiles">ViewContent</a></li>
<li><a href="formcontent.tiles">Form Content</a></li>
</ul>
</div>  -->
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Menu</title>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css" />
</head>
<style>
</style>
<body>
	<div>
		<form action="" class="content">
			<div class="topnav">
				<input type="text" placeholder="Search.." name="search">
				<button type="submit">
					<i class="fa fa-search"></i>
				</button>
			</div>
			<hr>
			<div class="menu">
				<i class="fa fa-table"></i>
				<p>
					<b><a href="viewcontent.tiles">View Contents</a></b>
				</p>
			</div>
			<hr>
			<div class="menu">
				<i class="fas fa-edit"></i>
				<p>
					<b><a href="formcontent.tiles">Form Contents</a></b>
				</p>
			</div>
			<hr>
			<div class="emplty"></div>
		</form>
	</div>
</body>