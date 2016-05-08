<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>


</head>
<body>


	<div id="header">
		<h4>Academic Information</h4>
	</div>



	<form method="post" action="upload.html" enctype="multipart/form-data">
		<div class="form-group">
			Transcript <input type="file" name="file"
				class="form-control .col-sm-*" style="width: 15%"> <br>
			<input type="submit" value="upload">

		</div>

	</form>
	<form action="Submitapplication.html" method="post">
		<input type="submit" value="Submit application"
			class="btn btn-default"> <input type="hidden"
			value="${applicationid}" name="applicationid">
	</form>


	<form action="Saveapplication.html" method="post">
		<input type="submit" value="Save application" class="btn btn-default">
		<input type="hidden" value="${applicationid}" name="applicationid">
	</form>

</body>
</html>