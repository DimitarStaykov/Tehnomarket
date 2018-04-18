<%@page import="model.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Welcome</title>
	</head>
	<% User user = (User) session.getAttribute("user");  %>
	<body>
		<h1>Welcome</h1>
		<% if(user != null) {%>
		Hello <%= user.getFirstName()+" "+user.getLastName() %>
		<a href="login">Click here to logout</a>
		<%} else {%>
		<a href="login">Click here to login</a>
		<%} %>
	</body>
</html>