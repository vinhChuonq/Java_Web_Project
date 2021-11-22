<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<style>
* {
	box-sizing: border-box;
}
.container {
	background-color: #FFF;
	border-radius: 5px;
	box-shadow: 0 2px 8px rgba(0, 0, 0, 0.6);
	overflow: hidden;
	width: 900px;
	max-width: 100%;
}
.header {
	border-bottom: 1px solid #f0f0f0;
	background-color: #f7f7f7;
	padding: 10px 15px;
}
.header p {
	margin: 0;
}
.form {
	padding: 10px 17px;	
}
.form-control {
	margin-bottom: 10px;
	padding-bottom: 20px;
	position: relative;
	display: block;
}
.form-control label {
	display: inline-block;
	margin-bottom: px;
}
.form-control input {
	border: 2px solid #f0f0f0;
	border-radius: 4px;
	display: block;
	font-family: inherit;
	font-size: 14px;
	padding: 10px;
	width: 80%;
	height: 30%;
}
textarea{
	border: 2px solid #f0f0f0;
	border-radius: 4px;
	display: block;
	font-family: inherit;
	font-size: 14px;
	padding: 10px;
	width: 80%;
}
textarea form-control1 input {
	border: 2px solid #f0f0f0;
	border-radius: 4px;
	display: block;
	font-family: inherit;
	font-size: 14px;
	padding: 10px;
	width: 80%;
	height: 500px;
}
.form-control input:focus {
	outline: 0;
	border-color: #777;
}
.form button {
	background-color: #3CB371;
	border: 2px solid #3CB371;
	border-radius: 4px;
	color: #fff;
	display: inline;
	font-family: inherit;
	font-size: 15px;
	padding: 10px;
	margin-top: 5px;
	width: 15%;
}
</style>
<head>
<meta charset="ISO-8859-1">
<title>Form Content</title>
</head>
<body>
	<div> <h2 style="margin-top: 2%;">Add Content</h2> </div>
    <div class="container">
        <div class="header">
                    <p>Content Form Elements</p>        
        </div>
          <form id="form" class="form">
            <div class="form-control">
              <label for="title"><h4>Title</h4></label>
                        <input type="text" placeholder="Enter the title" id="title" size="50" minlength="10" maxlength="200"/>
              <label for="exampleFormControlTextarea1" class="form-label"><h4>Brief</h4></label>
              <textarea class="form-control" id="exampleFormControlTextarea1" rows="3" minlength="30" maxlength="150"></textarea>
              <label for="exampleFormControlTextarea1" class="form-label"><h4>Content</h4></label>
              <textarea class="form-control1" id="exampleFormControlTextarea1" rows="9" cols="70" minlength="50" maxlength="1000"></textarea>
            </div>
             <button>Submit Button</button>
             <button>Reset Button</button>
          </form>
        </div>
    </div>
</body>
</html>