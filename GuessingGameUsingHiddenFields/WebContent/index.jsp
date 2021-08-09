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
	//Initialize the numbers
	int minimum = 0;
	int maximum = 1000;
	
	GameNumber target = new GameNumber();
	target.setRandom(minimum,maximum);
	
	GameNumber guesses = new GameNumber(0);
%>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Guessing Game - MVC version</title>
</head>
<body>
	<h1>Guessing Game - Hidden Fields Version</h1>
	<h3>Using Session Management by hidden fields</h3>
	<p>Welcome to our Guessing Game</p>
	
	<p>Please guess a number between <%=minimum %> and <%=maximum %></p>
	<form name="guessForm" action="doGuess" method="post">
		<table border="1">
		<tr>
			<td>Guess 1</td>
			<td><input type="text" name="guess"></td>
		</tr>
		</table>	
		<table border="1">
		<tr>
			<td><input type="submit" value="Guess"></td>
		</tr>
		</table>
		<input type="hidden" name="target" value="<%= target.getValue()%>">
		<input type="hidden" name="guesses" value="<%=guesses.getValue()+1%>">
		<input type="hidden" name="minimum" value="<%=minimum%>">
		<input type="hidden" name="maximum" value="<%=maximum %>">
		
	</form>
</body>
</html>