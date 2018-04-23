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
			<input type="text" name="search" requred> 
			<input type="submit" value="Search">

		</form>
	</div>


		<div class="container">                                      
		  <div class="dropdown">
		    <button class="btn btn-default dropdown-toggle" type="button" data-toggle="dropdown">ТЕЛЕВИЗОРИ И АУДИО
		    <span class="caret"></span></button>
		    <ul class="dropdown-menu">
		    
		      <li class="dropdown-submenu">
		        <a class="test" tabindex="-1" href="#">Телевизори<span class="caret"></span></a>
		        <ul class="dropdown-menu"> 
		              <li><a  tabindex="-1" href="#">LG</a></li>
		              <li><a  tabindex="-1" href="#">NEO</a></li>
		              <li><a tabindex="-1" href="#">PHILIPS</a></li>
		              <li><a tabindex="-1" href="#">SAMSUNG</a></li>
		              <li><a tabindex="-1" href="#">SKYWORTH</a></li>
		              <li><a tabindex="-1" href="#">SONY</a></li>
		              <li><a tabindex="-1" href="#">STRONG</a></li>
		              <li><a tabindex="-1" href="#">TOSHIBA</a></li>
		        </ul>
		      </li>
		      
		      <li class="dropdown-submenu">
		        <a class="test" tabindex="-1" href="#">ТВ Аксесоари<span class="caret"></span></a>
		        <ul class="dropdown-menu"> 
		              <li><a  tabindex="-1" href="#">Аксесоари за телевизори</a></li>
		              <li><a  tabindex="-1" href="#">Антени</a></li>
		              <li><a tabindex="-1" href="#">Цифрови Тунери</a></li>
		              <li><a tabindex="-1" href="#">Стойки за стена</a></li>
		              <li><a tabindex="-1" href="#">Дистанционни управления</a></li>
		              <li><a tabindex="-1" href="#">Мултимедиини плеъри</a></li>
		              <li><a tabindex="-1" href="#">Видео кабели</a></li>
		        </ul>
		      </li>
		      
		      <li><a tabindex="-1" href="#">Домашно кино</a></li>
		      <li><a tabindex="-1" href="#">DVD плейъри</a></li>
		      
		      <li class="dropdown-submenu">
		        <a class="test" tabindex="-1" href="#">Аудио Системи<span class="caret"></span></a>
		        <ul class="dropdown-menu"> 
		              <li><a  tabindex="-1" href="#">Мини Системи</a></li>
		              <li><a  tabindex="-1" href="#">Ресивъри</a></li>
		              <li><a tabindex="-1" href="#">Тонколони</a></li>
		              <li><a tabindex="-1" href="#">Портативни тонколони</a></li>
		              
		        </ul>
		      </li>
		      
		      <li class="dropdown-submenu">
		        <a class="test" tabindex="-1" href="#">Аудио Аксесоари<span class="caret"></span></a>
		        <ul class="dropdown-menu"> 
		              <li><a  tabindex="-1" href="#">Микрофони</a></li>
		              <li><a  tabindex="-1" href="#">Слушалки</a></li>
		              <li><a tabindex="-1" href="#">Аудио Кабели</a></li>
		              
		        </ul>
		      </li>
		      
		      <li class="dropdown-submenu">
		        <a class="test" tabindex="-1" href="#">Персонално аудио<span class="caret"></span></a>
		        <ul class="dropdown-menu"> 
		              <li><a  tabindex="-1" href="#">МР3 Плейъри</a></li>
		              <li><a  tabindex="-1" href="#">Радиокасетофон с CD</a></li>
		              <li><a tabindex="-1" href="#">Радиочасовници</a></li>
		              <li><a tabindex="-1" href="#">Диктофони</a></li>
		        </ul>
		      </li>
		      
		      
		       <li class="dropdown-submenu">
		        <a class="test" tabindex="-1" href="#">АВТО и GPS<span class="caret"></span></a>
		        <ul class="dropdown-menu"> 
		              <li><a  tabindex="-1" href="#">Усилватели</a></li>
		              <li><a  tabindex="-1" href="#">CD плейъри</a></li>
		              <li><a tabindex="-1" href="#">Тонколони и суббуфери</a></li>
		              <li><a tabindex="-1" href="#">GPS приемници</a></li>
		        </ul>
		      </li>
		      
		      <li class="dropdown-submenu">
		        <a class="test" tabindex="-1" href="#">Батерии и зарядни<span class="caret"></span></a>
		        <ul class="dropdown-menu"> 
		              <li><a  tabindex="-1" href="#">Фенери</a></li>
		              <li><a  tabindex="-1" href="#">Зарядни</a></li>
		              <li><a tabindex="-1" href="#">Тонколони и суббуфери</a></li>
		              <li><a tabindex="-1" href="#">GPS приемници</a></li>
		        </ul>
		      </li>
		      
		      
		    </ul>
		  </div>
		</div>


		<div class="container">
                                    
  <div class="dropdown">
  
	    <button class="btn btn-default dropdown-toggle" type="button" data-toggle="dropdown">Компютри и периферия
	    <span class="caret"></span></button>
	    <ul class="dropdown-menu">
	    
	      <li class="dropdown-submenu">
	        <a class="test" tabindex="-1" href="#">Лаптопи<span class="caret"></span></a>
	        <ul class="dropdown-menu">	
	          <li><a tabindex="-1" href="#">Всички лаптопи</a></li>
	          <li><a tabindex="-1" href="#">Acer</a></li>
	          <li><a tabindex="-1" href="#">Asus</a></li> 
	          <li><a tabindex="-1" href="#">Dell</a></li> 
	          <li><a tabindex="-1" href="#">Hp</a></li> 
	          <li><a tabindex="-1" href="#">Lenovo</a></li>
	          <li><a tabindex="-1" href="#">MSI</a></li> 
	          <li><a tabindex="-1" href="#">Toshiba</a></li>   
	        </ul>
	      </li>
	      
	      
	      <li class="dropdown-submenu">
	        <a class="test" tabindex="-1" href="#">Аксесоари Лаптопи<span class="caret"></span></a>
	        <ul class="dropdown-menu">	
	          <li><a tabindex="-1" href="#">Чанти за лаптопи</a></li>
	          <li><a tabindex="-1" href="#">Охладители за лаптопи</a></li>
	          <li><a tabindex="-1" href="#">Лаптопи аксесоари</a></li> 
	          <li><a tabindex="-1" href="#">Компютърни кабели</a></li>   
	        </ul>
	      </li>
	      
	      <li><a tabindex="-1" href="#">Компютри</a></li>
	      <li><a tabindex="-1" href="#">Монитори</a></li>
	      
	      <li class="dropdown-submenu">
	        <a class="test" tabindex="-1" href="#">Аксесоари Лаптопи<span class="caret"></span></a>
	        <ul class="dropdown-menu">	
	          <li><a tabindex="-1" href="#">Чанти за лаптопи</a></li>
	          <li><a tabindex="-1" href="#">Охладители за лаптопи</a></li>
	          <li><a tabindex="-1" href="#">Лаптопи аксесоари</a></li> 
	          <li><a tabindex="-1" href="#">Компютърни кабели</a></li>   
	        </ul>
	      </li>
	      
	      <li class="dropdown-submenu">
	        <a class="test" tabindex="-1" href="#">Периферни устройства<span class="caret"></span></a>
	        <ul class="dropdown-menu">	
	          <li><a tabindex="-1" href="#">Разклонители</a></li>
	          <li><a tabindex="-1" href="#">РС слушалки</a></li>
	          <li><a tabindex="-1" href="#">Оптични устройства</a></li> 
	          <li><a tabindex="-1" href="#">Рутери</a></li>
	          <li><a tabindex="-1" href="#">WEB камери</a></li>
	          <li><a tabindex="-1" href="#">РС колонки</a></li>
	          <li><a tabindex="-1" href="#">Клавиатури</a></li> 
	          <li><a tabindex="-1" href="#">Суич</a></li>   
	        </ul>
	      </li>
	      
	      
	      <li class="dropdown-submenu">
	        <a class="test" tabindex="-1" href="#">Принтери и скенери<span class="caret"></span></a>
	        <ul class="dropdown-menu">	
	          <li><a tabindex="-1" href="#">Мастилноструйни принтери</a></li>
	          <li><a tabindex="-1" href="#">Лазерни принтери</a></li>
	          <li><a tabindex="-1" href="#">Мастилноструйни МФП</a></li> 
	          <li><a tabindex="-1" href="#">Лазерни мултифинкционални устройства</a></li>
	          <li><a tabindex="-1" href="#">Скенери</a></li>   
	        </ul>
	      </li>
	      
	      <li class="dropdown-submenu">
	        <a class="test" tabindex="-1" href="#">Консумативи за принтери<span class="caret"></span></a>
	        <ul class="dropdown-menu">	
	          <li><a tabindex="-1" href="#">Консумативи Мастиленоструйни Принтери</a></li>
	          <li><a tabindex="-1" href="#">Тонер за касети</a></li>   
	        </ul>
	      </li>
	      
	      <li class="dropdown-submenu">
	        <a class="test" tabindex="-1" href="#">HDD & USB Flash<span class="caret"></span></a>
	        <ul class="dropdown-menu">	
	          <li><a tabindex="-1" href="#">USB Flas</a></li>
	          <li><a tabindex="-1" href="#">Външни HD & SSD</a></li>
	          <li><a tabindex="-1" href="#">Дискове</a></li> 
	          <li><a tabindex="-1" href="#">Четци за карти & USB hub</a></li>   
	        </ul>
	      </li>
	      
	      <li><a tabindex="-1" href="#">Проектори</a></li>
	      <li><a tabindex="-1" href="#">Софтуер</a></li>
	      <li><a tabindex="-1" href="#">Калкулатори</a></li>
	      
	      
	      
	      
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
