package controller;

import java.io.IOException;
import java.sql.Date;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Gender;
import model.User;
import model.dao.GenderDao;
//import model.dao.ProductDao;
import model.dao.UserDao;
import util.HashPassword;
import util.exceptions.UserDataException;

@WebServlet("/register")
public class RegisterServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			System.out.println("trying to register");
			String email = request.getParameter("email");
			String firstName = request.getParameter("firstName");
			String lastName = request.getParameter("lastName");
			String pass1 = request.getParameter("pass1");
			String pass2 = request.getParameter("pass2");
			
			//date format not sure if needed but just in case
			Date time = new java.sql.Date(new SimpleDateFormat("yyyy-MM-dd").parse(request.getParameter("date")).getTime());
			
			
			//gender integer
			Integer gender = Integer.parseInt(request.getParameter("gender"));
			
			//validate data
			/*if(username.isEmpty() || username.length() < 5) {
				throw new UserDataException("username must be at least 5 chars long");
			}
			*/
			if(!pass1.equals(pass2)) {
				throw new UserDataException("passwords missmatch");
			}
			System.out.println("yes");
			//TODO the rest as well
			//hash the password
			pass1= HashPassword.getInstance().hashPassword(pass1);
			//create user
			User u = new User(email,firstName,lastName, pass1, gender, time,false);
			//add to db
			UserDao.getInstance().saveUser(u);
			request.getSession().setAttribute("user", u);
			//getServletConfig().getServletContext().setAttribute("products", ProductDao.getInstance().getAll());
			//forward to login OR main
			//request.getRequestDispatcher("WEB-INF/jsp/main.jsp").forward(request, response);
			request.getRequestDispatcher("login.jsp").forward(request, response);
		}
		catch (UserDataException e) {
			request.setAttribute("exception", e);
			request.getRequestDispatcher("error.jsp").forward(request, response);
		}
		catch (Exception e) {
			request.setAttribute("exception", e);
			request.getRequestDispatcher("error.jsp").forward(request, response);
		}
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			//get genders from db
			List<Gender> genders = GenderDao.getInstance().getAll();
			//add them to request
			request.setAttribute("genders", genders);
			//forward this request to register.jsp
			request.getRequestDispatcher("register.jsp").forward(request, response);
		} catch (SQLException e) {
			request.setAttribute("exception", e);
			request.getRequestDispatcher("error.jsp").forward(request, response);
		}
	}

}
