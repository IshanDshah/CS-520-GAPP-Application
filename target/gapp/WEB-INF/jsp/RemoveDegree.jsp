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

	<c:forEach items="${deg}" var="is">
		<form action="Removedegree.html" method="post">

			<table border="5" style="width: auto">
				<tr>
				<tr>
					<%-- 
					<input type="hidden" value="${application.application_Id}">
					<input type="hidden" name="programid" value="${program.programId}">
	--%>


					<input type="hidden" name="degree_Id" value="${is.getDegree_Id()}">

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

				<tr>
					<td><input type="hidden" name="degree_Id"
						value="${is.getDegree_Id()}"> <input type="submit"
						value="Remove Degree"></td>
				</tr>

			</table>
			<br> <br>
	</c:forEach>


	<br>
	<br>




	<%-- 
	<form action="Editapplication.html">
		<input type="hidden"
			value="${is.getApplication().getApplication_Id()
			}">

		<input type="submit" value="Remove">
	</form>
--%>
</body>
</html>