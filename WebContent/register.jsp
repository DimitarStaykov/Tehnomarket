<%@page import="model.Gender"%>
<%@page import="java.util.List"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Register</title>
	</head>
	
	<body>
		<h1>Register</h1>
		<form action="register" action="post" >
			email<input type="text" name="email" required><br>
			First name<input type="text" name="firstName" required><br>
			Last name<input type="text" name="lastName" required><br>
			Password<input type="password" name="pass1" required><br>
			Confirm Password<input type="password" name="pass2" required><br>
			Date of Birth <input type="date" name="date" required><br>
			Gender<select style="width: 132px" name="gender" required>
								<% 
								List<Gender> genders = (List<Gender>) request.getAttribute("genders");
								for(Gender g : genders){ 
								%>
									<option value="<%= g.getId()%>"><%= g.getName()%></option>
								<%} %>
							</select>
		<input type="submit" value="Register"><br>
				Already have an account? <a href="index.jsp">Login here</a>
		
		</form>
	</body>
</html>