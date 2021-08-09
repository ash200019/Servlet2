/*
 * File: AddServlet.java
 * Name: Arpan Singha
 * Roll No.: 727
 * Registration No.: A01-1112-117-023-2018
 * Semester: V
 */
package com;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/add")
public class AddServlet extends HttpServlet {//Using Annotation
	private static final long serialVersionUID = 1L;

	public void doGet(HttpServletRequest request, HttpServletResponse response) 
		throws IOException, ServletException {
		int i = Integer.parseInt(request.getParameter("num1")); //Using HttpServletRequest to get values from form
		int j = Integer.parseInt(request.getParameter("num2"));
		int k = i + j;
		
		//Using HttpServletResponse to print Result
		response.setContentType("text/html");
		PrintWriter out= response.getWriter();
		out.println("<h3>The Sum of Numbers " + i + " and " + j+ " is: " + k+"</h3>");
	}

}
