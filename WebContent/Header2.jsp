<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title></title>
		<style>
		div {background-color: rgb(33,33,33);}
		div a {
		    text-decoration: none;
		    color: white;
		    font-size: 20px;
		    padding: 15px;
		    display:inline-block;
		}
		
		banner{
			display:inline-block;
		}
		
		search {
			display:inline-block;
		}
		
		ul {
		  display: inline;
		  margin: 0;
		  padding: 0;
		}
		ul li {display: inline-block;}
		ul li:hover {background: gray;}
		ul li:hover ul {display: block;}
		ul li ul {
		  position: absolute;
		  width: 200px;
		  display: none;
		}
		ul li ul li { 
		  background: black; 
		  display: block; 
		}
		ul li ul li a {display:block !important;} 
		ul li ul li:hover {background: #666;}
		
		
	</style>
</head>
	<body>
		
		
		
		<div id="banner">
			<img src="https://i.imgur.com/7tnAVEG.png" alternative="banner">
		</div>


		<div id="search">
			<form action="search" method="get">
				<input type="text" name="search" requred> 
				<input type="submit" value="Search">
	
			</form>
		</div>

		<div >
		
		  <ul>
		    <li>
		      <a href="#">ТЕЛЕВИЗОРИ И АУДИО</a>
		      <ul>
		        <li><a href="#">Телевизори</a></li>
		        <li><a href="#">ТВ аксесоари</a></li>
		        <li><a href="#">Домашно кино</a></li>
		        <li><a href="#">DVD плейъри</a></li>
		        <li><a href="#">Аудио системи</a></li>
		        <li><a href="#">Аудио аксесоари</a></li>
		        <li><a href="#">Персонално аудио</a></li>
		        <li><a href="#">Авто и GPS</a></li>
		        <li><a href="#">Батерии и зарядни</a></li>
		      </ul>
		    </li>
		  </ul>
		  
		  <ul>
		    <li>
		      <a href="#">КОМПЮТРИ И ПЕРИФЕРИЯ</a>
		      <ul>
		       <li><a href="#">Лаптопи</a></li>
		        <li><a href="#">Аксесоари за Лаптоп</a></li>
		        <li><a href="#">Компютри</a></li>
		        <li><a href="#">Монитори</a></li>
		        <li><a href="#">Периферни Устройства</a></li>
		        <li><a href="#">Принтери и Скенери</a></li>
		        <li><a href="#">Консумативи за Принтери</a></li>
		        <li><a href="#">HDD & USB Flash</a></li>
		        <li><a href="#">Проектори</a></li>
		        <li><a href="#">Софтуер</a></li>
		        <li><a href="#">Калкулатори</a></li>
		      </ul>
		    </li>
		  </ul>
		  
		  <ul>
		    <li>
		      <a href="#">ТЕЛЕФОНИ И ТАБЛЕТИ</a>
		      <ul>
		        <li><a href="#">Мобилни Телефони</a></li>
		        <li><a href="#">"Умни" часовници и гривни</a></li>
		        <li><a href="#">Аксесоари за мобилни телефони</a></li>
		        <li><a href="#">Таблети</a></li>
		        <li><a href="#">Аксесоари за Таблети</a></li>
		        <li><a href="#">E-book</a></li>
		        <li><a href="#">Стационарни телефони и Факс апарати</a></li>
		        <li><a href="#">Smart home</a></li>
		        <li><a href="#">Уоки Токи</a></li>
		        
		      </ul>
		    </li>
		  </ul>
		  
		  
		  <ul>
		    <li>
		      <a href="#">ЕЛЕКТРОУРЕДИ</a>
		      <ul>
		        <li><a href="#">Климатици</a></li>
		        <li><a href="#">Уреди за вграждане</a></li>
		        <li><a href="#">Хладилници и фризери</a></li>
		        <li><a href="#">Сушилни машини</a></li>
		        <li><a href="#">Перални машини</a></li>
		        <li><a href="#">Перални със Сушилня</a></li>
		        <li><a href="#">Миялни машини</a></li>
		        <li><a href="#">Микровълнови фурни</a></li>
		        <li><a href="#">Готварски печки</a></li>
		        <li><a href="#">Бойлери</a></li>
		        <li><a href="#">Абсорбатори</a></li>
		        <li><a href="#">Аксесоари</a></li>
		        <li><a href="#">Автомат за вода</a></li>
		        
		      </ul>
		    </li>
		  </ul>
		  
		  <ul>
		    <li>
		      <a href="#">ФОТО И ВИДЕО</a>
		      <ul>
		        <li><a href="#">Фотоапарати</a></li>
		        <li><a href="#">Камери</a></li>
		        <li><a href="#">Фото рамки</a></li>
		        <li><a href="#">Карти памет</a></li>
		        <li><a href="#">Аксесоари за Фото и Видео</a></li>
		      </ul>
		    </li>
		  </ul>
		  
		  <ul>
		    <li>
		      <a href="#">МАЛКИ ЕЛЕТРОУРЕДИ</a>
		      <ul>
		        <li><a href="#">Уреди за кухнята</a></li>
		        <li><a href="#">Здраве и красота</a></li>
		        <li><a href="#">Уреди за дома</a></li>
		        <li><a href="#">Продукти за бебе</a></li>
		        <li><a href="#">Енергоспестяващи крушки</a></li>
		        <li><a href="#">Аксесоари</a></li>
		      </ul>
		    </li>
		  </ul>
		  
		</div>
		
		<div>
			<img src="https://i.imgur.com/CPdEDMx.jpg" alternative="pointless filler image">
		</div>

	</body>
</html>