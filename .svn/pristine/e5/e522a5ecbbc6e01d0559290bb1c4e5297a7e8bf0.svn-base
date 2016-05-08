<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>Insert title here</title>

</head>
<body>


	<table border="3" style="width: 50%" class="table table-bordered"
		align="center">
		<center>
			<thead>
				<th>Application Id</th>
				<th>Date Submitted</th>
				<th>Department Name</th>
				<th>Program Name</th>
				<th>Term</th>
				<th>Status</th>
				<th>Operation</th>
				<th>Operation</th>
			</thead>
		</center>
		<tr>

			<c:forEach items="${user}" var="is">

				<tr>
					<td>${is.getApplication().getApplication_Id()}</td>
					<td>${is.eventTime}</td>
					<td>${is.getApplication().getProgram().getDepartment().getDepartmentName()}</td>
					<td>${is.getApplication().getProgram().getProgramName()}</td>
					<td>${is.getApplication().getTerm()}</td>
					<c:if test="${is.getApplication().isSaved()}">
						<td>Submitted</td>
					</c:if>
					<c:if test="${!is.getApplication().isSaved()}">
						<td>Not Submitted</td>
					</c:if>

					<td><a
						href="Viewapplication.html?application_Id=${is.getApplication().getApplication_Id()}">View</a></td>
					<c:if test="${!is.getApplication().isSaved()}">
						<td><a
							href="Editapplication.html?application_Id=${is.getApplication().getApplication_Id()}">Edit</a>
						</td>
					</c:if>


				</tr>
			</c:forEach>
		</tr>

	</table>
	<form action="student1.html">
		<center>
			<input type="Submit" value="home" class="btn btn-default"
				align="center" />
		</center>
	</form>

</body>
</html>