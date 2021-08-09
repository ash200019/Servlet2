<!--
 * File: guess.jsp
 * Name: Arpan Singha
 * Roll No. 727
 * Registration Number: A01-1112-117-023-2018
 * Semester: V
 *  -->
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="model.GameNumber" %>
<%
//get the inputs from the request parameter
	GameNumber target = new GameNumber(Integer.parseInt(request.getParameter("target")));
	int minimum = Integer.parseInt(request.getParameter("minimum"));
	int maximum = Integer.parseInt(request.getParameter("maximum"));
	
	//get the inputs from the request attributes
	
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
	${msg}
</p>
<form name="guessForm" action="doGuess" method="post">
	<table>
		<tr>
			<td>Guess ${guesses.value}</td>
			<td><input type="text" name="guess"></td>
		</tr>
	</table>
	<table>
		<tr>
			<td><input type="submit" value="Make Guess"></td>
		</tr>
	</table>
	
	<input type="hidden" name="target" value="<%= target.getValue()%>">
	<input type="hidden" name="guesses" value="${requestScope.guesses.value}">
	<input type="hidden" name="minimum" value="<%=minimum%>">
	<input type="hidden" name="maximum" value="<%=maximum %>">
</form>



</body>
</html>