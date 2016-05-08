<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css"></link>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>

<title>Insert title here</title>

<link href="css/Admin.css" rel="stylesheet" />
</head>
<body>


	<div id="header">
		<h4>GAPP ADMINISTRATION</h4>
	</div>


	<br>
	<br>
	<br>
	<form:form modelAttribute="extrainfo" post="AddExtraInfo.html">
		<div class="form-group">
			<label for="usr">Field Name:</label> <input type="hidden"
				name="departmentid" value="${department.departmentId}"> <input
				type="text" class="form-control" name="fieldName" style="width: 25%" />
		</div>

		<div class="form-group">
			<label for="usr">Field Type:</label> <input type="hidden"
				name="departmentid" value="${department.departmentId}"> <input
				type="text" class="form-control" name="fieldType" style="width: 25%" />
		</div>


		<div class="form-group">
			<label for="usr">Required</label> <input type="hidden"
				name="departmentid" value="${department.departmentId}"><input
				type="hidden" name="programid" value="${program.programId}">
			<input type="text" class="form-control" name="required"
				style="width: 25%" />
		</div>



		<input type="submit" value="Add Extra Information"
			style="font-size: 12pt; color: green; background-color: black; border: 2px solid #336600; padding: 3px">
	</form:form>

	<br>
	<br>
	<br>


	<form action="department.html">
		<input type="submit" value="Back to Department"
			style="font-size: 12pt; color: green; background-color: black; border: 2px solid #336600; padding: 3px">
	</form>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>



	<div id="footer">Copyright � Calstatela.edu</div>


</body>
</html>