<!--
 * File: index.jsp
 * Name: Arpan Singha
 * Roll No. 727
 * Registration Number: A01-1112-117-023-2018
 * Semester: V
 *  -->
 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="model.GameNumber" %>

<%
	int minimum = 0;
	int maximum = 1000;
	
	GameNumber target = new GameNumber();
	target.setRandom(minimum,maximum);
	
	GameNumber guesses = new GameNumber(1);
	GameNumber guessMin = new GameNumber(minimum);
	GameNumber guessMax = new GameNumber(maximum);
	
	session.setAttribute("target",target);
	session.setAttribute("guesses", guesses);
	session.setAttribute("guessMin",guessMin);
	session.setAttribute("guessMax",guessMax);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Guessing Game - MVC Version</title>
</head>
<body>
	<h1>Guessing Game - MVC Version</h1>
	<p>Welcome to our guessing game!</p>
	<hr>
	<p>Please Guess a number between <%= minimum %> and <%= maximum %>.</p>
	<form name="guessForm" action="doGuess" method="post">
		<table border="1">
			<tr>
				<td>Guess 1</td>
				<td><input type="text" name="guess"></td>
			</tr>
		</table>
		<table border="1">
			<tr>
				<td><input type="submit" value="Go"></td>
			</tr>
		</table>
	</form>
</body>
</html>
