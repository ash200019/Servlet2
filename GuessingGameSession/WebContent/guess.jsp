<!--
 * File: guess.jsp
 * Name: Arpan Singha
 * Roll No. 727
 * Registration Number: A01-1112-117-023-2018
 * Semester: V
 *  -->
 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import ="model.GameNumber" %>

<%
	GameNumber guesses = (GameNumber)session.getAttribute("guesses");
	String msg =(String)request.getAttribute("msg");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Guessing Game</title>
</head>
<body>
	<h1>Guessing Game</h1>
	<p>
		<%= msg %>
	</p>
	
	<form name="guessForm" action="doGuess" method="post">
		<table border="1">
			<tr>
				<td>Guess <%= guesses.getValue() %></td>
				<td><input type="text" name="guess"></td>
			</tr>
		</table>
		<table border="1">
			<tr>
				<td><input type="submit" value="Make Guess"></td>
			</tr>
		</table>
	</form>
	
</body>
</html>
