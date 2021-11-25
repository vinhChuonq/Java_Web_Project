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
    background: RGB(245,245,245);
    border-top-right-radius: 4px;
    margin-bottom: 0px;
    width: 95%;
    margin-left: 20px;
    padding-bottom: 10px;
    padding-top: 10px;
    display: inline-block;
    border: 2px solid RGB(220,220,220);
    border-bottom-width: 0px;
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
hr {
    background: rgb(242, 242, 242);
}

.body_edt {
    border-bottom-left-radius: 4px;
    border-bottom-right-radius: 4px;
}

.body_edt {
	background-color: white;
	color: black;
	border: 2px solid RGB(220,220,220);
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
	width: 75%;
	margin-left:16px;
	height:25px;
	border-radius: 4px;
	padding-left: 10px;
	border-bottom-color: lightgrey;
    border-left-color: #d3d3d357;
    border-top-color: #d3d3d357;
    border-right-color: lightgrey;
    border-width: 2px;
}

.textdes{
	width: 75%;
	margin-left:16px;
	height:60px;
	padding-left: 10px;
	border-bottom-color: lightgrey;
    border-left-color:  #d3d3d357;
    border-top-color:  #d3d3d357;
    border-right-color: lightgrey;
    border-width: 2px;
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
    background:green;
    border-top-color: RGB(220,220,220);
    border-bottom-color: #d3d3d357;
    border-left-color: RGB(220,220,220);
    border-right-color: #d3d3d357;
    border-radius: 5px;
    padding:5px
}
.btn_reset{
	background:green;
    border-top-color: RGB(220,220,220);
    border-bottom-color: #d3d3d357;
    border-left-color: RGB(220,220,220);
    border-right-color: #d3d3d357;
    border-width: 2px;
    border-radius: 5px;
    padding:5px
}


</style>
<meta charset="ISO-8859-1">
<title>Edit Profile</title>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css" />

</head>
<body>

		<div class="container-editprofile">
			<div class="row-main">
				<h1 style="margin-top: 2%;">Edit Profile</h1>
				<hr />
				<div class="edt_table">
					<div class="head_edt"> 
						<p>Profile form elements</p>
					</div>
				</div>
				
			
				<form action="EditProfile" method="POST">
				<div class="body_edt">
				<i style="margin: 0; padding: 0; color: green" class="alert alert-light text-danger p-0">${message}</i>
				<input type="hidden" class="text" id="id" name="id"  required value="<c:out value='${showmember.id}' />">
					<p>
						<b>First Name</b>
					</p>
					<p>
						<input class="text" id="firstname" name="firstname" placeholder="Enter the first name" required value="<c:out value='${showmember.firstname}' />">
					</p>
					<p>
						<b>Last Name</b>
					</p>
					<p>
						<input class="text" id="lastname" name="lastname" placeholder="Enter the last name" required value="<c:out value='${showmember.lastname}' />">
					</p>
					<p>
						<b>Email</b>
					</p>
					<p>
						<input class="textemail" type="email" id="email" name="email" placeholder="your_email@example.com" required value="<c:out value='${showmember.email}' />" style="border-style: none;"></input>
					</p>
					<p>
						<b>Phone</b>
					</p>
					<p>
						<input class="text" id="phone" name="phone" placeholder="Enter your phone number" required value="<c:out value='${showmember.phone}' />">
					</p>
					<p>
						<b>Description</b>
					</p>
					<p>
				
					<textarea class="textdes" id="description" name="description" rows="5" cols= "7" maxlength="1000"><c:out value='${showmember.description}' /></textarea>
					</p>
						
	
					<button class="btn_submit" type="submit">Submit Button</button>
					<button class="btn_reset" type="reset">Reset Button</button>
				</div>
				</form>

			</div>
		</div>
	
</body>
</html>