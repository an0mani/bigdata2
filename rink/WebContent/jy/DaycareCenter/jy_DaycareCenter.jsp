<%@page import="java.util.ArrayList"%>
<%@page import="ranking.rankVO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style type="text/css">
#top {
	background-image: url('images/backgroundsakura2.png') !important;
	background-repeat: no-repeat;
	background-position: right top;
	background-attachment: fixed;
	font-family: 'a���߳���' !important;
}

#tag {
	margin-top: 40%;
}

#back {
	background-image: url('images/main2.png') !important;
}

tr {
	color: black;
	align-self: center;
}

#two {
	width: 110%;
}

.inner {
	background-image: url('images/childnotice6.jpg') !important;
	color: black;
}

#button1 {
	color: black !important;
	background: #2e8ce3;
	padding: 7px 30px 7px 30px;
	font-size: 15px;
	font-weight: bold;
	color: #000000;
	text-align: center;
	border: solid 1px #73c8f0;
	background: -moz-linear-gradient(0%, 100%, 90deg, #2e8ce3, #ffffff);
	background: -webkit-gradient(linear, 0% 0%, 0% 100%, from(#ffffff),
		to(#2e8ce3));
	border-radius: 5px;
	-moz-border-radius: 5px;
	-webkit-border-radius: 5px;
	border-bottom-color: #196ebb;
	text-shadow: 0 -1px 0 #196ebb;
}
</style>
<title></title>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<link rel="stylesheet" href="assets/css/main.css" />
<link rel="stylesheet" href="assets/css/main2.css" />
</head>
<body id="top">
	<header id="header1" style = text-align:center;>
	<div class="inner1" style="margin-top: 40px">

		<a href="#" class="image avatar"><img src="back_image/baby.jpg" alt="" style = "width:200px; height:200px;"/></a>
		<p align="center" style="font-size: 41px; font-weight: bold; color: black;">${Login_name }��</p>
<!-- 		<input type="button" name="menu" value="��  ��"
			onclick="location.href='ym_messageboard.jsp'"
			style="width: 50px; height: 50px; min-width: 6em !important; font-size: 15px; text-align: center; color: black !important; margin-right: 0px; font-family: 'a���߳���'">
		<input type="button" name="menu" value="���걸"
			onclick="location.href='ym_messageboard.jsp'"
			style="width: 50px; height: 50px; min-width: 6em !important; font-size: 15px; text-align: center; color: black !important; margin-right: 0px; font-family: 'a���߳���'">
		<input type="button" name="menu" value="��  ��"
			onclick="location.href='ym_messageboard.jsp'"
			style="width: 50px; height: 50px; min-width: 6em !important; font-size: 15px; text-align: center; color: black !important; margin-right: 0px; font-family: 'a���߳���'">
		<input type="button" name="menu" value="��  ��"
			onclick="location.href='ym_messageboard.jsp'"
			style="width: 50px; height: 50px; min-width: 6em !important; font-size: 15px; text-align: center; color: black !important; margin-right: 0px; font-family: 'a���߳���'">
		<input type="button" name="menu" value="��  ��"
			onclick="location.href='ym_messageboard.jsp'"
			style="width: 50px; height: 50px; min-width: 6em !important; font-size: 15px; text-align: center; color: black !important; margin-right: 0px; font-family: 'a���߳���'">
		<input type="button" name="menu" value="��  ��"
			onclick="location.href='ym_messageboard.jsp'"
			style="width: 50px; height: 50px; min-width: 6em !important; font-size: 15px; text-align: center; color: black !important; margin-right: 0px; font-family: 'a���߳���'">
 -->
		<input type = "button" name = "menu" value = "��������"  onclick="location.href='../Notice/Notice.jsp'"style="width: 50px; height: 50px; min-width: 6em !important; font-size: 15px; text-align: center; color: black !important; margin-right: 0px; font-family: 'a���߳���'">
						<input type = "button" name = "notice" value = "�����" onclick="location.href='../DaycareCenter/jy_DaycareCenter.jsp'" style="width: 50px; height: 50px; min-width: 6em !important; font-size: 15px; text-align: center; color: black !important; margin-right: 0px; font-family: 'a���߳���'">
						<input type = "button" name = "button1" value = "������" onclick="location.href='../news/news.jsp'" style="width: 50px; height: 50px; min-width: 6em !important; font-size: 15px; text-align: center; color: black !important; margin-right: 0px; font-family: 'a���߳���'">
						<input type = "button" name = "button2" value = "��������" onclick="location.href='../dicrease/dicrease.jsp'" style="width: 50px; height: 50px; min-width: 6em !important; font-size: 15px; text-align: center; color: black !important; margin-right: 0px; font-family: 'a���߳���'">
						<input type = "button" name = "button3" value = "��������" onclick="location.href='../vaccination/jy_vaccination.jsp'" style="width: 50px; height: 50px; min-width: 6em !important; font-size: 15px; text-align: center; color: black !important; margin-right: 0px; font-family: 'a���߳���'">
		<!-- <h1><strong>I am Strata</strong>, a super simple<br />
					responsive site template freebie<br />
					crafted by <a href="http://html5up.net">HTML5 UP</a>.</h1> -->
					<p style="color: black;" >${sessionScope.month} �ֻ縦 �¾ƾ��մϴ�. �ڼ��� ������ �������� �޴��� �������ּ���</p>
	</div>
	</header>
	<!-- Header -->
	<!-- Menu -->
	<div id="wrapper">

		<!-- Header -->
		<header id="header"
			style="padding-top: 0px;padding-bottom: 0px;height: 0px;width: 1800px;">
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
			<li><a href="../../ym_SelectService">�Ʊ� ��ǰ ����</a></li>
			<li><a href="../../DiarySelectService">������ �����ϱ�</a></li>
			<li><a href="../../SelectService">�̾߱��ؿ�</a></li>
			<li><a href="../BabyInfo/jy_BabyInfo.jsp">���� �Ʊ�����</a></li>
			<li><a href="../MessageBoard/logout.jsp">�α׾ƿ�</a></li>
		</ul>
		</nav>

	</div>

	<!-- Logo -->

	<!-- Main -->
	<div id="main"
		style="margin-left: 380px; padding-top: 0px; padding-bottom: 50px; padding-left: 50px; padding-right: 0px; border-bottom-width: 100px;">

		<!-- One -->
		<section id="one"> <!-- <header class="major">
				<h2>To Baby From Mom.</h2>
			</header>
			<p>Accumsan orci faucibus id eu lorem semper. Eu ac iaculis ac nunc nisi lorem vulputate lorem neque cubilia ac in adipiscing in curae lobortis tortor primis integer massa adipiscing id nisi accumsan pellentesque commodo blandit enim arcu non at amet id arcu magna. Accumsan orci faucibus id eu lorem semper nunc nisi lorem vulputate lorem neque cubilia.</p>
				<ul class="actions">
					<li><a href="writing.jsp" class="button">Message Writing</a></li>
					<li><a href="#" class="button">Logout</a></li>
				</ul> --> </section>

		<!-- Two -->
		<section id="two"
			style="border-top-width: 0px; margin-top: 0px; padding-top: 50px;">
		<h1>����� ���� ������ ǥ</h1>
		<ul class="actions">
			<!-- <li><a href="#" class="button">Full Portfolio</a></li> -->
		</ul>
		<div>
			<form method="post" action="../../rankService">
				<select name="area"
					style="width: 260px; height: 50px; padding-left: 10px; font-size: 18px; color: #006fff; border: 3px solid #006fff; border-radius: 15px">
					<option value="gs">���걸</option>
					<option value="e">����</option>
					<option value="w">����</option>
					<option value="s">����</option>
					<option value="n">�ϱ�</option>
				</select><input type="submit" id="button1" value="�� ��">
			</form>
		</div>

		<div id="map" style="width: 100%; height: 900px;"></div>
		<script type="text/javascript"
			src="//dapi.kakao.com/v2/maps/sdk.js?appkey=0351a47886aeab5672a46c979aadfb78"></script>
		<script>
		var mapContainer = document.getElementById('map'), // ������ ǥ���� div  
		mapOption = {
			center : new daum.maps.LatLng(35.15420004, 126.8847805), // ������ �߽���ǥ
			level : 7
		// ������ Ȯ�� ����
		};

		var map = new daum.maps.Map(mapContainer, mapOption); // ������ �����մϴ�
	
		// ��Ŀ�� ǥ���� ��ġ�� title ��ü �迭�Դϴ� 
		 
			 var positions =[
            <%ArrayList<rankVO> list = (ArrayList<rankVO>) session.getAttribute("rank");

			if (list != null) {
				for (int i = 0; i < list.size(); i++) {

					String name = list.get(i).getName();
					String latitude = list.get(i).getLatitude();
					String longtude = list.get(i).getLongtude();
					String addr = list.get(i).getAddr();
					String tel = list.get(i).getTel();%>
            
    			
  			  {
  					content: '<div style="font-size:15px;"><%=name%><br>�ּ�:<%=addr%><br>��ȣ:<%=tel%></div>', 
  			        latlng: new daum.maps.LatLng(<%=Double.parseDouble(latitude)%>, <%=Double.parseDouble(longtude)%>)
  			    },
  			   
  				
            
  		 
          
            <%}
			}%>   ]    
			// ��Ŀ �̹����� �̹��� �ּ��Դϴ�
				var imageSrc = "http://t1.daumcdn.net/localimg/localimages/07/mapapidoc/markerStar.png";
				
				for (var i = 0; i < positions.length; i++) {
					
					// ��Ŀ �̹����� �̹��� ũ�� �Դϴ�
					var imageSize = new daum.maps.Size(24, 35);

					// ��Ŀ �̹����� �����մϴ�    
					var markerImage = new daum.maps.MarkerImage(imageSrc, imageSize);

					
					// ��Ŀ�� �����մϴ�
				    var marker = new daum.maps.Marker({
				        map: map, // ��Ŀ�� ǥ���� ����
				        position: positions[i].latlng // ��Ŀ�� ��ġ
				    });
					
					// ��Ŀ�� ǥ���� ���������츦 �����մϴ� 
				    var infowindow = new daum.maps.InfoWindow({
				        content: positions[i].content // ���������쿡 ǥ���� ����
				    });
				 	
				    // ��Ŀ�� mouseover �̺�Ʈ�� mouseout �̺�Ʈ�� ����մϴ�
				    // �̺�Ʈ �����ʷδ� Ŭ������ ����� ����մϴ� 
				    // for������ Ŭ������ ����� ���� ������ ������ ��Ŀ���� �̺�Ʈ�� ��ϵ˴ϴ�
				    daum.maps.event.addListener(marker, 'mouseover', makeOverListener(map, marker, infowindow));
				    daum.maps.event.addListener(marker, 'mouseout', makeOutListener(infowindow));
					 // ��Ŀ�� ������ ǥ���մϴ�.
					
					 marker.setMap(map);
					 

					// ��Ŀ�� Ŀ���� �������� �� ��Ŀ ���� ǥ���� ���������츦 �����մϴ�
					var iwContent = '<div style="padding:5px;">Hello World!</div>'; // ���������쿡 ǥ��� �������� HTML ���ڿ��̳� document element�� �����մϴ�

					// ���������츦 �����մϴ�
					var infowindow = new daum.maps.InfoWindow({
					    content : iwContent
					});

					
					
				}
        
				
			
				// ���������츦 ǥ���ϴ� Ŭ������ ����� �Լ��Դϴ� 
				function makeOverListener(map, marker, infowindow) {
				    return function() {
				        infowindow.open(map, marker);
				    };
				}

				// ���������츦 �ݴ� Ŭ������ ����� �Լ��Դϴ� 
				function makeOutListener(infowindow) {
				    return function() {
				        infowindow.close();
				    };
				}

			
		

		
	</script> </section>


		<%
			String selectArea = (String) session.getAttribute("selectArea");

			if (selectArea.equals("gs")) {
		%>
		<img src="images/gwang.png" style="width: 100%;">
		<%
			} else if (selectArea.equals("e")) {
		%>
		<img src="images/east.png" style="width: 100%;">
		<%
			} else if (selectArea.equals("w")) {
		%>
		<img src="images/west.png" style="width: 100%";>
		<%
			} else if (selectArea.equals("n")) {
		%>
		<img src="images/north.png" style="width: 100%";>

		<%
			} else if (selectArea.equals("s")) {
		%>
		<img src="images/south.png" style="width: 100%";>
		<%
			} else {
		%>
		<%
			}
		%>


	</div>

	<!-- Footer -->
	<!-- <footer id="footer">
				<div class="inner">
					<ul class="icons">
						<li><a href="#" class="icon fa-twitter"><span class="label">Twitter</span></a></li>
						<li><a href="#" class="icon fa-githu
b"><span class="label">Github</span></a></li>
						<li><a href="#" class="icon fa-dribbble"><span class="label">Dribbble</span></a></li>
						<li><a href="#" class="icon fa-envelope-o"><span class="label">Email</span></a></li>
					</ul>
					<ul class="copyright">
						<li>&copy; Untitled</li><li>Design: <a href="http://html5up.net">HTML5 UP</a></li>
					</ul>
				</div>
			</footer> -->

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