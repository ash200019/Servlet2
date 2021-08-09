<!--
 * File: correct.jsp
 * Name: Arpan Singha
 * Roll No. 727
 * Registration Number: A01-1112-117-023-2018
 * Semester: V
 *  -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	String msg = (String)request.getAttribute("msg");
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>The Best Guessing Game - Results</title>
</head>
<body>
	<h1>The Best Guessing Game - Results</h1>
	<p>
	<%= msg %>
	</p>
	
	<p>
		<a href="index.jsp">Play again</a>
	</p>
</body>
</html>
