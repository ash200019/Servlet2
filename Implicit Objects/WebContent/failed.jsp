<!--
 * File: failed.jsp
 * Name: Arpan Singha
 * Roll No. 727
 * Registration Number: A01-1112-117-023-2018
 * Semester: V
 *  -->
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>Sign-in Failed Page</title>
<style type="text/css">
	*{
		font-family:sans-serif;
	}
</style>
</head>
<body>
<% 
	String data2=(String)session.getAttribute ("session-uid");
	out.println("<h3>Hi "+ data2+".<br> Id/Password are wrong. Please try Again.</h3>"); 
%>
</body>
</html>