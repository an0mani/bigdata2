<%@page import="com.DAO.sendMail"%>
<%@page import="java.util.Calendar"%>
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
	font-family: 'a각설탕';
}

article {
	margin: 0;
}

#art_pic {
	padding: 0 5em 1em 6em;
	margin: 0;
}

#art_pic img {
	width: 150px;
	height: 150px;
}

.carousel {
	background-color: white;
	font-family: 'a고래야놀자';
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
	font-family: 'a고래야놀자';
	font-size: 116px;
	font-weight: bold;
}

#LoginForm {
	font-family: '210 좋아해';
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
	font-family: '210 좋아해';
	color: black;
	font-size: 26px;
}

#JoinPage {
	color: black;
	font-family: '210 좋아해';
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
	background-image: url("../baby_picture/main3.png");
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

	
	<%session.setAttribute("selectArea", "gs"); %>

	<div id="page-wrapper">
		<!-- Header -->
		<div id="header">
			<video autoplay="autoplay" src="baby.mp4" loop="loop"></video>
			<!-- Inner -->
			<div class="inner">
				<header>
				<h1>
					<div id="mainfont">
						<a href="jh_main.jsp" id="logo">아이에게 엄마가</a>
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
						<div style="margin-right: 10%;">
							<a href="#banner" class="scrolly" onclick="scrollTest()"
								style="color: black; font-weight: bold; font-size: 41px; font-family: 'a고래야놀자';"><input
								id="startBtn" type="button" value="${Login_name }엄마의 육아일기 시작!" class=""
								style="border-radius: 100%; font-family: 'a고래야놀자'; font-weight: bold; font-size: 31px;"></a>
						</div>
					</c:otherwise>
				</c:choose>

				<!-- Menu //class="button circled scrolly"으로 창 이동-->
				<!-- Login버튼 부분 팝업-->
				<form action="../../LoginCheck" method="post">
					<a href="#x" class="overlay" id="login_form"></a>
					<div class="popup" id="popclose"
						style="font-weight: bold; font-size: 19px; width: 36%; height: 60%;">


						<c:choose>
							<c:when test="${empty search_id }">
								<h2>들어가기전 준비단계!</h2>
							</c:when>

							<c:otherwise>
								<h2>다음에는 잊어버리지 말기~!</h2>
							</c:otherwise>
						</c:choose>

						<br>
						<p style="font-weight: bold; font-size: 26px;">아이디와 패스워드를
							입력해주세요!</p>
						<div style="font-weight: bold; font-size: 26px;">

							아 이 디 :<br>

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
							비 밀 번 호 :<br>
							<c:choose>

								<c:when test="">

									<input type="password" id="password" name="Login_pw"
										placeholder="password" style="width: 30% !important;" />

								</c:when>
								<c:otherwise>

									<input type="password" id="password" name="Login_pw"
										value="${search_pw }" style="width: 30%;" />
								</c:otherwise>

							</c:choose>


						</div>
						<a href="#check_form" style="font-size: 26px;">아이디 / 비밀번호 찾기</a>
						<div style="text-align: center;">


							<input type="submit" value="로 그 인"
								style="border-radius: 100%;font-family: 'a각설탕';margin-right: 500px;font-size: 26px;margin-top: 10px;" />
							<a class="close" href="#close"></a>
						</div>
					</div>
				</form>

				<!-- 아이디 비밀번호 찾기 팝업 -->
				<form action="../../SearchInfo">
					<a href="#x" class="overlay" id="check_form"></a>
					<div class="popup" id="popclose"
						style="font-weight: bold; font-size: 19px; width: 26%; height: 31%;">
						<h2></h2>
						<br>
						<p style="font-weight: bold; font-size: 26px;">핸드폰 번호를 입력해주세요!</p>
						<div style="font-weight: bold; font-size: 26px;">
							핸드폰 번호 :<br> <input type="text" name="searchId_phone" id = "id"
								placeholder="phone-number" style="width: 30%; font-size: 19px;" />
						</div>
						<input type="submit" value="찾 기" onclick="sendMail();showAlert();"
							style="border-radius: 100%; font-family: 'a각설탕'; margin-right: 260px" /></a>
					</div>
				</form>

				<script type="text/javascript">
				
					function showAlert(){
						alert("확인 해보세요♥")
					}
				</script>


				<!-- Join버튼 부분 팝업-->
				<form method="post" name="f" onsubmit="return showJoin();"
					action="../../JoinCheck">
					<a href="#x" class="overlay" id="join_form"></a>
					<div class="popup"
						style="width: 39%; height: 75%; text-align: left;">
						<h2>회원가입</h2>
						<p>소중한 정보를 입력해주세요!!!</p>
						<div>
							아이디 입력: &nbsp<input type="text" id="id" name="id"
								placeholder="영문,숫자 6~10자 입력"
								style="width: 30%; font-size: 19px;" maxlength="40"> <input
								type="button" id="checkId" onclick="idcheck()"
								style="height: 30px; width: 70px;" value="중복확인"> <br>
							<span id="result" style="font-weight: bold; color: red;"></span>
						</div>

						<div>
							비밀번호 입력:<input type="password" name="password" id="password"
								placeholder="password" size="30px"
								style="width: 30%; font-size: 19px;" />
						</div>
						<div style="color: red;">
							비밀번호 확인:<input type="password" name="password1" id="password1"
								placeholder="confirm password" size="30px"
								style="width: 30%; font-size: 19px;" maxlength="10" />
						</div>
						<div id="sexFont">
							애기 이름 : <input type="text" id="firstname" name="babyName"
								placeholder="성은 제외" style="width: 30%; font-size: 19px;" /> 성 별
							: ♂<input type="radio" name="gender" value="남자">♀<input
								type="radio" name="gender" value="여자">
						</div>
						<div>
							핸드폰 번호 : <input type="text" name="phone" id="lastname"
								placeholder="'-'없이 입력해주세요" style="width: 30%; font-size: 19px;" />
						</div>
						<div>
							혈 액 형 :&nbsp&nbsp <input type="text" name="blood" id="blood"
								placeholder="알파벳만" size="30px"
								style="width: 30%; font-size: 19px;" />
						</div>
						<div>
							&nbsp&nbsp체 &nbsp&nbsp중&nbsp&nbsp&nbsp : <input type="text"
								id="lastname" name="weight" placeholder="'kg'없이 입력해주세요"
								style="width: 30%; font-size: 19px;" />
						</div>
						<div>
							&nbsp&nbsp신 &nbsp&nbsp장&nbsp&nbsp&nbsp : <input type="text"
								id="lastname" name="height" placeholder="'cm'없이 입력해주세요"
								style="width: 30%; font-size: 19px;" />
						</div>
						<div>
							태어난 날짜&nbsp:&nbsp&nbsp <input type="date" id="lastname"
								name="birthday" placeholder="'-'없이 입력해주세요"
								style="height: 30px; font-size: 19px;" />
						</div>
						<div>
							<a href="index.jsp">&nbsp&nbsp&nbsp <input type="submit"
								value="회원가입" style="border-radius: 100%; font-family: 'a각설탕';"></a>&nbsp
							or &nbsp <a href="#login_form" id="login_pop"><input
								type="reset" value="초기화"
								style="border-radius: 100%; font-family: 'a각설탕';"></a> <a
								class="close" href="#close"></a>
						</div>
					</div>
				</form>
				<script type="text/javascript">
			
				
				
					function sendMail(id){
						var idStr = $("#id").val();
						 $.ajax({
		            	       url:"../../sendService?id="+idStr,
		            	       success:function(data){
		            	          if(data == "success"){
		            	             alert("*** 메일을 확인해 주세요.")
		            	          }else if(data =="fail"){
		            	             alert("*** 잘못된 아이디 입니다.")
		            	          }
		            	       }
		            	      });
					}
				     function idcheck(){
		            	   var idStr = $("#id").val();
		            	   
		            	   $.ajax({
		            	       url:"../../CheckId?id="+idStr,
		            	       success:function(data){
		            	          if(data == "success"){
		            	             $("#result").text("*** 사용가능한 아이디입니다.")
		            	          }else if(data =="fail"){
		            	             $("#result").text("*** 중복된 아이디입니다.")
		            	          }
		            	       }
		            	      });
				     }
				
				 function showJoin(){
	            	  
	                   if (f.id.value == "") {
	                       alert("아이디를 입력하지 않았습니다.")
	                       f.id.focus()
	                       return false;
	                   }
	                   
	                  /*  //공백,특수문자 자동 체크
	                   for (i = 0; i < document.f.id.value.length; i++) {
	                       ch = document.f.id.value.charAt(i)
	                       if (!(ch >= '0' && ch <= '9') && !(ch >= 'a' && ch <= 'z')&&!(ch >= 'A' && ch <= 'Z')) {
	                           alert("아이디는 대소문자, 숫자만 입력가능합니다.")
	                           document.f.id.focus()
	                           document.f.id.select()
	                           return false;
	                       }
	                   }
	                   
	                   //아이디 길이 체크 (6~10자)
	                   if (document.f.id.value.length<4 || document.f.id.value.length>20) {
	                       alert("아이디를 4~12자까지 입력해주세요.")
	                       document.f.id.focus()
	                       document.f.id.select()
	                       return false;
	                   } */
	                  
	                   //비밀번호 입력여부 체크
	                   if (document.f.password.value == "") {
	                       alert("비밀번호를 입력하지 않았습니다.")
	                       document.f.password.focus();
	                       document.f.password.select();
	                       return false;
	                   }
	                   
	                 //비밀번호 길이 체크(6~10자 까지 허용)
	                 if ((document.f.password.value.length<6) || (document.f.password.value.length>10)) {
	                       alert("비밀번호를 6~10자까지 입력해주세요.")
	                       document.f.my_pwd.focus()
	                       return false;
	                   }
	                
	                //아이디와 비밀번호 같은지 체크
	                if (f.password.value == f.id.value) {
	                     alert("아이디와 비밀번호가 같습니다.")
	                     document.f.password.focus()
	                     return false;
	                 }
	                   
	               	//비밀번호와 비밀번호 확인 일치여부 체크
	                 if (document.f.password.value != document.f.password1.value) {
	                       alert("비밀번호가 일치하지 않습니다")
	                       document.f.password1.value = ""
	                       document.f.password1.focus()
	                       return false;
	                   }
	             	//혈액형 영어만 입력
	                 for (i = 0; i < document.f.blood.value.length; i++) {
	                       ch = document.f.blood.value.charAt(i)
	                       if (!(ch >= 'A' && ch <= 'Z')) {
	                           alert("혈액형은 대문자 영어만 입력해주세요")
	                           document.f.blood.focus()
	                           document.f.blood.select()
	                           return false;
	                       }
	                   }
	             	}
               
               function idcheck(){
            	   var idStr = $("#id").val();
            	   
            	   $.ajax({
            	       url:"../../CheckId?id="+idStr,
            	       success:function(data){
            	          if(data == "success"){
            	             $("#result").text("*** 사용가능한 아이디입니다.")
            	          }else if(data =="fail"){
            	             $("#result").text("*** 중복된 아이디입니다.")
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
				<li><a href="../../ym_SelectService"><img
						src="images/sun.png">아기 용품 공간<img src="images/sun.png"></a>
				</li>

				<li><a href="../../DiarySelectService"><img
						src="images/sun.png">나만의 육아일기<img src="images/sun.png"></a></li>
				<li><a href="../../SelectService"><img src="images/sun.png">이야기
						해요<img src="images/sun.png"></a></li>
				<li><a href="../BabyInfo/jy_BabyInfo.jsp"><img
						src="images/sun.png">나의 아기정보<img src="images/sun.png"></a></li>
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

		   
		</script> 
		
		<script>
					
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
						   

					      //이미지 숨기기
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
					      
					      //첫 번째 이미지 출력
					      imgs[index].style.display = "block";
					      imgs2[index].style.display = "none";
					     
					   }	
					   
					  

					   
					   
					</script> </header>
					
					</section>


		<!-- Carousel -->
		<div id="backImg">
			<section class="carousel">
			
			<div class="reel">

				<article> <a href="#" class="image featured"></a> <header>
				<h2>
					<a href="../../NoticeSelectService">공지 사항</a>
				</h2>
				</header>
				<p>날씨, 운세, 공지사항 확인하는 공간</p>
				</article>

				<article id="art_pic"> <a href="#" class="image featured"  style = "margin-bottom: 0px";><img
					src="images/flower11.jpg" alt="" /></a> </article>

				<article> <a href="#" class="image featured"></a> <header>
				<h2>
					<a href="../DaycareCenter/jy_DaycareCenter.jsp">안전한 어린이집</a>
				</h2>
				</header>
				<p>각 지역의 어린이집 평점 Top10</p>
				</article>

				<article id="art_pic"> <a href="#" class="image featured"  style = "margin-bottom: 0px";><img
					src="images/flower11.jpg" alt="" /></a> </article>

				<article> <a href="#" class="image featured"></a> <header>

				<h2>
					<a href="../news/news.jsp">육아 Tip</a>
				</h2>
				</header>
				<p>육아에 필요한 정보, Hot한 Issue</p>
				</article>

				<article id="art_pic"> <a href="#" class="image featured" style = "margin-bottom: 0px";><img
					src="images/flower11.jpg" alt="" /></a> </article>

				<article> <a href="#" class="image featured"></a> <header>
				<h2>
					<a href="../dicrease/dicrease.jsp">질병 랭킹 순위</a>
				</h2>
				</header>
				<p>영*유아들이 잘 걸리는 질병을 알고 미리 예방하자!</p>
				</article>

				<article id="art_pic"> <a href="#" class="image featured" style = "margin-bottom: 0px";>
				<img src="images/flower11.jpg" alt="" /></a> </article>

				<article> <a href="#" class="image featured"></a> <header>
				<h2>
					<a href="../vaccination/jy_vaccination.jsp">예방 접종 자료</a>
				</h2>
				</header>
				<p>각 시기에 맞아야 하는 예방접종 리스트</p>
				</article>

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