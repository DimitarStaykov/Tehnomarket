<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Insert title here</title>
	</head>
	<body>
		<h1>Something went wrong!</h1>
		<% Exception e = (Exception) request.getAttribute("exception"); 
		if(e != null){%>
		<h2>Reason: <%= e.getMessage() %></h2>
		<%} %>
		<a href="index.jsp">Return to main page</a>
	</body>
</html>