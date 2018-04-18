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
			User u = UserDao.getInstance().getUser(request.getParameter("email"), request.getParameter("pass"));
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
		}
	}

}