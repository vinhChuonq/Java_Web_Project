<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html style="overflow: hidden;">
<head>
<style>
/*Css viewcontent*/
.container-viewcontent {
	display: flex;
}

/*Css viewcontents*/
.viewcontents-container {
	height: 5%;
}

.viewcontents-container i {
	padding-left: 3%;
	padding-top: 2.5%;
	margin-right: 10px;
}

.viewcontents-container a {
	color: blue;
	padding-top: 2.5%;
	text-decoration: none;
}

.viewcontents-container:hover {
	background-color: lightgray;
}

/*Css main*/
.row-main {
	width: 100%;
}

.row-main hr {
	border-color: rgb(242, 242, 242);
	width: 100%;
}
/*Css table-main*/
.table-main, .td-main, .th-main {
	border: 1px solid black;
}

.th-main {
	text-align: unset;
	background-color: lightgray;;
	font-size: 150%;
	padding-bottom: 1%;
	padding-top: 1%;
	padding-left: 1%;
	font-weight: lighter;
}

.td-main {
	padding: 1%;
}

.table-main {
	width: 95%;
	border-collapse: collapse;
}
/*Css table-son*/
.table-son, .td-son, .th-son {
	border: 1px solid black;
}

.table-son {
	width: 100%;
	border-collapse: collapse;
	font-size: 20px;
}

.th-son {
	text-align: unset;
}

.td-son {
	
}

.table-son .tr-son:nth-child(odd) {
	background-color: lightgray;
}

.table-son .tr-son:nth-child(even) {
	background-color: white;
}

.table-son .tr-son:nth-child(1) {
	background-color: white;
}
</style>
<meta charset="ISO-8859-1">
<title>View Contents</title>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css" />
</head>
<body>
	<form action="ViewContent" method="post">
		<div class="container-viewcontent">
			<div class="row-main">
				<h1 style="margin-top: 2%;">View Content</h1>
				<hr />
				<table class="table-main">
					<tr class="tr-main">
						<th class="th-main">View Content List</th>
					</tr>
					<tr class="tr-main">
						<td class="td-main"><table class="table-son">
								<tr class="tr-son">
									<th class="th-son">#</th>
									<th class="th-son">Title</th>
									<th class="th-son">Brief</th>
									<th class="th-son">Created Date</th>
									<th class="th-son">Action</th>
								</tr>
								<c:forEach items="${listcontent}" var="content">
									<tr class="tr-son">
										<td class="td-son">${content.id}</td>
										<td class="td-son">${content.title}</td>
										<td class="td-son">${content.brief}</td>
										<td class="td-son">${content.createddate}</td>
										<td class="td-son"><a href="#" style="margin-right: 20px">Edit</a><a
											href="DeleteContent?id=${content.id}">Delete</a></td>
									</tr>
								</c:forEach>
							</table></td>
					</tr>
				</table>
			</div>
		</div>
	</form>
</body>
</html>