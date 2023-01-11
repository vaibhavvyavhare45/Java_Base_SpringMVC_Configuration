<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<%@ page isELIgnored="false"%>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h2>Users List</h2>
	<table>
		<tr>
			<td><strong>Employee Id</strong></td>
			<td><strong>Employee Name</strong></td>
			<td><strong>Employee Phone</strong></td>

		</tr>
		<c:forEach items="${employee}" var="employee">
			<tr>
				<td>${employee.id}</td>
				<td>${employee.name}</td>
				<td>${employee.phone}</td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>