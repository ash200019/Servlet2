/* File: SqServlet.java
 * Name: Arpan Singha
 * Roll No. 727
 * Registration Number: A01-1112-117-023-2018
 * Semester: V
 * */
package com.coder;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class SqServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public void doGet(HttpServletRequest req, HttpServletResponse res) throws IOException {
		PrintWriter out = res.getWriter();
		
		HttpSession session = req.getSession();
		int k = (int)session.getAttribute("key");
		k = k * k;
		out.println("<h3>Hello From SqServlet</h3>");
		out.println("Square of Sum: " + k);
	}

}
