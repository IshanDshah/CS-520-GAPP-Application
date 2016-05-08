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



	<div id="header" style="width: 25%">
		<h4>Student Application</h4>
	</div>

	<br>
	<form action="EditedApplication.html" method="post">
		<input type="hidden"
			value="${is.getApplication().getApplication_Id()}"
			name="applicationId">
		<table border="3" style="width: auto">
			<thead>
				<th>Fields</th>
				<th>Values</th>
			</thead>

			<c:forEach items="${view}" var="is">

				<tr>
					<td><b>Department Name</b></td>
					<td>${is.getApplication().getProgram().getDepartment().getDepartmentName()}</td>

				</tr>

				<tr>

					<td><b>Program Name</b></td>

					<td><select class="form-control" style="width: auto"
						name="programidentifica" id="progID">
							<c:forEach
								items="${is.getApplication().getProgram().getDepartment().getPrograms()}"
								var="prog">
								<option `value="${ prog.getProgramId()}">${prog.getProgramName()}</option>
							</c:forEach>
					</select>
				</tr>
				<tr>
					<td>Term</td>
					<td><input type="text"
						value="${is.getApplication().getTerm()}" name="term">
				</tr>



			</c:forEach>


		</table>


		<br>
		<div id="header" style="width: 25%">
			<h4>Student Details</h4>
		</div>
		<br>


		<table border="5" style="width: auto">
			<tr>
			<tr>
				<c:forEach items="${view}" var="is">


					<tr>
						<td><b>First Name</b></td>

						<td><input type="text"
							value="${is.getStudent().getFirstName()}" name="firstName"></td>
					</tr>

					<tr>
						<td><b>Last Name</b></td>

						<td><input type="text"
							value="${is.getStudent().getLastName()}" name="lastName"></td>
					</tr>
					<tr>
						<td><b>Email</b></td>

						<td><input type="text" value="${is.getStudent().getEmail()}"
							name="email"></td>
					</tr>

					<%-- 			<tr>
						<td><b>CIN</b></td>

						<td>${is.getStudent().getCin()}</td>
					</tr>

					<tr>
			
			--%>

					<td><b>Phone Number</b></td>

					<td><input type="text" value="${is.getStudent().getPhone()}"
						name="phnNO"></td>
			</tr>
			<tr>
				<td><b>Gender</b></td>

				<td><input type="text" value="${is.getStudent().getGender()}"
					name="gender"></td>
			</tr>
			<tr>
				<td><b>Citizen</b></td>

				<td><input type="text"
					value="${is.getStudent().getCitizenship()}" name="citizen"></td>
			</tr>
			<tr>
				<td><b>Date of Birth</b></td>

				<td><input type="text"
					value="${is.getStudent().getDateOfBirth()}" name="DOB"></td>
			</tr>

			<td><b>GRE</b></td>

			<td><input type="text" value="${is.getStudent().getGre()}"
				name="gre">
			<tr>
				<td><b>TOEFL</b></td>

				<td><input type="text" value="${is.getStudent().getToefl()}"
					name="toefl"></td>
			</tr>

			<tr>
				<td><b>GPA</b></td>

				<td><input type="text" value="${is.getStudent().getGpa()}"
					name="gpa"></td>
			</tr>
			</c:forEach>
			</tr>
			</tr>

		</table>

		<br>
		<div id="header" style="width: 25%">
			<h4>Educational Background</h4>
		</div>
		<br>

		<c:forEach items="${deg}" var="is">

			<table border="5" style="width: auto">
				<tr>
				<tr>
					<td><b>College Name</b></td>

					<td>${is.getCollegeName()}</td>
				</tr>

				<tr>
					<td><b>Start Date</b></td>

					<td>${is.getStartDate()}</td>
				</tr>

				<tr>
					<td><b>End Date</b></td>

					<td>${is.getEndDate()}</td>
				</tr>

				<tr>
					<td><b>Degree gained</b></td>

					<td>${is.getDegreeGained()}</td>
				</tr>

				<tr>
					<td><b>Major</b></td>

					<td>${is.getMajor()}</td>
				</tr>
				</tr>

			</table>
			<br>
			<br>
		</c:forEach>





		<%-- <form action="AddEditDegree.html" method="get">
				<input type="submit" value="Add Degree" class="btn btn-default" />
			</form>
--%>
		<br> <a href="AddEditDegree.html">Add Degree</a> <br>

		<c:forEach items="${view}" var="is">
			<a
				href="RemoveDegree.html?application_Id=${is.getApplication().getApplication_Id()}">Remove
				Degree</a>

		</c:forEach>
		<br> <input type="submit" value="Update" class="btn btn-default">

		<br> <br> <br>

	</form>
</body>
</html>

