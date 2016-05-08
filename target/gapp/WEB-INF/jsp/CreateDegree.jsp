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
		<h4>Degree Information</h4>
	</div>



	<form:form modelAttribute="degree" method="post" class="form"
		style="width: 25%" action="CreateDegree">
		<div class="form-group">
			College Name <input type="text" class="form-control .col-sm-*"
				placeholder="College Name" name="collegeName">
		</div>


		<div class="form-group">
			Start Date<input type="text" class="form-control .col-sm-*"
				placeholder="Start Date" name="startDate">
		</div>
		<div class="form-group">
			End Date <input type="text" class="form-control .col-sm-*"
				placeholder="End Date" name="endDate">
		</div>
		<div class="form-group">
			Degree Gained<input type="text" class="form-control .col-sm-*"
				placeholder="Degree gained" name="degreeGained">
		</div>
		<div class="form-group">
			Major<input type="text" class="form-control .col-sm-*"
				placeholder="Major/Field" name="major">
		</div>
		
		<input type="hidden" value="${applicationid}" name="applicationid">
		
		<button type="submit" formaction="AddDegree.html"
			class="btn btn-default">Add another Degree</button>

		<%-- <button type="submit" ></button>--%>

		<button type="submit" formaction="saveDegree.html"
			class="btn btn-default">Next</button>

	</form:form>





</body>
</html>