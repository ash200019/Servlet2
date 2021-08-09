/*
 * File: SqServlet.java
 * Name: Arpan Singha
 * Roll No. 727
 * Registration Number: A01-1112-117-023-2018
 * Semester: V
*/
package com.coder;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Cookie;

public class SqServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public void doGet(HttpServletRequest req, HttpServletResponse res) 
			throws IOException {

		int k = 0;
		Cookie[] cookies = req.getCookies();
		for (Cookie c : cookies) {
			if (c.getName().contentEquals("key")) {
				k = Integer.parseInt(c.getValue());
				break;
			}
		}
		k = k * k;
		res.setContentType("text/html");
		PrintWriter out = res.getWriter();
		out.println("<h3>Squared Result: " + k +"</h3>");
	}
}
