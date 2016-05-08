<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

</head>
<body>

	<div id="header" style="width: 25%">
		<h4>Student Application</h4>
	</div>

	<br>

	<table border="3" style="width: 25%">
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

				<td>${is.getApplication().getProgram().getProgramName()}</td>
			</tr>

			<tr>
				<td><b>Term</b></td>

				<td>${is.getApplication().getTerm()}</td>
			</tr>

		</c:forEach>

	</table>
	<div id="header" style="width: 25%">
		<h4>Personal Details</h4>
	</div>

	<table border="5" style="width: auto">
		<tr>
		<tr>
			<c:forEach items="${view}" var="is">

				<tr>
					<td><b>First Name</b></td>

					<td>${is.getStudent().getFirstName()}</td>
				</tr>

				<tr>
					<td><b>Last Name</b></td>

					<td>${is.getStudent().getLastName()}</td>
				</tr>

				<tr>
					<td><b>Email</b></td>

					<td>${is.getStudent().getEmail()}</td>
				</tr>
				<tr>
					<td><b>CIN</b></td>

					<td>${is.getStudent().getCin()}</td>
				</tr>
				<tr>
					<td><b>Phone No</b></td>

					<td>${is.getStudent().getPhone()}</td>
				</tr>
				<tr>
					<td><b>Gender</b></td>

					<td>${is.getStudent().getGender()}</td>
				</tr>
				<tr>
					<td><b>DOB</b></td>

					<td>${is.getStudent().getDateOfBirth()}</td>
				</tr>



			</c:forEach>
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

				<td>${ is.getMajor()}</td>
			</tr>
			</tr>
		</table>

	</c:forEach>

	<br>
	<div id="header" style="width: 25%">
		<h4>Academic Records</h4>
	</div>
	<br>

	<table border="5" style="width: auto">
		<tr>
		<tr>
			<c:forEach items="${view}" var="is">

				<tr>
					<td><b>First Name</b></td>

					<td>${is.getStudent().getFirstName()}</td>
				</tr>

				<tr>
					<td><b>Last Name</b></td>

					<td>${is.getStudent().getLastName()}</td>
				</tr>

				<tr>
					<td><b>Last Name</b></td>

					<td>${is.getStudent().getEmail()}</td>
				</tr>
				<tr>
					<td><b>Last Name</b></td>

					<td>${is.getStudent().getCin()}</td>
				</tr>



				<tr>
					<td><b>GRE</b></td>

					<td>${is.getStudent().getGre()}
				<tr>
					<td><b>TOEFL</b></td>

					<td>${is.getStudent().getToefl()}</td>
				<tr>
					<td><b>GPA</b></td>

					<td>${is.getStudent().getGpa()}</td>
				</tr>

				<tr>
					<td><b>Transcript</b></td>

					<td><a href="download.html">Download</a></td>
				</tr>









			</c:forEach>
		</tr>


		</tr>

	</table>
	<br>
	<form action="Studentapplication.html">
		<input type="submit" value="Back to Student Page" />
	</form>
</body>
</html>