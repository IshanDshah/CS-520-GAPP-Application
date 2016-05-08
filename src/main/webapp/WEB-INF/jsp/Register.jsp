<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>


<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css"></link>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>

<title>GAPP</title>

<link href="css/Register.css" rel="stylesheet" />



</head>

<body>
	<h1>
		<b><font size="8" color="white"><center>Login or
					Create a Gapp Account</center></font></b>
	</h1>


	<div class="container">
		<div class="row centered-form">
			<div
				class="col-xs-12 col-sm-8 col-md-4 col-sm-offset-2 col-md-offset-4">
				<div class="panel panel-default">
					<div class="panel-heading">
						<h3 class="panel-title">
							Please sign up for GAPP <small>One stop for your
								Application</small>
						</h3>
					</div>
					<div class="panel-body">
						<form:form modelAttribute="users">
							<div class="row">
								<div class="col-xs-6 col-sm-6 col-md-6">
									<div class="form-group">
										First Name
										<form:input class="form-control input-sm" path="firstName"
											name="First Name " placeholder="First Name"
											required="required" />
									</div>
								</div>
								<div class="col-xs-6 col-sm-6 col-md-6">
									<div class="form-group">
										Last Name
										<form:input class="form-control input-sm" path="lastname"
											name="Last Name " placeholder="Last Name" required="required" />
									</div>
								</div>
							</div>
							<div class="col-xs-6 col-sm-6 col-md-6">
								<div class="form-group">
									Email
									<form:input class="form-control input-sm" path="email"
										name="Email" placeholder="Email" required="required" />
									<form:errors path="email" />

								</div>
							</div>

							<div class="row">
								<div class="col-xs-6 col-sm-6 col-md-6">
									<div class="form-group">
										Password
										<form:input type="password" class="form-control input-sm"
											path="password" name="password" placeholder="password"
											required="required" />
									</div>
								</div>

							</div>

							<input type="submit" value="Register" class="submit-login">

						</form:form>
						<br>
						<form action="Login.html">
							<input type="submit" value="Sign in" class="submit-login">
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>


</body>
</html>