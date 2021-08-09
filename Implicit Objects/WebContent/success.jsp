<!--
 * File: success.jsp
 * Name: Arpan Singha
 * Roll No. 727
 * Registration Number: A01-1112-117-023-2018
 * Semester: V
 *  -->
 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE HTML>
<html>
<head>
<title>Success Page</title>
<style type="text/css">
	*{
		font-family:sans-serif;
	}
</style>
</head>
<body>
<% 
	String data=(String)session.getAttribute ("session-uid"); //getting attributes from object
	out.println("<h3>Welcome "+ data+"!!</h3>"); 
%>
</body>
</html>