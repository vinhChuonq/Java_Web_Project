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
	background-color: lightgray;
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
	<div class="container-viewcontent">
		<div class="row-main">
			<c:if test="${id == null}">
				<h1 style="margin-top: 2%;">Add Content</h1>
			</c:if>
			<c:if test="${id != null}">
				<h1 style="margin-top: 2%;">Edit Content</h1>
			</c:if>
			<hr />
			<table class="table-main">
				<tr>
					<th class="th-main">Content Form Elements</th>
				</tr>
				<tr>
					<c:if test="${id == null}">
				
						<td class="td-main">
						<form action="AddContent" method="post">
							<p style="margin: 0;padding: 0;color: green;font-size: x-large">${message}</p><br />
							
							<label for="title">Title</label><br /> 
							<input type="text" id="title" name="title" placeholder="Enter the title" /><br />

							<label for="brief">Brief</label><br /> 
							<textarea id="brief" name="brief" rows="3"></textarea><br /> 
							
							<label for="content">Content</label><br />
							<textarea id="content" name="content" rows="9" cols="70"></textarea><br />

							<button type="submit">Submit Button</button>
							<button type="reset">Reset Button</button>
						</form>
						</td>
					
					</c:if>
					<c:if test="${id != null}">
						
						<td class="td-main">
							<form action="EditContent" method="post">
								<p style="margin: 0;padding: 0;color: green;font-size: x-large">${message}</p><br />
							
								<input type="hidden" name="id" value="<c:out value='${id}' />" />
								<label for="title">Title</label><br />
								<input type="text" id="title" name="title" value="${title}" /><br /> 
							
								<label for="brief">Brief</label><br />
								<textarea id="brief" name="brief" rows="3">${brief}</textarea><br /> 
							
								<label for="content">Content</label><br />
								<textarea id="content" name="content" rows="9" cols="70">${content}</textarea><br />

								
								<button type="submit">submit</button>
						
								<button type="reset">Reset Button</button>
							</form>
						</td>
						
					</c:if>
				</tr>
			</table>
		</div>
	</div>
</body>
</html>