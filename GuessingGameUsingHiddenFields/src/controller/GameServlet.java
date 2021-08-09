/*
 * File: GameServlet.java
 * Name: Arpan Singha
 * Roll No. 727
 * Registration Number: A01-1112-117-023-2018
 * Semester: V
 */
package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.GameNumber;
/**
 * Servlet implementation class GameServlet
 */
@WebServlet(
		description = "Use to control Guessing Game", 
		urlPatterns = { 
				"/GameServlet", 
				"/doGuess"
		})
public class GameServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GameServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//get input -target, guess,number of guesses,minimum and maximum
		GameNumber guess = new GameNumber(Integer.parseInt(request.getParameter("guess")));
		GameNumber target = new GameNumber(Integer.parseInt(request.getParameter("target")));
		GameNumber guesses = new GameNumber(Integer.parseInt(request.getParameter("guesses")));
		//GameNumber minimum = new GameNumber(Integer.parseInt(request.getParameter("minimum")));
		//GameNumber maximum = new GameNumber(Integer.parseInt(request.getParameter("maximum")));
		
		//initialize output
		String msg="";
		String url ="/guess.jsp";
		
		//compare the guess with the target
		if(guess.getValue() == target.getValue()) {
			//Winner
			msg ="Correct! You got it in "+guesses.getValue()+" guesses.";
			url="/correct.jsp";
		}
		else {
			guesses.increment();
			if(guess.getValue() < target.getValue()) {
				//Too low
				msg = "Incorrect guess! Guess Higher next time";
			}
			else {
				//Too high
				msg = "Incorrect guess! Guess Lower next time";
			}
		}
		//add values to request object to pass to destination
		request.setAttribute("msg",msg);
		request.setAttribute("guesses", guesses);
		
		//send control to the next component
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
	}

}
