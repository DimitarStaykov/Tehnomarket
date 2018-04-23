package controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.User;
import model.dao.UserDao;
import util.HashPassword;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		if(request.getSession().getAttribute("user") == null) {
		request.getRequestDispatcher("login.jsp").forward(request, response);
		}else {
			request.getSession().invalidate();
			request.getRequestDispatcher("index.jsp").forward(request, response);
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		try {
			String pass = request.getParameter("pass");
			String email = request.getParameter("email"); 
			String hashpass = UserDao.getInstance().getHashPass(email);
			User u = null;
			if(HashPassword.checkPassword(pass, hashpass)) {
				u = UserDao.getInstance().getUser(email,hashpass);
			}
			if(u != null) {
				request.getSession().setAttribute("user", u);
				request.getRequestDispatcher("index.jsp").forward(request, response);
			}
			else {
				request.setAttribute("error","Incorrect Login");
				request.getRequestDispatcher("login.jsp").forward(request, response);
			}

			
		} catch (SQLException e) {
			System.out.println(e.getMessage());
			System.out.println("Failed to connect to db");
			request.setAttribute("error"," System error");
			request.getRequestDispatcher("login.jsp").forward(request, response);
		} catch(IllegalArgumentException e) {
			System.out.println(e.getMessage());
			request.setAttribute("error",e.getMessage());
			request.getRequestDispatcher("login.jsp").forward(request, response);
		}
	}

}
