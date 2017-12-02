<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script type="text/javascript">
function changeIframeUrl(url) { 
	document.getElementById("main_frame").src = url;
	document.getElementById("main_frame1").src = url;
	
}
</script>
<style type="text/css">
	
	#header1{
	background-image: url('back_image/main2.png') !important;
	}
	.inner1{
	text-align:center;
	}
	.inner{
	background-image: url('back_image/childnotice6.jpg') !important;
	color:black;
	}
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
<link rel="stylesheet" href="assets/css/main.css" />
<link rel="stylesheet" href="assets/css/main2.css" />
</head>
<body id="top">
	<header id="header1">
	<div class="inner1" style="margin-top: 40px">

		<a href="#" class="image avatar" style = "margin-right: 70px;"><img src="back_image/baby.jpg" alt="" style = "width:250px; height:250px;"/></a>
		<p align="center">??맘</p>
		<input type="button" name="write" value="글쓰기"
			onclick="location.href='writing.jsp'"
			style="width: 50px; height: 50px; min-width: 6em !important; font-size: 15px; text-align: center; color: black !important; margin-right: 0px; font-family: 'a고래야놀자'">
		<input type="button" name="menu" value="목  록"
			onclick="location.href='Notice.jsp'"
			style="width: 50px; height: 50px; min-width: 6em !important; font-size: 15px; text-align: center; color: black !important; margin-right: 0px; font-family: 'a고래야놀자'">
		<!-- <h1><strong>I am Strata</strong>, a super simple<br />					
					<!-- <h1><strong>I am Strata</strong>, a super simple<br />
					responsive site template freebie<br />
					crafted by <a href="http://html5up.net">HTML5 UP</a>.</h1> -->
		
		
		
		<input type="button" value='별자리' onclick = "changeIframeUrl('writing.jsp')"></input>
		<input type="button" value='날씨' onclick = "changeIframeUrl('README.txt')"></input>
		<input type="button" value='공지사항' onclick = "changeIframeUrl('Notice1.jsp')"></input>
		
		
		
	</div>
	</header>
	<!-- Header -->
	<!-- Menu -->
	<div id="wrapper">
	
		<!-- Header -->
		<header id="header" style="padding-top: 0px;padding-bottom: 0px;height: 0px;width: 1800px;">
		<div class="inner">
		
			<!-- Logo -->

			<!-- Nav -->
			<nav>
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
			<li><a href="../../ym_SelectService">아기 용품 공간</a></li>
			<li><a href="../../DiarySelectService">나만의 육아일기</a></li>
			<li><a href="../../SelectService">이야기해요</a></li>
			<li><a href="../BabyInfo/jy_BabyInfo.jsp">나의 아기정보</a></li>
			<li><a href="../MessageBoard/logout.jsp">로그아웃</a></li>
		</ul>
		</nav>
	
	</div>
	
	<!-- Logo -->

	<!-- Main -->
	<div id="main" style="margin-left: 380px;padding-top: 0px;padding-bottom: 0px;padding-left: 0px;padding-right: 0px;border-bottom-width: 100px;">
	
		<!-- One -->
		<section id="one"> </section>

		<!-- Two -->
		
		<section id="two"
			style="border-top-width: 0px;margin-top: 0px;padding-top: 0px;">
		<iframe width = "1535px" height = "970px" frameborder="0" border="0" scrolling="auto" bgcolor=#EEEEEE bordercolor="#FF000000" marginwidth="0" marginheight="0" name="main_frame" id="main_frame">
		<h1>공지사항</h1>
		
			
			<div class="row" style="margin-left: 0px; margin-bottom: 0px; margin-top: 60px;">
			
			<table border solid black = "1px" width = "100%" height = "700px" style="font-size: 10px;">
				<c:choose>

					<c:when test="${not empty sessionScope.list}">
						<c:forEach items="${sessionScope.list}" var="list">
							<%-- <article class="6u 12u$(xsmall) work-item"> <a href="../upload/${list.file}" class="image fit thumb" style= " max-width :300px; max-height:300px;">
            	<img src="../upload/${list.file}" alt="" style=" width: 300px;height: 300px;"/></a> --%>


							<tr style="font-size: 2em";>
								<td align="left" width="10%">${list.num }</td>
								
								<td align="center" width="60%"><article class="6u 12u$(xsmall) work-item">
								<a href="back_image/childnotice4.jpg" class="image fit thumb" style= " max-width :1px; max-height:1px;"> 
            					<img src="back_image/white.png" alt="" style=" width: 1px; height: 0px;"/><div style="position: relative;"></a>${list.title}<h3 style="font-size: 0px">${list.text}</h3></div>
            					<div style="position: relative; left:10px; top: 60px;">
            					</div>
         						</article></td>
         						
         						
								<td align="right" width="30%">${list.date}</td>
							</tr>

							<%-- <h3>${list.text}</h3>
							<p><h3 style="color:black;">${list.num}//${list.title}//${list.date}</h3></p> --%>
							<!-- </article> -->
						</c:forEach>
						
					</c:when>
				<%-- <c:when test="${changeIframeUrl('writing.jsp')}">
				<iframe src = "Notice.jsp" width = "1000px" height = "1000px" frameborder="0" border="0" scrolling="auto" bgcolor=#EEEEEE bordercolor="#FF000000" marginwidth="0" marginheight="0" name="main_frame" id="main_frame"></iframe>
				</c:when>
				
				<c:when test="${changeIframeUrl('README.txt')}">
				<iframe src = "Notice.jsp" width = "1000px" height = "1000px" frameborder="0" border="0" scrolling="auto" bgcolor=#EEEEEE bordercolor="#FF000000" marginwidth="0" marginheight="0" name="main_frame" id="main_frame"></iframe>
				</c:when> --%>
			
				</c:choose>
		</table>
		</iframe>	
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