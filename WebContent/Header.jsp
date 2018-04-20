<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
 	 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<style>
		
		.dropdown-submenu {
		    position: relative;
		}
		
		.dropdown-submenu .dropdown-menu {
		    top: 0;
		    left: 100%;
		    margin-top: -1px;
		}
	</style>
</head>
<body>

	<div class="banner">
		<img src="https://i.imgur.com/7tnAVEG.png" alternative="banner">
	</div>


	<div class="search">
		<form action="search" method="get">
			<input type="text" requred> <input type="submit"
				value="Search">

		</form>
	</div>


		<div class="container">
		  <h2>Multi-Level Dropdowns</h2>
		  <p>In this example, we have created a .dropdown-submenu class for multi-level dropdowns (see style section above).</p>
		  <p>Note that we have added jQuery to open the multi-level dropdown on click (see script section below).</p>                                        
		  <div class="dropdown">
		    <button class="btn btn-default dropdown-toggle" type="button" data-toggle="dropdown">Tutorials
		    <span class="caret"></span></button>
		    <ul class="dropdown-menu">
		      <li><a tabindex="-1" href="#">HTML</a></li>
		      <li><a tabindex="-1" href="#">CSS</a></li>
		      <li class="dropdown-submenu">
		        <a class="test" tabindex="-1" href="#">New dropdown <span class="caret"></span></a>
		        <ul class="dropdown-menu">
		          <li><a tabindex="-1" href="#">2nd level dropdown</a></li>
		          <li><a tabindex="-1" href="#">2nd level dropdown</a></li>
		          <li class="dropdown-submenu">
		            <a class="test" href="#">Another dropdown <span class="caret"></span></a>
		            <ul class="dropdown-menu">
		              <li><a href="#">3rd level dropdown</a></li>
		              <li><a href="#">3rd level dropdown</a></li>
		            </ul>
		          </li>
		        </ul>
		      </li>
		    </ul>
		  </div>
		</div>



			<script>
				$(document).ready(function(){
				  $('.dropdown-submenu a.test').on("click", function(e){
				    $(this).next('ul').toggle();
				    e.stopPropagation();
				    e.preventDefault();
				  });
				});
			</script>
</body>
</html>