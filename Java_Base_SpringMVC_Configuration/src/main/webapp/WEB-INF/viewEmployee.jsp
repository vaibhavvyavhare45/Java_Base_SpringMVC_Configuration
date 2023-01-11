<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<jsp:useBean id="employee" class="com.prowings.model.Employee"
	scope="request" />
<jsp:setProperty name="employee" property="*" />
<!DOCTYPE html>
<html>
<head>
<%@ page isELIgnored="false"%>
<meta charset="ISO-8859-1">

<title>Employee Details</title>

</head>
<body bgcolor="skyblue">
	<h1>Employee Details</h1>
	<p>
		Employee Id:
		<c:out value="${employee.id }" />
	</p>
	<p>
		Employee Name:
		<c:out value="${employee.name }" />
	</p>
	<p>
		Employee Phone:
		<c:out value="${employee.phone }" />
	</p>


</body>
</html>