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

	<font size="7" color="Black"><b>GAPP Administration</b> </font>

	<br>
	<br>
	<form:form modelAttribute="department" action="updatedepartment.html"
		method="post">
		<table border="3" style="width: 25%">
			<thead>
				<th>Fields</th>
				<th>Values</th>
			</thead>
			<tr>
				<td><b>Department Name</b></td>
				<td><form:input type="hidden"
						value="${department.departmentId}" path="departmentId"></form:input>
					<form:input type="text" path="departmentName" name="departmentname"
						value="${department.departmentName}"></form:input></td>
			</tr>
		</table>
		<input type="submit" value="Update Department"
			style="font-size: 12pt; color: green; background-color: black; border: 2px solid #336600; padding: 3px">
	</form:form>
	<br>
	<br>
	<c:forEach items="${department.programs}" var="program">
		<form action="updateprogram.html" method="post">
			<table border="3" style="width: 25%">
				<tr>

					<td><b>Program Name</b></td>
					<td><input type="hidden" name="departmentid"
						value="${department.departmentId}"><input type="hidden"
						name="programid" value="${program.programId}"><input
						type="text" value="${program.programName}" name="programname"></td>
					<td><input type="submit" value="Update Program"
						style="font-size: 12pt; color: green; background-color: black; border: 2px solid #336600; padding: 3px"></td>

				</tr>
			</table>

		</form>
	</c:forEach>


	<br>
	<br>


	<c:forEach items="${department.extraInfo}" var="extraInfo">
		<form action="updateextraInfo.html" method="post">
			<table border="3" style="width: 25%">
				<tr>

					<td><b>Field Name</b></td>
					<td><input type="hidden" name="departmentid"
						value="${department.departmentId}"><input type="hidden"
						name="extr_id" value="${extraInfo.extr_id}"><input
						type="text" value="${extraInfo.fieldName}" name="fieldName"></td>
				</tr>
				<tr>
					<td><b>Field Type</b></td>
					<td><input type="hidden" name="departmentid"
						value="${department.departmentId}"><input type="hidden"
						name="extr_id" value="${extraInfo.extr_id}"><input
						type="text" value="${extraInfo.fieldType}" name="fieldType"></td>
				</tr>
				<tr>
					<td><b>Field Name</b></td>
					<td><input type="hidden" name="departmentid"
						value="${department.departmentId}"><input type="hidden"
						name="extr_id" value="${extraInfo.extr_id}"><input
						type="text" value="${extraInfo.required}" name="required"></td>



				</tr>
				<tr>
					<td><input type="submit" value="Update ExtraInfo"
						style="font-size: 12pt; color: green; background-color: black; border: 2px solid #336600; padding: 3px"></td>
				</tr>
			</table>

		</form>
	</c:forEach>





	<br>
	<br>
	<form action="department.html">
		<input type="submit" value="Back to Department"
			style="font-size: 12pt; color: green; background-color: black; border: 2px solid #336600; padding: 3px">
	</form>
</body>
</html>