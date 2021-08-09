<!--
 * File: checkDetails.jsp
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
<title>Check Credentials</title>
<style type="text/css">
	*{
		font-family:sans-serif;
	}
</style>
</head>
<body>

<% 
	String uid=request.getParameter("id");
	String password=request.getParameter("pass");
	session.setAttribute("session-uid", uid); //setting attribute in Session Object
	if(uid.equals("arpan")&& password.equals("singha")){
		response.sendRedirect("success.jsp"); 
	}
	else { 
		response.sendRedirect("failed.jsp");
	} 
%>
</body>
</html>