/*
 * File: MyServlet.java
 * Name: Arpan Singha
 * Roll No. 727
 * Registration Number: A01-1112-117-023-2018
 * Semester: V
*/
package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class MyServlet extends HttpServlet{
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest req, HttpServletResponse res)
				throws IOException, ServletException {
		res.setContentType("text/html");
		PrintWriter out = res.getWriter();
		out.print("<h3>Hi, ");
		
		ServletContext ctx = getServletContext();
		String str = ctx.getInitParameter("name1");
		out.println(str+"<br>");
		String str2 = ctx.getInitParameter("phone");
		out.println("Phone: " + str2 + "<br>");
		
		ServletConfig cg = getServletConfig();
		String str3 = cg.getInitParameter("name1");
		out.println(str3);
	}

}
