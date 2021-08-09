/*
* File: AddServlet.java
* Name: Arpan Singha
* Roll No. 727
* Registration Number: A01-1112-117-023-2018
* Semester: V
*/
package com.coder;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class AddServlet extends HttpServlet{
	
	private static final long serialVersionUID = 1L;

	public void doGet(HttpServletRequest req, HttpServletResponse res) throws IOException,ServletException{
		int i = Integer.parseInt(req.getParameter("num1"));
		int j = Integer.parseInt(req.getParameter("num2"));
		
		int k = i + j;
		
		HttpSession session = req.getSession(); //HttpSession object declared
		session.setAttribute("k", k);
		res.sendRedirect("sq");
	}
}

