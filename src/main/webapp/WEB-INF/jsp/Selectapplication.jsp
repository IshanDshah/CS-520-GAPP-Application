<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">


<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>


<script type="text/javascript">
	$(document)
			.ready(
					function() {
						$("#progAjax").change(
										function() {

											$
													.ajax({
														url : "getProgram.html",
														type : "POST",
														data : {
															department : $("#progAjax")
																	.val()
														},
														success : function(data) {
															var add = "";
															$("#progid").html(
																	'');
															var parseJson = JSON.parse(data);
															var program = parseJson.programs;
															for (var i = 0; i < program.length; i++) {

					add += "<option value='" + program[i].programId +"'>"+ program[i].programName + "</option>";}
$("#progid").append(add);
		}
});
		});
					});
</script>



</head>
<body>

	<br>
	<h4>
		<b>Department Name</b>
	</h4>

	<form action="Selectapplication.html" method="post">

		<select id="progAjax" class="form-control" style="width: 25%"
			required="required">
			<option></option>
			<c:forEach items="${departments}" var="department">

				<option value="${department.departmentId }">${department.departmentName}</option>

			</c:forEach>
		</select>


		<h4>Program Name</h4>

		<select id="progid" class="form-control" style="width: 25%"
			name="programName">


		</select>

		<div class="form-group" style="width: 25%">
			Term <input type="text" placeholder="Term"
				class="form-control .col-sm-*" name="term" />

		</div>
	
		<input type="Submit" value="Next" class="btn btn-default"
			align="center" />

	</form>

</body>
</html>