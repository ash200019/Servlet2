<!--
File: successUser.jsp
Name: Arpan Singha
RollNo. : 727
Registration Number: A01-1112-117-023-2018
Semester: V
-->
<%@page import="com.coder.model.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
 <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<title>Registration: Add User Success</title>
</head>
<body bgcolor='white'>
<!-- Page Heading -->
<div class="w3-container w3-card-4 w3-margin w3-display-topmiddle w3-round">
<table border='1' cellpadding='5' cellspacing='0' width='400'>
<tr bgcolor='#CCCCFF' align='center' valign='center' height='20'>
<td><h3 class="w3-panel w3-card-4">Registration: Add User Success</h3></td>
</tr>
</table>
<%	User user = (User)request.getAttribute("user");
 %>
<p class="w3-panel">
Your request to add  <i> <%=user.getUsername() %></i>  was successful.
</p>
<span class="w3-card-4"><center>Click <a href="index.jsp">here</a> to log out.</center></span>
</div>
</body>
</html>
