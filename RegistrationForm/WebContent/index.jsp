<!--
File: index.jsp
Name: Arpan Singha
RollNo. : 727
Registration Number: A01-1112-117-023-2018
Semester: V
-->

<%@page import="com.coder.model.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registration Form: Add a new user</title>
 <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
</head>
<body bgcolor='white'>
<!-- Page Heading -->
<div class="w3-container w3-card-4 w3-margin w3-display-topmiddle w3-round">
<table>
<tr>
<td><h3>Registration Form</h3></td>
</tr>
</table>
<p>
This form allows you to add a new user.
</p>

<%
	User user = new User();
	if(request.getAttribute("errorMsgs") != null){
		%>
		<div>
		<%="Please correct the following errors!!!!" %>
		</div>
		<ul>
<% 	
		java.util.List<String> errorMsgs = (java.util.List<String>)request.getAttribute("errorMsgs");
		for(String errorMsg: errorMsgs){	
%>
		<li><%= errorMsg%></li>
		
<%		}
		
		user = (User)request.getAttribute("user");
		
	}
%>
</ul>
<form action='AddUserServlet' method='POST'>

First Name:<input type='text' name='firstname' value="<%=user.getFirstName()%>" class="w3-input w3-border"> <br/>

Surname:<input type='text'name='surname' value="<%=user.getSurname()%>" class="w3-input w3-border"><br/>

Age:<input type='text' name='age' value="<%=user.getAge()%>" class="w3-input w3-border"><br/>

Gender:<input type='text' name='gender' value="<%=user.getGender() %>" class="w3-input w3-border"><br/>

E-mail:<input type='text' name='email' value="<%=user.getEmail() %>" class="w3-input w3-border"><br/>

Username:<input type='text' name='username' value="<%=user.getUsername() %>" class="w3-input w3-border"><br/>

Password:<input type='password' name='password' value="<%=user.getPassword() %>" class="w3-input w3-border"><br/>

<input type='submit' value='Add User'/>

</form>
</div>
</body>
</html>
