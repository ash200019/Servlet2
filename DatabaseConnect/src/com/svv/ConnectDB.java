package com.svv;

//connect to the database
import java.sql.*;

public class ConnectDB {
public static void main(String args[]){
Connection conn = null;
String userName = UserStudent.userName;
String password = UserStudent.password;
String url = "jdbc:mysql://localhost/stest?autoReconnect=true&useSSL=false";
try {
 conn = DriverManager.getConnection(url, userName, password);
 System.out.println("Database connection established");
}
catch (SQLException e){
 System.err.println("Cannot connect to database server");
}
finally {
 if (conn != null){
	try {
	  conn.close();
	  System.out.println("Database connection terminated");
	}
	catch (Exception e){ /* ignore close errors */ }
 } // if
} // finally
} // main
} // ConnectDB
