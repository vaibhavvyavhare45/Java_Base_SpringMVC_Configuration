<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Employee Details</title>
</head>
<body bgcolor="orange">

	<h3>Fill Employee Details</h3>

	<form action="createNewEmployee" method="post">
		<table>

			<tr>
				<td>Full Name:</td>
				<td><input type="text" name="name" /></td>
			</tr>
			<tr>
				<td>Phone Number:</td>
				<td><input type="text" name="phone" /></td>
			</tr>
			<tr>
				<td>ID:</td>
				<td><input type="text" name="id" /></td>
			</tr>


		</table>

		<input type="submit" value="Create Employee">

	</form>
	<br>
	<form action="updateEmployee" method="post">
		<table>

			<tr>
				<td>Full Name:</td>
				<td><input type="text" name="name" /></td>
			</tr>
			<tr>
				<td>Phone Number:</td>
				<td><input type="text" name="phone" /></td>
			</tr>
			<tr>
				<td>ID:</td>
				<td><input type="text" name="id" /></td>
			</tr>


		</table>

		<input type="submit" value="update Employee">

	</form>
	<br>
	<form action="deleteEmployee" method="post">
		<table>


			<tr>
				<td>ID:</td>
				<td><input type="text" name="id" /></td>
			</tr>


		</table>

		<input type="submit" value="delete Employee">

	</form>
	<br>
	<form action="readEmployee" method="post">
		<table>


			<tr>
				<td>ID:</td>
				<td><input type="text" name="id" /></td>
			</tr>


		</table>

		<input type="submit" value="show Employee">

	</form>
	<br>
	<form action="employeeList" method="post">
		

	</form>

</body>
</html>