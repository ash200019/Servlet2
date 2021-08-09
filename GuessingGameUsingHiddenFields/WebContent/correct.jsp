<!--
 * File: correct.jsp
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
<meta charset="ISO-8859-1">
<title>The Best Guessing Game - Results</title>
</head>
<body>
	<h1>The Best Guessing Game</h1>
	<p>
	${requestScope.msg} 
	</p>
	
	<p>
	<a href="index.jsp">Play Again</a>
	</p>

</body>
</html>