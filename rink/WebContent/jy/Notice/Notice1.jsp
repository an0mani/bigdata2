<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style type="text/css">

   .poptrox-popup{
   width:60% !important;
   height:60% !important;
   
   }
   .caption{
   
   font-size:40px !important;
   height:100% !important;
   opacity:0.5 !important;
   }
   .pic{
   height:60% !important;
   }

	#top {
	background-image: url('back_image/main1.png') !important;
	font-family: 'a고래야놀자' !important;
	background-repeat:no-repeat;
    background-position: right top;
    background-attachment: fixed;
}

#tag {
	margin-top: 40%;
}

#back {
	background-image: url('images/test.png') !important;
}

tr {
	color: black;
	align-self: center;
}

#two {
	width: 110%;
}
</style>
<title></title>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<!-- <link rel="stylesheet" href="assets/css/main.css" /> -->
<link rel="stylesheet" href="assets/css/main2.css" />
</head>
<body id="top">
	<!-- <header id="header1">
	<div class="inner1" style="margin-top: 40px">

		<a href="#" class="image avatar"><img src="back_image/baby.jpg"
			alt="" /></a>
		<p align="center">??맘</p>
		<input type="button" name="write" value="글쓰기"
			onclick="location.href='writing.jsp'"
			style="width: 50px; height: 50px; min-width: 6em !important; font-size: 15px; text-align: center; color: black !important; margin-right: 0px; font-family: 'a고래야놀자'">
		<input type="button" name="menu" value="목  록"
			onclick="location.href='Notice.jsp'"
			style="width: 50px; height: 50px; min-width: 6em !important; font-size: 15px; text-align: center; color: black !important; margin-right: 0px; font-family: 'a고래야놀자'"> -->
		<!-- <h1><strong>I am Strata</strong>, a super simple<br />					
					<!-- <h1><strong>I am Strata</strong>, a super simple<br />
					responsive site template freebie<br />
					crafted by <a href="http://html5up.net">HTML5 UP</a>.</h1> -->
	<!-- </div>
	</header> -->
	<!-- Header -->
	<!-- Menu -->
	<div id="wrapper">

		<!-- Header -->
		<header id="header"
			style="padding-top: 0px;padding-bottom: 0px;height: 0px;width: 1800px;">
		<div class="inner">

			<!-- Logo -->

			<!-- Nav -->
			<!-- <nav>
			<ul>
				<li><a href="#menu">Menu</a></li>
			</ul>
			</nav>

		</div>
		</header>
		<nav id="menu">
		<h2>Menu</h2>
		<ul>
			<li><a href="../firstMain/jh_main.jsp">Home</a></li>
			<li><a href="../usedArticle/ym_messageboard.jsp">아기 용품 공간</a></li>
			<li><a href="../Diary/jyo_diary.jsp">나만의 육아일기</a></li>
			<li><a href="../MessageBoard/jy_messageboard.jsp">이야기해요</a></li>
			<li><a href="../BabyInfo/jy_BabyInfo.jsp">나의 아기정보</a></li>
		</ul>
		</nav>

	</div>
 -->
	<!-- Logo -->

	<!-- Main -->
	<div id="main"
		style="margin-left: 0px; padding-top: 0px; padding-bottom: 50px; padding-left: 50px; padding-right: 0px; border-bottom-width: 100px;">

		<!-- One -->
		<section id="one"> </section>

		<!-- Two -->
		
		<section id="two"
			style="border-top-width: 0px; margin-top: 0px; padding-top: 50px; width: 1300px;">
		<h1 style="color:red;font-size: 80px">공지사항</h1>

			
			<div class="row"
				style="margin-left: 0px; margin-bottom: 0px; margin-top: 60px;">

			<table border solid black = "1px" width = "100%" height = "700px" style="font-size: 10px;">
				<c:choose>

					<c:when test="${not empty sessionScope.list}">
						<tr style="font-size: 35px;font-weight: bold;" height="40px">
								<td align="left" width="10%" >번호</td>
								
								<td align="center" width="20%">제목</td>
								<td align="center" width="35%">내용</td>
         						
         						
								<td align="center" width="35%">날짜</td>
							</tr>
						<c:forEach items="${sessionScope.list}" var="list">
						
							<%-- <article class="6u 12u$(xsmall) work-item"> <a href="../upload/${list.file}" class="image fit thumb" style= " max-width :300px; max-height:300px;">
            	<img src="../upload/${list.file}" alt="" style=" width: 300px;height: 300px;"/></a> --%>


							<tr valign="middle" >
								<td align="left" width="5%" style="font-size: 25px;">${list.num}</td>
								<td align="center" width="35%" style="font-size: 25px">${list.title}</td>
								<td align="center" width="35%" style="font-size: 25px">${list.text}</td>
								<td align="center" width="25%" style="font-size: 25px">${list.date}</td>
							</tr>

							<%-- <h3>${list.text}</h3>
							<p><h3 style="color:black;">${list.num}//${list.title}//${list.date}</h3></p> --%>
							<!-- </article> -->
						</c:forEach>
					</c:when>


				</c:choose>
		</table>
	</div>

	</section>



	<!-- Scripts -->
	<script src="assets/js/jquery.onvisible.min.js"></script>
	<script src="assets/js/jquery.scrolly.min.js"></script>
	<script src="assets/js/jquery.dropotron.min.js"></script>
	<script src="assets/js/jquery.min.js"></script>
	<script src="assets/js/jquery.poptrox.min.js"></script>
	<script src="assets/js/skel.min.js"></script>
	<script src="assets/js/util.js"></script>
	<!--[if lte IE 8]><script src="assets/js/ie/respond.min.js"></script><![endif]-->
	<script src="assets/js/main.js"></script>

</body>
</html>