package com.coder;

/*
 * File : SqServlet.java
 * Name: Arpan Singha
 * Roll No.: 727
 * Registration No.: A01-1112-117-023-2018
 * Semester: V
 */

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class SqServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		out.println("<h3>Hello from SqServlet.java</h3>");
	}

}
