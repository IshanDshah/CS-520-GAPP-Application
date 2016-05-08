<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>User List</title>
</head>
<body>
	<h2>User List</h2>
	<table border="1">
		<tr>
			<th>User ID</th>
			<th>First name</th>
			<th>Last name</th>
			<th>Email</th>
			<th>Password</th>		</tr>
			<tr>
			<c:forEach items="${users}" var="users">
			<tr><td>${users.user_id}</td>
			<td>${users.lastname}</td>
			<td>${users.firstName}</td>
			<td>${users.email}</td>
			<td>${users.password}</td></tr>

		</c:forEach>
	</table>


</body>
</html>