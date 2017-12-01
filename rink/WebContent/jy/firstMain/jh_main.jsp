<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>
video {
	position: absolute;
	top: -145px;
	left: 0px;
	min-width: 100%;
	min-height: 90%;
	z-index: -1;
	overflow: hidden;
	volume: 15%;
	z-index: -1;
}

.popup {
	font-size: 31px;
	font-weight: bold;
}

#sexFont {
	font-size: 31px;
	font-weight: bold;
}

#checkId {
	padding: 0;
	font-family: 'a������';
}

article {
	margin: 0;
}

#art_pic {
	padding: 0 5em 1em 6em;
	margin: 0;
}

#art_pic img {
	width: 70px;
	height: 70px;
}

.carousel {
	background-color: white;
	font-family: 'a���߳���';
}

.reel {
	margin-bottom: 90px;
}

/*
#backImg{
	background-image: url("../baby_picture/sunflower4.jpg");
	background-size: cover;

}
*/
#mainfont, #nav {
	font-family: 'a���߳���';
	font-size: 116px;
	font-weight: bold;
}

#LoginForm {
	font-family: '210 ������';
}

#banner {
	padding-top: 0;
}

video {
	opacity: 0.7;
}

#logo {
	-moz-text-stroke: 5px #000;
	-webkit-text-stroke: 5px #000;
}

#JoinButton {
	width: 100px;
	height: 30px;
	text-align: center;
}

.popup {
	font-family: '210 ������';
	color: black;
	font-size: 26px;
}

#JoinPage {
	color: black;
	font-family: '210 ������';
	font-size: 10px;
}

.panel {
	background-color: #444;
	height: 34px;
	padding: 10px;
}

.panel a#login_pop, .panel a#join_pop {
	border: 2px solid #aaa;
	color: #fff;
	display: block;
	float: left;
	margin-left: 10px;
	padding: 5px 10px;
	text-decoration: none;
	text-shadow: 1px 1px #000;
	-webkit-border-radius: 10px;
	-moz-border-radius: 10px;
	-ms-border-radius: 10px;
	-o-border-radius: 10px;
	border-radius: 10px;
	font-family: 'dotum';
	text-decoration: none;
}

a#login_pop:hover, a#join_pop:hover {
	border-color: #eee;
}

.overlay {
	background-color: rgba(0, 0, 0, 0.6);
	bottom: 0;
	cursor: default;
	left: 0;
	opacity: 0;
	position: fixed;
	right: 0;
	top: 0;
	visibility: hidden;
	z-index: 1;
	-webkit-transition: opacity .5s;
	-moz-transition: opacity .5s;
	-ms-transition: opacity .5s;
	-o-transition: opacity .5s;
	transition: opacity .5s;
}

.overlay:target {
	visibility: visible;
	opacity: 1;
}

.popup {
	width: 35%;
	height: 55%;
	background-image: url("../baby_picture/heartTree.png");
	background-repeat: no-repeat;
	background-size: cover;
	border: 3px solid #fff;
	display: inline;
	left: 50%;
	opacity: 0;
	padding: 15px;
	position: fixed;
	text-align: justify;
	top: 40%;
	visibility: hidden;
	z-index: 10;
	-webkit-transform: translate(-50%, -50%);
	-moz-transform: translate(-50%, -50%);
	-ms-transform: translate(-50%, -50%);
	-o-transform: translate(-50%, -50%);
	transform: translate(-50%, -50%);
	-webkit-border-radius: 10px;
	-moz-border-radius: 10px;
	-ms-border-radius: 10px;
	-o-border-radius: 10px;
	border-radius: 10px;
	-webkit-box-shadow: 0 1px 1px 2px rgba(0, 0, 0, 0.4) inset;
	-moz-box-shadow: 0 1px 1px 2px rgba(0, 0, 0, 0.4) inset;
	-ms-box-shadow: 0 1px 1px 2px rgba(0, 0, 0, 0.4) inset;
	-o-box-shadow: 0 1px 1px 2px rgba(0, 0, 0, 0.4) inset;
	box-shadow: 0 1px 1px 2px rgba(0, 0, 0, 0.4) inset;
	-webkit-transition: opacity .5s, top .5s;
	-moz-transition: opacity .5s, top .5s;
	-ms-transition: opacity .5s, top .5s;
	-o-transition: opacity .5s, top .5s;
	transition: opacity .5s, top .5s;
	border: 3px solid #fff;
}

.overlay:target+.popup {
	top: 50%;
	opacity: 1;
	visibility: visible;
}

.close {
	background-color: rgba(0, 0, 0, 0.8);
	height: 30px;
	line-height: 30px;
	position: absolute;
	right: 0;
	text-align: center;
	text-decoration: none;
	top: -15px;
	width: 30px;
	-webkit-border-radius: 15px;
	-moz-border-radius: 15px;
	-ms-border-radius: 15px;
	-o-border-radius: 15px;
	border-radius: 15px;
}

.close:before {
	color: rgba(255, 255, 255, 0.9);
	content: "X";
	font-size: 24px;
	text-shadow: 0 -1px rgba(0, 0, 0, 0.9);
}

.close:hover {
	background-color: rgba(64, 128, 128, 0.8);
}

.popup p, .popup div {
	margin-bottom: 10px;
}

.popup label {
	display: inline-block;
	text-align: left;
	width: 118px;
}

.popup input[type="text"], .popup input[type="password"] {
	border: 1px solid;
	border-color: #999 #ccc #ccc;
	margin: 0;
	padding: 2px;
	-webkit-border-radius: 2px;
	-moz-border-radius: 2px;
	-ms-border-radius: 2px;
	-o-border-radius: 2px;
	border-radius: 2px;
}

.popup input[type="text"]:hover, .popup input[type="password"]:hover {
	border-color: #555 #888 #888;
}
</style>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
<link rel="stylesheet" href="assets/css/main.css" />
<script type="text/javascript" src="http://www.google.com/jsapi"></script>
<script type="text/javascript">google.load("jquery", "1.7.1");</script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

</head>
<body class="homepage">

	<script>
	 	$('body').css({'overflow': 'hidden'});

	 	function scrollTest(){
	 		$('body').css({'overflow': 'scroll'});
	 	}
	
 		
	</script>
</head>
<body>

	<div id="page-wrapper">
		<!-- Header -->
		<div id="header">
			<video autoplay="autoplay" src="baby.mp4" loop="loop"></video>
			<!-- Inner -->
			<div class="inner">
				<header>
				<h1>
					<div id="mainfont">
						<a href="index.html" id="logo">���̿��� ������</a>
					</div>
				</h1>
				<hr />

				</header>

				<c:choose>
					<c:when test="${empty id}">
						<footer id="LoginForm"> <a href="#login_form"
							id="login_pop" class="button">Login</a>
						&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp <a href="#join_form"
							id="join_pop" class="button">Join</a> </footer>

						<br>
					</c:when>
					<c:otherwise>
						<div style="margin-right: 10%;" >
							<a href="#banner" class="scrolly" onclick="scrollTest()"
								style="color: black; font-weight: bold; font-size: 41px; font-family: 'a���߳���'; "><input id="startBtn" type="button" value= "${Login_name }������ �����ϱ� ����!" style="border-radius: 100%; font-family: 'a���߳���'; font-weight: bold; font-size: 31px; "></a>
						</div>
					</c:otherwise>
				</c:choose>



				<!-- Menu //class="button circled scrolly"���� â �̵�-->
				<!-- Login��ư �κ� �˾�-->
				<form action="../../LoginCheck" method="post">
					<a href="#x" class="overlay" id="login_form"></a>
					<div class="popup" id="popclose"
						style="font-weight: bold; font-size: 19px; width: 36%; height: 60%;">


						<c:choose>
							<c:when test="${empty search_id }">
								<h2>������ �غ�ܰ�!</h2>
							</c:when>

							<c:otherwise>
								<h2>�������� �ؾ������ ����~!</h2>
							</c:otherwise>
						</c:choose>

						<br>
						<p style="font-weight: bold; font-size: 26px;">���̵�� �н����带
							�Է����ּ���!</p>
						<div style="font-weight: bold; font-size: 26px;">

							�� �� �� :<br>

							<c:choose>
								<c:when test="">
									<input type="text" id="login" name="Login_id" placeholder="ID"
										style="width: 30%; font-size: 19px;" />
								</c:when>

								<c:otherwise>

									<input type="text" id="login" name="Login_id"
										value="${search_id }" style="width: 30%; font-size: 19px;" />

								</c:otherwise>

							</c:choose>
						</div>

						<div style="font-weight: bold; font-size: 26px;">
							�� �� �� ȣ :<br>
							<c:choose>
								<c:when test="">
									<input type="password" id="password" name="Login_pw"
										placeholder="password" style="width: 30%;" />
								</c:when>
								<c:otherwise>
									<input type="text" id="password" name="Login_pw"
										value="${search_pw }" style="width: 30%;" />
								</c:otherwise>
							</c:choose>
						</div>
						<a href="#check_form" style="font-size: 26px;">���̵� / ��й�ȣ ã��</a>
						<div style="text-align: center;">


							<input type="submit" value="�� �� ��"
								style="border-radius: 100%; font-family: 'a������'; margin-right: 301px; font-size: 26px;" />
							<a class="close" href="#close"></a>
						</div>
					</div>
				</form>

				<!-- ���̵� ��й�ȣ ã�� �˾� -->
				<form action="../../SearchInfo">
					<a href="#x" class="overlay" id="check_form"></a>
					<div class="popup" id="popclose"
						style="font-weight: bold; font-size: 19px; width: 26%; height: 31%;">
						<h2></h2>
						<br>
						<p style="font-weight: bold; font-size: 26px;">�ڵ��� ��ȣ�� �Է����ּ���!</p>
						<div style="font-weight: bold; font-size: 26px;">
							�ڵ��� ��ȣ :<br> <input type="text" name="searchId_phone"
								placeholder="phone-number" style="width: 30%; font-size: 19px;" />
						</div>
						<input type="submit" value="ã ��" onclick="showAlert()"
							style="border-radius: 100%; font-family: 'a������'; margin-right: 260px" /></a>
					</div>
				</form>

				<script type="text/javascript">
				
					function showAlert(){
						alert("Ȯ�� �غ����䢾")
					}
				</script>


				<!-- Join��ư �κ� �˾�-->
				<form action="../../JoinCheck" method="post">
					<a href="#x" class="overlay" id="join_form"></a>
					<div class="popup"
						style="width: 39%; height: 70%; text-align: left;">
						<h2>ȸ������</h2>
						<p>������ ������ �Է����ּ���!!!</p>
						<div>
							���̵� �Է�: &nbsp<input type="text" id="id" name="id"
								placeholder="����,���� 6~10�� �Է�" required
								style="width: 30%; font-size: 19px;"> <input
								type="button" id="checkId" onclick="idcheck()"
								style="height: 30px; width: 70px;" value="�ߺ�Ȯ��"> <br>
							<span id="result" style="font-weight: bold; color: red;"></span>
						</div>

						<div>
							��й�ȣ �Է�:<input type="password" name="password" id="pass"
								placeholder="��ȣ�� ������!" size="30px"
								style="width: 30%; font-size: 19px;" />
						</div>
						<div id="sexFont">
							�ֱ� �̸� : <input type="text" id="firstname" name="babyName"
								placeholder="���� ����" style="width: 30%; font-size: 19px;" /> �� ��
							: ��<input type="radio" name="gender" value="����">��<input
								type="radio" name="gender" value="����">
						</div>
						<div>
							�ڵ��� ��ȣ : <input type="text" name="phone" id="lastname"
								placeholder="'-'���� �Է����ּ���" style="width: 30%; font-size: 19px;" />
						</div>
						<div>
							�� �� �� :&nbsp&nbsp <input type="text" name="blood" id="lastname"
								placeholder="���ĺ���" size="30px"
								style="width: 30%; font-size: 19px;" />
						</div>
						<div>
							&nbsp&nbspü &nbsp&nbsp��&nbsp&nbsp&nbsp : <input type="text"
								id="lastname" name="weight" placeholder="'kg'���� �Է����ּ���"
								style="width: 30%; font-size: 19px;" />
						</div>
						<div>
							&nbsp&nbsp�� &nbsp&nbsp��&nbsp&nbsp&nbsp : <input type="text"
								id="lastname" name="height" placeholder="'cm'���� �Է����ּ���"
								style="width: 30%; font-size: 19px;" />
						</div>
						<div>
							�¾ ��¥&nbsp:&nbsp&nbsp <input type="date" id="lastname"
								name="birthday" placeholder="'-'���� �Է����ּ���"
								style="height: 30px; font-size: 19px;" />
						</div>
						<div>
							<a href="index.jsp">&nbsp&nbsp&nbsp <input type="submit"
								value="ȸ������" onclick="showJoin()"
								style="border-radius: 100%; font-family: 'a������';"></a>&nbsp
							or &nbsp <a href="#login_form" id="login_pop"><input
								type="reset" value="�ʱ�ȭ"
								style="border-radius: 100%; font-family: 'a������';"></a> <a
								class="close" href="#close"></a>
						</div>
					</div>
				</form>
				<script type="text/javascript">
            
               function showJoin(){
                  
                //  alert("������ ���ϵ帳�ϴ�!");
                  
               }
               
               function idcheck(){
            	   var idStr = $("#id").val();
            	   $.ajax({
            	       url:"../../CheckId?id="+idStr,
            	       success:function(data){
            	          if(data == "success"){
            	             $("#result").text("*** ��밡���� ���̵��Դϴ�.")
            	          }else if(data =="fail"){
            	             $("#result").text("*** �ߺ��� ���̵��Դϴ�.")
            	          }
            	       }
            	      });
            	}
            </script>


			</div>

			<!-- Nav -->
			<nav id="nav"
				style="font-size: 31px !important; margin-top: 1250px; background-color: white;">
			<ul>
				<li><a href="jh_main.jsp"><img src="images/sun.png">Home<img
						src="images/sun.png"></a></li>
				<li><a href="../../ym_SelectService"><img src="images/sun.png">�Ʊ� ��ǰ ����<img
						src="images/sun.png"></a>
					</li>

				<li><a href="../../DiarySelectService"><img src="images/sun.png">������
						�����ϱ�<img src="images/sun.png"></a></li>
				<li><a href="../../SelectService"><img src="images/sun.png">�̾߱� �ؿ�<img
						src="images/sun.png"></a>
					</li>
				<li><a href="../BabyInfo/jy_BabyInfo.jsp"><img
						src="images/sun.png">���� �Ʊ�����<img src="images/sun.png"></a></li>
			</ul>
			</nav>

		</div>

		<!-- Banner -->
		<section>
		<div id="banner"
			style="padding-top: 0px; display: none; position: relative;">
			<header> <img class="mySlides"
				src="../baby_picture/picture_main.jpg" style="position: absolute;">

			<img class="mySlides" src="../baby_picture/picture_main1.jpg"
				style="position: absolute; display: block; width: 2000px; height: 300px">
		</div>
		<div id="banner2"
			style="padding-top: 0px; display: none; position: relative;">
			<img class="mySlides2" src="../baby_picture/picture_main.jpg"
				style="position: absolute;"> <img class="mySlides2"
				src="../baby_picture/picture_main1.jpg"
				style="display: block; width: 2000px; height: 300px">
		</div>
		<script src="//code.jquery.com/jquery.min.js">

		   
		</script> <script>
					
					   var imgs = document.querySelectorAll("img.mySlides");
					   var imgs2 = document.querySelectorAll("img.mySlides2");
					   var banner = document.getElementById("banner");
					   var banner2 = document.getElementById("banner2");
					   var index=0;
					   
					   slide(index);
					   
					   setInterval(() => {
					      index+=1;
					      slide(index);
					      $("#banner").fadeIn(3000);
					      $("#banner").fadeOut(3000);
					   }, 6000);
					   setInterval(() => {
					    
					      $("#banner2").fadeOut(3000);
					      $("#banner2").fadeIn(3000);
					   }, 6000);

					      
					      
					   function slide(num) {
						   

					      //�̹��� �����
					      for (var i = 0; i < imgs.length; i++) {
					         imgs[i].style.display = "none";
					         imgs2[i].style.display = "block";
					         
					      }
					      index += num;
					      
					      if(index < 0){
					         index = imgs.length-1;
					      }else if(index > imgs.length-1){
					         index = 0;
					      }
					      
					      //ù ��° �̹��� ���
					      imgs[index].style.display = "block";
					      imgs2[index].style.display = "none";
					     
					   }	
					   
					  

					   
					   
					</script> </header></section>



		<!-- Carousel -->
		<div id="backImg">
			<section class="carousel">
			<div class="reel">

				<article> <a href="#" class="image featured"></a> <header>
				<h2>
					<a href="../Notice/Notice.jsp">���� ����</a>
				</h2>
				</header>
				<p>����, �, �������� Ȯ���ϴ� ����</p>
				</article>

				<article id="art_pic"> <a href="#" class="image featured"><img
					src="images/sun_icon1.png" alt="" /></a> </article>

				<article> <a href="#" class="image featured"></a> <header>
				<h2>
					<a href="../DaycareCenter/jy_DaycareCenter.jsp">������ �����</a>
				</h2>
				</header>
				<p>�� ������ ����� ���� Top10</p>
				</article>

				<article id="art_pic"> <a href="#" class="image featured"><img
					src="images/sun_icon1.png" alt="" /></a> </article>

				<article> <a href="#" class="image featured"></a> <header>
				
				<h2>
					<a href="../news/news.jsp">���� News</a>
				</h2>
				</header>
				<p>���ƿ� �ʿ��� ����, Hot�� Issue</p>
				</article>

				<article id="art_pic"> <a href="#" class="image featured"><img
					src="images/sun_icon1.png" alt="" /></a> </article>

				<article> <a href="#" class="image featured"></a> <header>
				<h2>
					<a href="../dicrease/dicrease.jsp">���� ��ŷ ����</a>
				</h2>
				</header>
				<p>��*���Ƶ��� �� �ɸ��� ������ �˰� �̸� ��������!</p>
				</article>

				<article id="art_pic"> <a href="#" class="image featured"><img
					src="images/sun_icon1.png" alt="" /></a> </article>

				<article> <a href="#" class="image featured"></a> <header>
				<h2>
					<a href="../vaccination/jy_vaccination.jsp">���� ���� �ڷ�</a>
				</h2>
				</header>
				<p>�� �ñ⿡ �¾ƾ� �ϴ� �������� ����Ʈ</p>
				</article>


				<!--  
		<!-- Main --
		<div class="wrapper style2">

			<article id="main" class="container special">
				<a href="#" class="image featured"><img src="images/pic06.jpg"
					alt="" /></a>
				<header>
					<h2>
						<a href="#">Sed massa imperdiet magnis</a>
					</h2>
					<p>Sociis aenean eu aenean mollis mollis facilisis primis
						ornare penatibus aenean. Cursus ac enim pulvinar curabitur morbi
						convallis. Lectus malesuada sed fermentum dolore amet.</p>
				</header>
				<p>Commodo id natoque malesuada sollicitudin elit suscipit.
					Curae suspendisse mauris posuere accumsan massa posuere lacus
					convallis tellus interdum. Amet nullam fringilla nibh nulla
					convallis ut venenatis purus sit arcu sociis. Nunc fermentum
					adipiscing tempor cursus nascetur adipiscing adipiscing. Primis
					aliquam mus lacinia lobortis phasellus suscipit. Fermentum lobortis
					non tristique ante proin sociis accumsan lobortis. Auctor etiam
					porttitor phasellus tempus cubilia ultrices tempor sagittis. Nisl
					fermentum consequat integer interdum integer purus sapien. Nibh
					eleifend nulla nascetur pharetra commodo mi augue interdum tellus.
					Ornare cursus augue feugiat sodales velit lorem. Semper elementum
					ullamcorper lacinia natoque aenean scelerisque.</p>
				<footer>
					<a href="#" class="button">Continue Reading</a>
				</footer>
			</article>

		</div>

		<!-- Features --
		<div class="wrapper style1">

			<section id="features" class="container special">
				<header>
					<h2>Morbi ullamcorper et varius leo lacus</h2>
					<p>Ipsum volutpat consectetur orci metus consequat imperdiet
						duis integer semper magna.</p>
				</header>
				<div class="row">
					<article class="4u 12u(mobile) special">
						<a href="#" class="image featured"><img src="images/pic07.jpg"
							alt="" /></a>
						<header>
							<h3>
								<a href="#">Gravida aliquam penatibus</a>
							</h3>
						</header>
						<p>Amet nullam fringilla nibh nulla convallis tique ante proin
							sociis accumsan lobortis. Auctor etiam porttitor phasellus tempus
							cubilia ultrices tempor sagittis. Nisl fermentum consequat
							integer interdum.</p>
					</article>
					<article class="4u 12u(mobile) special">
						<a href="#" class="image featured"><img src="images/pic08.jpg"
							alt="" /></a>
						<header>
							<h3>
								<a href="#">Sed quis rhoncus placerat</a>
							</h3>
						</header>
						<p>Amet nullam fringilla nibh nulla convallis tique ante proin
							sociis accumsan lobortis. Auctor etiam porttitor phasellus tempus
							cubilia ultrices tempor sagittis. Nisl fermentum consequat
							integer interdum.</p>
					</article>
					<article class="4u 12u(mobile) special">
						<a href="#" class="image featured"><img src="images/pic09.jpg"
							alt="" /></a>
						<header>
							<h3>
								<a href="#">Magna laoreet et aliquam</a>
							</h3>
						</header>
						<p>Amet nullam fringilla nibh nulla convallis tique ante proin
							sociis accumsan lobortis. Auctor etiam porttitor phasellus tempus
							cubilia ultrices tempor sagittis. Nisl fermentum consequat
							integer interdum.</p>
					</article>
				</div>
			</section>

		</div>

		<!-- Footer --
		<div id="footer">
			<div class="container">
				<div class="row">

					<!-- Tweets --
					<section class="4u 12u(mobile)">
						<header>
							<h2 class="icon fa-twitter circled">
								<span class="label">Tweets</span>
							</h2>
						</header>
						<ul class="divided">
							<li>
								<article class="tweet">
									Amet nullam fringilla nibh nulla convallis tique ante sociis
									accumsan. <span class="timestamp">5 minutes ago</span>
								</article>
							</li>
							<li>
								<article class="tweet">
									Hendrerit rutrum quisque. <span class="timestamp">30
										minutes ago</span>
								</article>
							</li>
							<li>
								<article class="tweet">
									Curabitur donec nulla massa laoreet nibh. Lorem praesent
									montes. <span class="timestamp">3 hours ago</span>
								</article>
							</li>
							<li>
								<article class="tweet">
									Lacus natoque cras rhoncus curae dignissim ultricies. Convallis
									orci aliquet. <span class="timestamp">5 hours ago</span>
								</article>
							</li>
						</ul>
					</section>

					<!-- Posts --
					<section class="4u 12u(mobile)">
						<header>
							<h2 class="icon fa-file circled">
								<span class="label">Posts</span>
							</h2>
						</header>
						<ul class="divided">
							<li>
								<article class="post stub">
									<header>
										<h3>
											<a href="#">Nisl fermentum integer</a>
										</h3>
									</header>
									<span class="timestamp">3 hours ago</span>
								</article>
							</li>
							<li>
								<article class="post stub">
									<header>
										<h3>
											<a href="#">Phasellus portitor lorem</a>
										</h3>
									</header>
									<span class="timestamp">6 hours ago</span>
								</article>
							</li>
							<li>
								<article class="post stub">
									<header>
										<h3>
											<a href="#">Magna tempus consequat</a>
										</h3>
									</header>
									<span class="timestamp">Yesterday</span>
								</article>
							</li>
							<li>
								<article class="post stub">
									<header>
										<h3>
											<a href="#">Feugiat lorem ipsum</a>
										</h3>
									</header>
									<span class="timestamp">2 days ago</span>
								</article>
							</li>
						</ul>
					</section>

					<!-- Photos --
					<section class="4u 12u(mobile)">
						<header>
							<h2 class="icon fa-camera circled">
								<span class="label">Photos</span>
							</h2>
						</header>
						<div class="row 25%">
							<div class="6u">
								<a href="#" class="image fit"><img src="images/pic10.jpg"
									alt="" /></a>
							</div>
							<div class="6u$">
								<a href="#" class="image fit"><img src="images/pic11.jpg"
									alt="" /></a>
							</div>
							<div class="6u">
								<a href="#" class="image fit"><img src="images/pic12.jpg"
									alt="" /></a>
							</div>
							<div class="6u$">
								<a href="#" class="image fit"><img src="images/pic13.jpg"
									alt="" /></a>
							</div>
							<div class="6u">
								<a href="#" class="image fit"><img src="images/pic14.jpg"
									alt="" /></a>
							</div>
							<div class="6u$">
								<a href="#" class="image fit"><img src="images/pic15.jpg"
									alt="" /></a>
							</div>
						</div>
					</section>

				</div>
				<hr />
				<div class="row">
					<div class="12u">

						<!-- Contact --
						<section class="contact">
							<header>
								<h3>Nisl turpis nascetur interdum?</h3>
							</header>
							<p>Urna nisl non quis interdum mus ornare ridiculus egestas
								ridiculus lobortis vivamus tempor aliquet.</p>
							<ul class="icons">
								<li><a href="#" class="icon fa-twitter"><span
										class="label">Twitter</span></a></li>
								<li><a href="#" class="icon fa-facebook"><span
										class="label">Facebook</span></a></li>
								<li><a href="#" class="icon fa-instagram"><span
										class="label">Instagram</span></a></li>
								<li><a href="#" class="icon fa-pinterest"><span
										class="label">Pinterest</span></a></li>
								<li><a href="#" class="icon fa-dribbble"><span
										class="label">Dribbble</span></a></li>
								<li><a href="#" class="icon fa-linkedin"><span
										class="label">Linkedin</span></a></li>
							</ul>
						</section>
-->
				<!-- Copyright -->
			</div>
		</div>
		</section>
	</div>

	<!-- Scripts -->
	<script src="assets/js/jquery-1.9.1.min.js"></script>
	<script src="assets/js/jquery.min.js"></script>
	<script src="assets/js/jquery.dropotron.min.js"></script>
	<script src="assets/js/jquery.scrolly.min.js"></script>
	<script src="assets/js/jquery.onvisible.min.js"></script>
	<script src="assets/js/skel.min.js"></script>
	<script src="assets/js/util.js"></script>
	<!--[if lte IE 8]><script src="assets/js/ie/respond.min.js"></script><![endif]-->
	<script src="assets/js/main.js"></script>

</body>
</html>