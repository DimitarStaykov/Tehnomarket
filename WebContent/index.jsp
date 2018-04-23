<%@page import="java.util.ArrayList"%>
<%@page import="model.Product"%>
<%@page import="model.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Welcome</title>
	</head>
	<% User user = (User) session.getAttribute("user");
	   ArrayList<Product> products = (ArrayList<Product>)request.getAttribute("products");
	   ArrayList<Product> cart = (ArrayList<Product>)session.getAttribute("cart");
	   %>
	<body>
		<h1>Welcome</h1>
		
		<div class="search">
		<form action="search" method="get">
			<input type="text" name="search" required>	 
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
		
		<%if(request.getAttribute("error")!=null){ %>
		<%= request.getAttribute("error") %>
		<%} %>
		<br><br>
		
		<%if(products!= null){
		for(Product p: products){ %>
			<a href="product?id=<%=p.getId()%>">
				Id:<%=p.getId() %><br>
				Name:<%=p.getName() %><br>
				Brand:<%=p.getBrand() %><br>
				Price:<%=p.getPrice() %><br>
			</a>
			<br>
				
		<%}
		}%>
	</body>
</html>