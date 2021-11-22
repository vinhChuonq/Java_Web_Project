<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
.row-main{
	border-radius: 4px;}
.head_edt p {
	border-top-left-radius: 4px;
    background: red;
    border-top-right-radius: 4px;
    margin-bottom: 0px;
    width: 95%;
    margin-left: 20px;
    padding-bottom: 10px;
    padding-top: 10px;
    display: inline-block;
    border: 1px solid black;
    padding-left:16px;
}
.head_edt {
    border-top-left-radius: 4px;
    border-top-right-radius: 4px;
}
.nameedt {
  background: white;
    margin: 20px 0;
    padding: 10px;
    border-radius: 20px;
  
}

.body_edt {
    border-bottom-left-radius: 4px;
    border-bottom-right-radius: 4px;
}

.body_edt {
	background-color: white;
	color: black;
	border: 1px solid black;
	width: 95%;
	height: 90%;
	margin-left: 20px;
	display: inline-block;
	vertical-align: middle;
	 padding-left:16px;
}
b {
    margin-bottom: 6px;
    margin-top: 16px;
    margin-left: 16px;
}

.text {
	width: 90%;
	margin-left:16px;
	height:25px;
	border-radius: 4px;
	padding-left: 10px;
	border-color: gray;
    border-width: 1px;
}

.textdes{
	width: 90%;
	margin-left:16px;
	height:50px;
	border-color: gray;
    border-width: 1px;
    border-radius: 4px;
}
.textemail{
	font-weight:bold;
	margin-left:16px;
}
.btn_submit {
    margin-bottom: 16px;
    margin-left: 16px;
    margin-top:10px;
    background:white;
    border-color: gray;
    border-width: 1px;
    border-radius: 4px;
    padding:5px
}
.btn_reset{
	background:white;
    border-color: gray;
    border-width: 1px;
    border-radius: 4px;
    padding:5px
}


</style>
<meta charset="ISO-8859-1">
<title>Edit Profile</title>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css" />
</head>
<body>
	<form action="EditProfile" method="edit">
		<div class="container-editprofile">
			<div class="row-main">
				<h1 style="margin-top: 2%;">Edit Profile</h1>
				<hr />
				<div class="edt_table">
					<div class="head_edt"> 
						<p>Profile form elements</p>
					</div>
						
					</div>
					<div class="body_edt">
						<p>
							<b>First Name</b>
						</p>
						<p>
							<input class="text" type="firstname"
								placeholder="Enter the first name">
						</p>
						<p>
							<b>Last Name</b>
						</p>
						<p>
							<input class="text" type="lastname"
								placeholder="Enter the last name">
						</p>
						<p>
							<b>Email</b>
						</p>
						<p>
								<input class="textemail" type="email"
									placeholder="your_email@example.com" style="border-style: none;"></input>
							</p>
						<p>
							<b>Phone</b>
						</p>
						<p>
							<input class="text" type="phone"
								placeholder="Enter your phone number">
						</p>
						<p>
							<b>Description</b>
						</p>
						<p>
							<input class="textdes" type="description" placeholder="">
						</p>
						<button class="btn_submit">Submit Button</button>
						<button class="btn_reset">Reset Button</button>
					</div>
				</div>
			</div>
		</div>
	</form>
</body>
</html>