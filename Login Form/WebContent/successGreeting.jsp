<!--
File: successGreeting.jsp
Name: Arpan Singha
RollNo. : 727
Registration Number: A01-1112-117-023-2018
Semester: V
-->
<%@page import="com.coder.model.User"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Page: Success</title>
        <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    </head>
   
 <body bgcolor='white' class="w3-cursive">
<!-- Page Heading -->
<div class="w3-card-4 w3-margin">
<table class="w3-display-topmiddle w3-green">
<tr align='center' valign='center' height='20'>
<td><h3>Login Page: Success</h3></td>
</tr>
</table>
<%	User user = (User)request.getAttribute("User");
 %>
<div class="w3-display-middle">
<p> You have successfully logged in!!!</p>

<u>Your Details are:</u><br/><br/>	
<table class="w3-table-all">
<thead align='center'>
<td>ID</td>
<th>First Name</th>
<th>Last Name</th>
<th>Age</th>
<th>Gender</th>
<th>Email</th>
<th>Username</th>
<th>Password</th>
</thead>
	
	<tr align='center'>
		<td><%=user.getID()%></td>
		<td><%=user.getFirstName()%></td>
		<td><%=user.getSurname()%></td>
		<td><%=user.getAge()%></td>
		<td><%=user.getGender()%></td>
		<td><%=user.getEmail()%></td>
		<td><%=user.getUsername()%></td>
		<td><%=user.getPassword()%></td>
	</tr>

</table>
<br/><br/><br/><br/>
<center>Click <a href='index.jsp'>here</a> to logout</center><br/>
</div>
</div>
</body>
</html>

