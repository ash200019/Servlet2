<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="employee" scope="session" class="model.EmployeeBean" />
<jsp:setProperty property="firstName" name="employee" value="Arpan"/>
<jsp:setProperty property="lastName" name="employee" value="Roy"/>
<jsp:setProperty property="payRate" name="employee" value="500"/>
<jsp:setProperty property="startYear" name="employee" value="2020"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Employee Bean Demo</title>
</head>
<body>
<h1>Employee Bean Demo</h1>

Employee Data: <br />
<table border = "1">
	<tr>
		<td>
			First Name:
		</td>
		<td>
			<jsp:getProperty property="firstName" name="employee" />
		</td>
	</tr>
	<tr>
		<td>
			Last Name:
		</td>
		<td>
			<jsp:getProperty property="lastName" name="employee" />
		</td>
	</tr>
	<tr>
		<td>
			Pay Rate:
		</td>
		<td>
			<jsp:getProperty property="payRate" name="employee" />
		</td>
	</tr>
	<tr>
		<td>
			Starting Year:
		</td>
		<td>
			<jsp:getProperty property="startYear" name="employee" />
		</td>
	</tr>
</table>

</body>
</html>