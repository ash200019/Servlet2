<!--
File: index.jsp
Name: Arpan Singha
RollNo. : 727
Registration Number: A01-1112-117-023-2018
Semester: V
-->
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
       <title>Login Page</title>
       <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
</head>
<body bgcolor='white' class="w3-cursive">
<div class="w3-card-4 w3-margin">
<table class="w3-display-topmiddle">
<tr align='center' valign='center' height='20' class="w3-green">
<td><h3>Welcome to Login Page</h3>
</td>
</table>
<div class="w3-display-middle">
<p>
This is the Login Page

</p> 

<%
	if( request.getAttribute("errorMsgs") != null){
		%>
		<div>
		<%="Please correct the following errors!!!!" %>
		</div>
		
<% 
		List<String> errorMsgs = (List<String>)request.getAttribute("errorMsgs");
		for(String errorMsg: errorMsgs){	
%>		
		<%= errorMsg%>
		
<%		}
		
	}
%>

<form action="LoginPath" method="POST">
  User Name: <input type="text" name="userName" size="20" class="w3-input w3-border"><br>
  Password : <input type="password" name="password" size="20" class="w3-input w3-border" >
  <br/><br/>
  <input type="submit" value="Sign in" class="w3-button w3-green">
</form>
</div>
 </div>   
</body>
</html>
