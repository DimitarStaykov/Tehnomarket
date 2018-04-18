<%@page import="model.Gender"%>
<%@page import="java.util.List"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<title>Register</title>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">	
	<!--===============================================================================================-->
		<link rel="stylesheet" type="text/css" href="login/font-awesome-4.7.0/css/font-awesome.min.css">
	<!--===============================================================================================-->
		<link rel="stylesheet" type="text/css" href="login/animate.css">
	<!--===============================================================================================-->
		<link rel="stylesheet" type="text/css" href="login/util.css">
	<!--===============================================================================================-->
		<link rel="stylesheet" type="text/css" href="login/main.css">
	<!--===============================================================================================-->
		<link rel="stylesheet" type="text/css" href="login/daterangepicker/daterangepicker.css">
	<!--===============================================================================================-->
	
	</head>
	<body>
		
		<div class="limiter">
			<div class="container-login100">
				<div class="wrap-login100 p-t-50 p-b-90">
					<form class="login100-form validate-form flex-sb flex-w" action="register" method="post">
						<span class="login100-form-title p-b-51">
							Register
						</span>
						
						<div class="wrap-input100 validate-input m-b-16" data-validate = "Email is required">
							<input class="input100" type="email" name="email" placeholder="Email">
							<span class="focus-input100"></span>
						</div>
						
						<div class="wrap-input100 validate-input m-b-16" data-validate = "First Name is required">
							<input class="input100" type="text" name="firstName" placeholder="First Name">
							<span class="focus-input100"></span>
						</div>
						
						<div class="wrap-input100 validate-input m-b-16" data-validate = "Last Name is required">
							<input class="input100" type="text" name="lastName" placeholder="Last Name">
							<span class="focus-input100"></span>
						</div>
						
						<div class="wrap-input100 validate-input m-b-16" data-validate = "Password is required">
							<input class="input100" type="password" name="pass1" placeholder="Password">
							<span class="focus-input100"></span>
						</div>
						
						<div class="wrap-input100 validate-input m-b-16" data-validate = "Password is required">
							<input class="input100" type="password" name="pass2" placeholder="Confirm Password">
							<span class="focus-input100"></span>
						</div>
						
						<div>
							Date of Birth <input type="date" name="date" required>
						</div>
	
						<div>
							Gender<select style="width: 132px" name="gender" required>
								<% 
								List<Gender> genders = (List<Gender>) request.getAttribute("genders");
								for(Gender g : genders){ 
								%>
									<option value="<%= g.getId()%>"><%= g.getName()%></option>
								<%} %>
							</select>
						</div>
						
						<div class="flex-sb-m w-full p-t-3 p-b-24">	
							<div>
							<a href="login" class="txt1">
								Already have an account? Click here
							</a>
						</div>
						</div>
	
						<div class="container-login100-form-btn m-t-17">
							<button class="login100-form-btn">
								Register
							</button>
						</div>
	
					</form>
				</div>
			</div>
		</div>
		
	
		<div id="dropDownSelect1"></div>
		
	<!--===============================================================================================-->
		<script src="login/jquery/jquery-3.2.1.min.js"></script>
	<!--===============================================================================================-->
		<script src="login/daterangepicker/daterangepicker.js"></script>
		<script src="login/daterangepicker/moment.js"></script>
	<!--===============================================================================================-->
		<script src="login/js/main.js"></script>
	
</body>
</html>
