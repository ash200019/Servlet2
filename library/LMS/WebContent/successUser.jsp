<%@page import="com.coder.model.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Library Management System: Add User Success</title>
</head>
<body bgcolor='white'>
<!-- Page Heading -->
<table border='1' cellpadding='5' cellspacing='0' width='400'>
<tr bgcolor='#CCCCFF' align='center' valign='center' height='20'>
<td><h3>Library Management System: Add User Success</h3></td>
</tr>
</table>
<%	User user = (User)request.getAttribute("user");
 %>
<p>
Your request to add  <i> <%=user.getUsername() %></i>  was successful.
</p>
<center>Click <a href="index.jsp">here</a> to log out.</center>
</body>
</html>
