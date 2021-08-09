package com.coder;

/*
 * File: AddServlet.java
 * Name: Arpan Singha
 * Roll No.: 727
 * Registration No.: A01-1112-117-023-2018
 * Semester: V
 */

import java.io.IOException;
// import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class AddServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public void doGet(HttpServletRequest request, HttpServletResponse response) 
		throws IOException, ServletException {
		int i = Integer.parseInt(request.getParameter("num1"));
		int j = Integer.parseInt(request.getParameter("num2"));
		int k = i + j;
		k = k * k;
		
		RequestDispatcher rd = request.getRequestDispatcher("sq");
		rd.forward(request, response);
	}

}
