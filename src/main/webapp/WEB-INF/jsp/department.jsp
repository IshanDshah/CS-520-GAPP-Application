<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>


<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css"></link>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>


<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">


<title>Department List</title>

<link href="css/Admin.css" rel="stylesheet" />


</head>
<body>
	<div id="header">
		<h4>GAPP ADMINISTRATION</h4>
	</div>

	<br>
	<br>
	<br>
	<center>
		<table border="2" class="table table-striped" style="width: 45%">
			<tr>
				<th>DepartmentId</th>
				<th>DepartmentName</th>
				<th>No of Programs offered</th>
				<th>Operation</th>
				<th>Operation</th>
				<th>Operation</th>
				<th>Operation</th>

				<th>Operation</th>
			</tr>
			<c:forEach items="${departments}" var="department">
				<tr>
					<td>${department.departmentId }</td>
					<td>${department.departmentName}</td>
					<td>${department.programs.size()}</td>
					<td><a
						href="View.html?departmentId=${department.departmentId}">View</a></td>
					<td><a
						href="Edit.html?departmentId=${department.departmentId}">Edit</a></td>
					<td><a
						href="Remove.html?departmentId=${department.departmentId}">Remove</a></td>
					<td><a
						href="AddProgram.html?departmentId=${department.departmentId}">Add
							Program</a></td>
					<td><a
						href="AddExtraInfo.html?departmentId=${department.departmentId}">Add
							ExtraInfo</a></td>

				</tr>
			</c:forEach>
		</table>


		<form action="AddDepartment.html">
			<input type="submit" value="Add Department"
				style="font-size: 12pt; color: black; background-color: lightgray; border: 2px solid #336600; padding: 3px">
		</form>


		<br> <br>
		<form action="Login.html">
			<input type="submit" value="Logout"
				style="font-size: 12pt; color: black; background-color: lightgray; border: 2px solid #336600; padding: 3px">
		</form>



	</center>
<br><br><br><br>
	<div id="footer">Copyright © Calstatela.edu</div>




</body>
</html>