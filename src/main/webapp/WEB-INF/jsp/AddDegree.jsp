<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


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

	<form class="form" style="width: 25%" action="AddDegree.html"
		method="post">
		<div class="form-group">
			College Name <input type="text" class="form-control .col-sm-*"
				placeholder="College Name" name="collegeName" required>
		</div>
		<div class="form-group">
			Start Date<input type="date" class="form-control .col-sm-*"
				placeholder="Start Date" name="startDate" required>
		</div>
		<div class="form-group">
			End Date <input type="text" class="form-control .col-sm-*"
				placeholder="End Date" name="endDate" required>
		</div>
		<div class="form-group">
			Degree Gained<input type="text" class="form-control .col-sm-*"
				placeholder="Degree gained" name="degreeGained" required>
		</div>
		<div class="form-group">
			Major<input type="text" class="form-control .col-sm-*"
				placeholder="Major/Field" name="major" required />
		</div>
		<%-- <input tye="hidden" value=""> --%>
		<input type="submit" value="ADD degree" class="btn btn-default">

		<button type="submit" formaction="saveDegree.html"
			class="btn btn-default">Next</button>
	</form>
</body>





</html>