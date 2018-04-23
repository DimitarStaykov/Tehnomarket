<%@page import="model.Product"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>

	<% User user = (User) session.getAttribute("user");
	Product product = (Product) request.getAttribute("product");
	 ArrayList<Product> cart = (ArrayList<Product>)session.getAttribute("cart");
	  %>
	   
<body>

	<h1>Welcome</h1>
		
	<div class="search">
		<form action="search" method="get">
			<input type="text" name="search" requred> 
			<input type="submit" value="Search">
		</form>
	</div>
	
	
	<a href="#">
		Cart:
		<% if(cart == null){ %>
		 0
		<% }else{
		cart.size();
		}%>
	</a>
	<br>
	<% if(user != null) {%>
	Hello <%= user.getFirstName()+" "+user.getLastName() %>
	<a href="login">Click here to logout</a>
	<%} else {%>
	<a href="login">Click here to login</a>
	<%} %>
	
	<div style="height: 300px;width: 400px;">
		<div align="left">
			<br>
				Name:<%=product.getName() %><br>
				Brand:<%=product.getBrand() %><br>
				
		</div>
		
		<div align="right" style="font-size: 40px;">
			Price:<%=product.getPrice() %><br>
			<form action="cart" method="get">
				<button name ="basket" type="submit" value="<%= product.getId() %>">Add to Basket</button>
			</form>
		</div>
	
</body>
</html>