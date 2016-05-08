<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<html>
<head>
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
	<h1 style="color: white">GAPP Application</h1>

	<form:form modelAttribute="users" style="width: 25%">
		<div class="form-group">
			<label for="exampleInputEmail1" style="color: white">Email
				address</label>
			<form:input type="email" class="form-control" id="exampleInputEmail1"
				placeholder="Email" path="email" />
		</div>
		<div class="form-group">
			<label for="exampleInputPassword1" style="color: white">Password</label>
			<form:input type="password" class="form-control"
				id="exampleInputPassword1" placeholder="Password" path="password" />
		</div>
		<input type="submit" value="Login" class="btn btn-info btn-block"
			style="font-size: 12pt; color: black; background-color: lightgray; border: 2px solid #336600; padding: 3px">
	</form:form>

	<br>
	<br>
	<form action="Register.html">
		<input type="submit" value="Sign Up Page"
			style="font-size: 12pt; color: black; background-color: lightgray; border: 2px solid #336600; padding: 3px">
	</form>


</body>
</html>
