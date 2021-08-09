<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"  errorPage="error.jsp"%>
<%@ page import="java.sql.*" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Profile</title>
</head>
<body>
	<%! ResultSet rs; %>
	<%
	String url = "jdbc:mysql://localhost:3306/stest";
	String username = "student";
	String password = "Student10*";
	String sql = "select * from test1 where rollno = 103";
	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection(url, username, password);
	Statement st = con.createStatement();
	rs = st.executeQuery(sql);
	rs.next();
	
	%>
	RollNo: <%= rs.getString(1) %><br>
	Name:   <%= rs.getString(2) %><br>
	Marks: <%= rs.getString(3) %>
	
</body>
</html>