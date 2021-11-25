<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Register</title>
 <link href="//netdna.bootstrapcdn.com/bootstrap/3.0.3/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
	  <script src="//netdna.bootstrapcdn.com/bootstrap/3.0.3/js/bootstrap.min.js"></script>
	  <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
	    <style>
	body{
		padding-top: 10%;
	}
</style>
</head>
<body>
		<div class="container">
    <div class="row vertical-offset-100">
    	<div class="col-md-4 col-md-offset-4">
    		<div class="panel panel-default">
			  	<div class="panel-heading">
			    	<h3 class="panel-title">Register</h3>
			 	</div>
			  	<div class="panel-body">
			    	<form action="Register" method="post">
                    <fieldset>
                    <p style="margin: 0;padding: 0;color: green;font-size: x-large">${message}</p><br />
                    	<div class="form-group">
			    		    <input class="form-control" placeholder="User name" name="username" type="text" maxlength="50" minlength ="6" >
			    		</div>
			    	  	<div class="form-group">
			    		    <input class="form-control" placeholder="E-mail" name="email" type="text" maxlength="50" minlength ="6" >
			    		</div>
			    		<div class="form-group">
			    			<input class="form-control" placeholder="Password" name="password" type="password" value="" maxlength="50" minlength ="6">
			    		</div>
			    		<div class="form-group">
			    			<input class="form-control" placeholder="Re Password" name="repassword" type="password" value="" maxlength="50" minlength ="6">
			    		</div>
			    		<button class="btn btn-lg btn-success btn-block" type="submit" >Register</button>
			    	</fieldset>
			    	<a href= "Login" color = "blue" type ="link">Click here to Login</a>
			      	</form>
			    </div>
			</div>
		</div>
	</div>
</div>

    
      <script src="http://mymaplist.com/js/vendor/TweenLite.min.js"></script>
    
</body>
</html>>