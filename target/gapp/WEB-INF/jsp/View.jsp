<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
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
	<br>

	<table border="3" style="width: 25%">
		<thead>
			<th>Fields</th>
			<th>Values</th>
		</thead>

		<tr>
			<td><b>Department Name</b></td>

			<td>${department.departmentName}</td>
		</tr>
	</table>
	<br>
	<br>
	<table border="5" style="width: auto">
		<tr>

			<c:forEach items="${programs}" var="program">
				<tr>
					<td><b>Program Name</b></td>

					<td>${program.programName}</td>
				</tr>
			</c:forEach>



		</tr>
	</table>

	<br>
	<br>

	<table border="5" style="width: auto">
		<center>
			<tr>
				<td><b>Additional Detail's Name</b></td>

				<c:forEach items="${extraInfo}" var="extraInfo">
					<td>${extraInfo.fieldName}</td>
				</c:forEach>
			</tr>
			<tr>
				<td><b>Type</b></td>

				<c:forEach items="${extraInfo}" var="extraInfo">
					<td>${extraInfo.fieldType}</td>
				</c:forEach>
			</tr>
			<tr>
				<td><b>Required</b></td>

				<c:forEach items="${extraInfo}" var="extraInfo">
					<td>${extraInfo.required}</td>
				</c:forEach>
			</tr>
		</center>

	</table>
	<br>
	<br>

	<form action="department.html">
		<input type="submit" value="Back to Department"
			style="font-size: 12pt; color: green; background-color: black; border: 2px solid #336600; padding: 3px">
	</form>

</body>
</html>