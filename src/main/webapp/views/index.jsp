<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>

<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h3>
		<font color='green'>${sucessMsg}</font>
	</h3>
	<form:form action="register" method="POST" modelAttribute="student">
		<table>
			<tr>
				<td>Name:</td>
				<td><form:input path="name" />
			</tr>

			<tr>
				<td>Email:</td>
				<td><form:input path="email" />
			</tr>

			<tr>
				<td>Gender:</td>
				<td><form:radiobutton path="gender" value="M" />Male <form:radiobutton
						path="gender" value="F" />Female <form:radiobutton path="gender"
						value="T" />Teda</td>
			</tr>

			<tr>
				<td>Select Course:</td>
				<td><form:select path="course">
						<form:option value="">-Select-</form:option>
						<form:option value="JAVA">JAVA</form:option>
						<form:option value="NET">NET</form:option>
						<form:option value="Python">Python</form:option>
						<form:option value="Angular">Angular</form:option>
					</form:select></td>
			</tr>
			<tr>
				<td>Timings:</td>
				<td><form:checkbox path="timings" value="mrng" />Morning <form:checkbox
						path="timings" value="aftn" />Aftn <form:checkbox path="timings"
						value="weekends" />Weekends</td>
			</tr>

			<tr>
			<td><input type="reset" value="Reset" /></td>
			<td><input type="Submit" value="SUBMIT" /></td>
			</tr>
		</table>
	</form:form>
</body>
</html>