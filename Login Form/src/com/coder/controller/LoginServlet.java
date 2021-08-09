/*
File: LoginServlet.java
Name: Arpan Singha
RollNo. : 727
Registration Number: A01-1112-117-023-2018
Semester: V
*/
package com.coder.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.coder.model.User;

import javax.servlet.annotation.WebServlet;


@WebServlet("/LoginPath")
public class LoginServlet extends HttpServlet {
    
    
    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;

    /**
     * Handles the HTTP
     * <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

    /**
     * Handles the HTTP
     * <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    PrintWriter out=response.getWriter();
    String username=request.getParameter("userName");
    String password=request.getParameter("password");
    out.println("Hello from POST Method " + username);
         		        	
        List<String> errorMsgs=new ArrayList<String>();
        Connection con = null;  
        PreparedStatement stmt = null;
        ResultSet rs = null;
            //send the ErrorPage view.
        request.setAttribute("errorMsgs", errorMsgs);
        try {
            Class.forName("com.mysql.jdbc.Driver");
             con =DriverManager.getConnection 
             ("jdbc:mysql://localhost:3306/register","arpan","12345");
             stmt = con.prepareStatement("select * from Users where username = ? and password = ?");
             stmt.setString(1, username);
             stmt.setString(2, password);
             rs = stmt.executeQuery();
             String id = null;

             if(rs.next()){
                   id= rs.getString(1);

             }else{
                     errorMsgs.add("Invalid username or password");
                     //return;
             }
           //Send the ErrorPage view if there were errors
             if(!errorMsgs.isEmpty())  {
                           RequestDispatcher view = request.getRequestDispatcher("index.jsp");
                           view.forward(request, response);
                           return;
                   }      


            stmt = con.prepareStatement("select * from Users where username = ?");
            stmt.setString(1, username);
            rs = stmt.executeQuery();
            if(rs.next()) {
            User user = new User();
            user.setID(rs.getInt(1));
            user.setFirstName(rs.getString(2));	  
            user.setSurname(rs.getString(3));
            user.setAge(rs.getInt(4));
            user.setGender(rs.getString(5));
            user.setEmail(rs.getString(6));
            user.setUsername(rs.getString(7));
            user.setPassword(rs.getString(8));
                 
            request.setAttribute("User", user);
            }


           //Send the success view
            RequestDispatcher view = request.getRequestDispatcher("successGreeting.jsp");
            view.forward(request, response);
            return;
        }

       catch (SQLException e) {
        throw new ServletException("Servlet Could not display records.", e);
         } catch (ClassNotFoundException e) {
         throw new ServletException("JDBC Driver not found.", e);
         } finally {
         try {
         if(rs != null) {
         rs.close();
         rs = null;
         }
         if(stmt != null) {
         stmt.close();
         stmt = null;
         }
         if(con != null) {
         con.close();
         con = null;
         }
         } catch (SQLException e) {}
        }
       
    }
  }
    
    

    


