<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style type="text/css">

	#header1{
	background-image: url('back_image/main2.png') !important;
	}
	.inner{
	background-image: url('back_image/childnotice6.jpg') !important;
	color:black;
	}
	#top {
	background-image: url('back_image/main1.png') !important;
	font-family: 'a고래야놀자' !important;
	background-repeat:no-repeat;
   	background-position: right top;
   	background-attachment: fixed;
	
	}
	#tag{
	margin-top: 40%;
	
	}
	#back{
	background-image: url('images/test.png') !important;
	 
	}
	tr{
	color: black;
	align-self: center;
	}
	#two{
	width:110%;
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
						<input type = "button" name = "menu" value = "목  록" onclick="location.href='jy_messageboard.jsp'" style="width: 50px; height: 50px; min-width: 6em !important; font-size: 15px; text-align: center; color: black !important; margin-right: 0px; font-family: 'a고래야놀자'">
						<input type = "button" name = "notice" value = "공지사항" onclick="location.href='jy_messageboard.jsp'" style="width: 50px; height: 50px; min-width: 6em !important; font-size: 15px; text-align: center; color: black !important; margin-right: 0px; font-family: 'a고래야놀자'">
						<input type = "button" name = "button1" value = "버튼1" onclick="location.href='jy_messageboard.jsp'" style="width: 50px; height: 50px; min-width: 6em !important; font-size: 15px; text-align: center; color: black !important; margin-right: 0px; font-family: 'a고래야놀자'">
						<input type = "button" name = "button2" value = "버튼2" onclick="location.href='jy_messageboard.jsp'" style="width: 50px; height: 50px; min-width: 6em !important; font-size: 15px; text-align: center; color: black !important; margin-right: 0px; font-family: 'a고래야놀자'">
						<input type = "button" name = "button3" value = "버튼3" onclick="location.href='jy_messageboard.jsp'" style="width: 50px; height: 50px; min-width: 6em !important; font-size: 15px; text-align: center; color: black !important; margin-right: 0px; font-family: 'a고래야놀자'">
						<input type = "button" name = "button4" value = "버튼4" onclick="location.href='jy_messageboard.jsp'" style="width: 50px; height: 50px; min-width: 6em !important; font-size: 15px; text-align: center; color: black !important; margin-right: 0px; font-family: 'a고래야놀자'">
					<p style="color: black;" >${sessionScope.month} 주사를 맞아야합니다. 자세한 내용은 예방접종 메뉴를 참고해주세요</p>
					<!-- <h1><strong>I am Strata</strong>, a super simple<br />
					responsive site template freebie<br />
					crafted by <a href="http://html5up.net">HTML5 UP</a>.</h1> -->
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
					</nav>

			</div>
	<!-- Logo -->
	
	<!-- Main -->
	<div id="main" style="margin-left: 380px;padding-top: 0px;padding-bottom: 50px;padding-left: 50px;padding-right: 0px;border-bottom-width: 100px;">
		<!-- One -->
		<section id="one">
			<!-- <header class="major">
				<h2>To Baby From Mom.</h2>
			</header>
			<p>Accumsan orci faucibus id eu lorem semper. Eu ac iaculis ac nunc nisi lorem vulputate lorem neque cubilia ac in adipiscing in curae lobortis tortor primis integer massa adipiscing id nisi accumsan pellentesque commodo blandit enim arcu non at amet id arcu magna. Accumsan orci faucibus id eu lorem semper nunc nisi lorem vulputate lorem neque cubilia.</p>
				<ul class="actions">
					<li><a href="writing.jsp" class="button">Message Writing</a></li>
					<li><a href="#" class="button">Logout</a></li>
				</ul> -->
		</section>

		<!-- Two -->
		<section id="two" style = "border-top-width: 0px; margin-top: 0px; padding-top: 50px;">
		<h1 align = center>질병통계분석</h1>
		<div class="row">
		<div style="height: 500px;width: 100%;"><iframe src="http://olapopendata.hira.or.kr/analysis/desktop/poc2.jsp#report_id=b235b0f3-24cb47fe&amp;PARAM1=" frameborder="0" width="100%" height="100%" class="olapViewFrame"></iframe></div>
		
			<h1>질병순위Top5</h1>
			<h1 align = "center">1.감기</h1>
			<h2>감기는 어린이 뿐만 아니라 어른들도 자주 발생하죠. 약 200여 종 이상의 바이러스에 의해 발생하는 호흡기계의 감염 증상이랍니다. 주로 바이러스로 말미암아 걸리는 호흡계통의 병으로 보통 코가 막히고 열이 나며 두통 증상이 있습니다. 사람에게 나타나는 가장 흔한 급성 질환 중 하나인데요. 재채기, 코막힘, 콧물, 인후통, 기침, 미열, 두통 및 근육통과 같은 증상이 나타나지만 대개는 특별한 치료 없이도 저절로 치유됩니다.</h2>
			<h2>[예방법]</h2>
			<h2>① 손을 자주 씻어 손에 묻어 있을 수 있는 감기 바이러스를 없애고<br>② 손으로 눈이나 코, 입 등을 비비거나 만지지 않도록 합니다.<br>③ 또한 수건 등의 일상 용품을 다른사람들과 함께 쓰지 않는것이 좋습니다.<br>④ 기침을 할때에는 손으로 가리지 않고 머리를 아래로 숙여서 바닥을 향하도록 합니다.<br>⑤ 어린이는 성인에 비해 면역력이 낮아 감기 바이러스에 감염될 확률이 높으므로 인원이 너무 많은 곳은 피하도록 합니다.</h2><br>
			<h1 align = "center">2.인두 / 편도선염</h1>
			<h2>인두/편도선에 염증이 생겨 빨갛게 붓는 병을 말하는데요. 인두/편도선염은 세균이나 바이러스의 감염 등에 의해서 인두점막 및 편도선에 염증이 생기며 피로, 대기의 건조, 위장장애, 만성부비강염이나 먼지, 유독가스의 흡입 등으로 일어납니다. 증세는 갑자기 나타나는데, 인두의 이물감이나 건조감 외에 온몸이 나른하고 식욕이 떨어지며 발열을 수반하기도 합니다.</h2>
			<h2>[예방법]</h2>
			<h2>① 평소에 구강위생을 유지하고 손을 자주 씻는 습관을 갖도록 합니다.<br>② 충분한 수분섭취 및 휴식과 위생관리가 중요합니다.<br>③ 희석한 과산화소수 또는 가온한 생리식염수가 입안의 청결을 유지하는 데 도움이 됩니다.<br>④ 음식물을 삼키기 힘든 경우 죽과 같은 부드러운 음식을 먹습니다.</h2><br>
			<h1 align = "center">3.식중독 및 장염</h1>
			<h2>식중독은 섭취한 음식물의 독성 물질 때문에 발생하는 일련의 증후군을 말하는데요. 장염의 경우 대부분 음식 섭취와 관련이 있기 때문에 식중독과 따로 구분하기는 어렵답니다. 물질에 따라 잠복기와 증상의 정도가 다르게 나타나게 되는데, 일반적으로 음식물 섭취 후 72시간 이내에 구토, 설사, 복통, 발열 등의 증상을 나타냅니다.</h2>
			<h2>[예방법]</h2>
			<h2>① 음식물을 조리하거나 보관 또는 저장을 해야 할 때는 반드시 손을 씻고난 다음에 합니다.<br>② 가열 조리식품은 중심부 온도를 74℃ 이상으로 1분 이상 가열하여 익혀 먹어야 합니다.<br>③ 4℃ 에서 60℃의 온도는 식중독을 일으키는 균의 성장 가능성이 높은 온도 구간이므로 뜨거운 음식은 60℃ 이상으로 보관하고 찬 음식은 4℃ 이하로 냉장보관하여 관리하도록 합니다.</h2>
			<h1 align = "center">4.소아천식</h1>
			<h2>어린아이의 기관지염과 천식의 합병증입니다.알레르기가 원인이 되어 생기는 것으로, 콧물과 기침이 나고 숨을 쉴 때 목에서 '가르랑'거리는 소리가 납니다. 소아에서 폐 속 기관지가 예민해져 만성 기침, 쌕색거림, 가슴 답답함 등의 증상이 나타나는 호흡기 질환으로 특히 기침이 주 증상으로 천식 치료에 반응이 좋은 경우에는 천식양 기관지염이라고도 합니다.기본적으로 소아 천식은 발생 기전 및 유발 인자 등에서 성인의 천식과 비슷하지만 진단 방법 및 예후에 있어서 차이가 납니다. 병인에 알레르기성 염증 반응이 관여한다고 알려져 있으며, 유전적 요인과 환경적 요인 모두의 영향을 받습니다.</h2>
			<h2>[예방법]</h2>
			<h2>① 천식은 원인 물질을 회피하고 악화 요인에 노출을 최소화하는 것이 필요합니다.<br>② 원인 알레르기 물질을 알고 있는 경우 노출을 최소화할 수 있는 생활 환경을 유지하는 것이 좋습니다.<br>③ 집 먼지 진드기의 경우 위생적인 관리가 필수적입니다.<br>④ 꽃가루 및 황사 같은 악화 요인은 인터넷 등에서 실시간 화분지수 및황사 예보를 확인해 가급적 피하는 것이 좋습니다.</h2><br>
			<h1 align = "center">5.알레르기성 비염</h1>
			<h2>연속적인 재채기, 계속 흘러 내리는 맑은 콧물, 코막힘, 가려움증 등의 증상을 보이는 코 점막의 질환입니다. 연속적으로 일어나는 발작적인 재채기, 맑은 콧물, 코막힘 등의 세 가지 주요 증상을 특징으로 하며, 이 세 가지 증상 중 두 가지 이상의 증상을 가지고 있을 때 알레르기 비염을 의심할 수 있습니다. 일반적으로 나타나는 특징적인 증상 이외에도 코 주위 가려움이나 두통, 후각 감퇴 등의 증상이 동반될 수 있으며 합병증으로 중이염, 부비동염, 인후두염이 동반될 수 있으니 주의해야 합니다.</h2>
			<h2>[예방법]</h2>
			<h2>① 일반적인 예방법으로는 먼지와 온도의 변화, 담배 연기나 매연, 화장품, 스트레스 등을 피하고 주변을 청결하게 해주는 방법이 있습니다.<br>② 꽃가루가 많은 계절에는 창문을 닫고 외출할 때에는 마스크를 착용합니다.<br>③ 집 먼지 진드기의 경우 침대, 이불, 베개, 담요 등 먼지가 쉽게 끼거나 방출되는 물건은 지퍼가 달린 커버를 사용하고, 커버는 삶도록 합니다. 특수 필터가 장착된 진공청소기를 이용한 실내 청소도 도움이 됩니다.</h2>
			</article>
			<!-- <article class="6u 12u$(xsmall) work-item"> <a
				href="images/fulls/baby.jpg" class="image fit thumb"><img
				src="images/thumbs/baby.jpg" alt="" /></a>
			<h3>Magna sed consequat tempus</h3>
			<p>Lorem ipsum dolor sit amet nisl sed nullam feugiat.</p>
			</article>
			<article class="6u$ 12u$(xsmall) work-item"> <a
				href="images/fulls/baby.jpg" class="image fit thumb"><img
				src="images/thumbs/baby.jpg" alt="" /></a>
			<h3>Quam neque phasellus</h3>
			<p>Lorem ipsum dolor sit amet nisl sed nullam feugiat.</p>
			</article>
			<article class="6u 12u$(xsmall) work-item"> <a
				href="images/fulls/baby.jpg" class="image fit thumb"><img
				src="images/thumbs/baby.jpg" alt="" /></a>
			<h3>Magna sed consequat tempus</h3>
			<p>Lorem ipsum dolor sit amet nisl sed nullam feugiat.</p>
			</article>
			<article class="6u 12u$(xsmall) work-item"> <a
				href="images/fulls/baby.jpg" class="image fit thumb"><img
				src="images/thumbs/baby.jpg" alt="" /></a>
			<h3>Magna sed consequat tempus</h3>
			<p>Lorem ipsum dolor sit amet nisl sed nullam feugiat.</p>
			</article>
			<article class="6u$ 12u$(xsmall) work-item"> <a
				href="images/fulls/baby.jpg" class="image fit thumb"><img
				src="images/thumbs/baby.jpg" alt="" /></a>
			<h3>Ultricies lacinia interdum</h3>
			<p>Lorem ipsum dolor sit amet nisl sed nullam feugiat.</p>
			</article>
			<article class="6u 12u$(xsmall) work-item"> <a
				href="images/fulls/baby.jpg" class="image fit thumb"><img
				src="images/thumbs/baby.jpg" alt="" /></a>
			<h3>Tortor metus commodo</h3>
			<p>Lorem ipsum dolor sit amet nisl sed nullam feugiat.</p>
			</article>
			<article class="6u 12u$(xsmall) work-item"> <a
				href="images/fulls/baby.jpg" class="image fit thumb"><img
				src="images/thumbs/baby.jpg" alt="" /></a>
			<h3>Nunc enim commodo aliquet</h3>
			<p>Lorem ipsum dolor sit amet nisl sed nullam feugiat.</p>
			</article>
			<article class="6u$ 12u$(xsmall) work-item"> <a
				href="images/fulls/baby.jpg" class="image fit thumb"><img
				src="images/thumbs/baby.jpg" alt="" /></a>
			<h3>Quam neque phasellus</h3>
			<p>Lorem ipsum dolor sit amet nisl sed nullam feugiat.</p>
			</article> -->
			
		
			
		</div>
		<ul class="actions">
			<!-- <li><a href="#" class="button">Full Portfolio</a></li> -->
		</ul>
		</section>

		<!-- Three -->
		<!-- <section id="three">
						<h2>Get In Touch</h2>
						<p>Accumsan pellentesque commodo blandit enim arcu non at amet id arcu magna. Accumsan orci faucibus id eu lorem semper nunc nisi lorem vulputate lorem neque lorem ipsum dolor.</p>
						<div class="row">
							<div class="8u 12u$(small)">
								<form method="post" action="#">
									<div class="row uniform 50%">
										<div class="6u 12u$(xsmall)"><input type="text" name="name" id="name" placeholder="Name" /></div>
										<div class="6u$ 12u$(xsmall)"><input type="email" name="email" id="email" placeholder="Email" /></div>
										<div class="12u$"><textarea name="message" id="message" placeholder="Message" rows="4"></textarea></div>
									</div>
								</form>
								<ul class="actions">
									<li><input type="submit" value="Send Message" /></li>
								</ul>
							</div>
							<div class="4u$ 12u$(small)">
								 <ul class="labeled-icons">
									<li>
										<h3 class="icon fa-home"><span class="label">Address</span></h3>
										1234 Somewhere Rd.<br />
										Nashville, TN 00000<br />
										United States
									</li>
									<li>
										<h3 class="icon fa-mobile"><span class="label">Phone</span></h3>
										000-000-0000
									</li>
									<li>
										<h3 class="icon fa-envelope-o"><span class="label">Email</span></h3>
										<a href="#">hello@untitled.tld</a>
									</li>
								</ul> 
							</div>
						</div>
					</section> -->

		<!-- Four -->
		<!--
					<section id="four">
						<h2>Elements</h2>

						<section>
							<h4>Text</h4>
							<p>This is <b>bold</b> and this is <strong>strong</strong>. This is <i>italic</i> and this is <em>emphasized</em>.
							This is <sup>superscript</sup> text and this is <sub>subscript</sub> text.
							This is <u>underlined</u> and this is code: <code>for (;;) { ... }</code>. Finally, <a href="#">this is a link</a>.</p>
							<hr />
							<header>
								<h4>Heading with a Subtitle</h4>
								<p>Lorem ipsum dolor sit amet nullam id egestas urna aliquam</p>
							</header>
							<p>Nunc lacinia ante nunc ac lobortis. Interdum adipiscing gravida odio porttitor sem non mi integer non faucibus ornare mi ut ante amet placerat aliquet. Volutpat eu sed ante lacinia sapien lorem accumsan varius montes viverra nibh in adipiscing blandit tempus accumsan.</p>
							<header>
								<h5>Heading with a Subtitle</h5>
								<p>Lorem ipsum dolor sit amet nullam id egestas urna aliquam</p>
							</header>
							<p>Nunc lacinia ante nunc ac lobortis. Interdum adipiscing gravida odio porttitor sem non mi integer non faucibus ornare mi ut ante amet placerat aliquet. Volutpat eu sed ante lacinia sapien lorem accumsan varius montes viverra nibh in adipiscing blandit tempus accumsan.</p>
							<hr />
							<h2>Heading Level 2</h2>
							<h3>Heading Level 3</h3>
							<h4>Heading Level 4</h4>
							<h5>Heading Level 5</h5>
							<h6>Heading Level 6</h6>
							<hr />
							<h5>Blockquote</h5>
							<blockquote>Fringilla nisl. Donec accumsan interdum nisi, quis tincidunt felis sagittis eget tempus euismod. Vestibulum ante ipsum primis in faucibus vestibulum. Blandit adipiscing eu felis iaculis volutpat ac adipiscing accumsan faucibus. Vestibulum ante ipsum primis in faucibus lorem ipsum dolor sit amet nullam adipiscing eu felis.</blockquote>
							<h5>Preformatted</h5>
							<pre><code>i = 0;

while (!deck.isInOrder()) {
print 'Iteration ' + i;
deck.shuffle();
i++;
}

print 'It took ' + i + ' iterations to sort the deck.';</code></pre>
						</section>

						<section>
							<h4>Lists</h4>
							<div class="row">
								<div class="6u 12u$(xsmall)">
									<h5>Unordered</h5>
									<ul>
										<li>Dolor pulvinar etiam magna etiam.</li>
										<li>Sagittis adipiscing lorem eleifend.</li>
										<li>Felis enim feugiat dolore viverra.</li>
									</ul>
									<h5>Alternate</h5>
									<ul class="alt">
										<li>Dolor pulvinar etiam magna etiam.</li>
										<li>Sagittis adipiscing lorem eleifend.</li>
										<li>Felis enim feugiat dolore viverra.</li>
									</ul>
								</div>
								<div class="6u$ 12u$(xsmall)">
									<h5>Ordered</h5>
									<ol>
										<li>Dolor pulvinar etiam magna etiam.</li>
										<li>Etiam vel felis at lorem sed viverra.</li>
										<li>Felis enim feugiat dolore viverra.</li>
										<li>Dolor pulvinar etiam magna etiam.</li>
										<li>Etiam vel felis at lorem sed viverra.</li>
										<li>Felis enim feugiat dolore viverra.</li>
									</ol>
									<h5>Icons</h5>
									<ul class="icons">
										<li><a href="#" class="icon fa-twitter"><span class="label">Twitter</span></a></li>
										<li><a href="#" class="icon fa-facebook"><span class="label">Facebook</span></a></li>
										<li><a href="#" class="icon fa-instagram"><span class="label">Instagram</span></a></li>
										<li><a href="#" class="icon fa-github"><span class="label">Github</span></a></li>
										<li><a href="#" class="icon fa-dribbble"><span class="label">Dribbble</span></a></li>
										<li><a href="#" class="icon fa-tumblr"><span class="label">Tumblr</span></a></li>
									</ul>
								</div>
							</div>
							<h5>Actions</h5>
							<ul class="actions">
								<li><a href="#" class="button special">Default</a></li>
								<li><a href="#" class="button">Default</a></li>
							</ul>
							<ul class="actions small">
								<li><a href="#" class="button special small">Small</a></li>
								<li><a href="#" class="button small">Small</a></li>
							</ul>
							<div class="row">
								<div class="6u 12u$(small)">
									<ul class="actions vertical">
										<li><a href="#" class="button special">Default</a></li>
										<li><a href="#" class="button">Default</a></li>
									</ul>
								</div>
								<div class="6u$ 12u$(small)">
									<ul class="actions vertical small">
										<li><a href="#" class="button special small">Small</a></li>
										<li><a href="#" class="button small">Small</a></li>
									</ul>
								</div>
								<div class="6u 12u$(small)">
									<ul class="actions vertical">
										<li><a href="#" class="button special fit">Default</a></li>
										<li><a href="#" class="button fit">Default</a></li>
									</ul>
								</div>
								<div class="6u$ 12u$(small)">
									<ul class="actions vertical small">
										<li><a href="#" class="button special small fit">Small</a></li>
										<li><a href="#" class="button small fit">Small</a></li>
									</ul>
								</div>
							</div>
						</section>

						<section>
							<h4>Table</h4>
							<h5>Default</h5>
							<div class="table-wrapper">
								<table>
									<thead>
										<tr>
											<th>Name</th>
											<th>Description</th>
											<th>Price</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td>Item One</td>
											<td>Ante turpis integer aliquet porttitor.</td>
											<td>29.99</td>
										</tr>
										<tr>
											<td>Item Two</td>
											<td>Vis ac commodo adipiscing arcu aliquet.</td>
											<td>19.99</td>
										</tr>
										<tr>
											<td>Item Three</td>
											<td> Morbi faucibus arcu accumsan lorem.</td>
											<td>29.99</td>
										</tr>
										<tr>
											<td>Item Four</td>
											<td>Vitae integer tempus condimentum.</td>
											<td>19.99</td>
										</tr>
										<tr>
											<td>Item Five</td>
											<td>Ante turpis integer aliquet porttitor.</td>
											<td>29.99</td>
										</tr>
									</tbody>
									<tfoot>
										<tr>
											<td colspan="2"></td>
											<td>100.00</td>
										</tr>
									</tfoot>
								</table>
							</div>

							<h5>Alternate</h5>
							<div class="table-wrapper">
								<table class="alt">
									<thead>
										<tr>
											<th>Name</th>
											<th>Description</th>
											<th>Price</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td>Item One</td>
											<td>Ante turpis integer aliquet porttitor.</td>
											<td>29.99</td>
										</tr>
										<tr>
											<td>Item Two</td>
											<td>Vis ac commodo adipiscing arcu aliquet.</td>
											<td>19.99</td>
										</tr>
										<tr>
											<td>Item Three</td>
											<td> Morbi faucibus arcu accumsan lorem.</td>
											<td>29.99</td>
										</tr>
										<tr>
											<td>Item Four</td>
											<td>Vitae integer tempus condimentum.</td>
											<td>19.99</td>
										</tr>
										<tr>
											<td>Item Five</td>
											<td>Ante turpis integer aliquet porttitor.</td>
											<td>29.99</td>
										</tr>
									</tbody>
									<tfoot>
										<tr>
											<td colspan="2"></td>
											<td>100.00</td>
										</tr>
									</tfoot>
								</table>
							</div>
						</section>

						<section>
							<h4>Buttons</h4>
							<ul class="actions">
								<li><a href="#" class="button special">Special</a></li>
								<li><a href="#" class="button">Default</a></li>
							</ul>
							<ul class="actions">
								<li><a href="#" class="button big">Big</a></li>
								<li><a href="#" class="button">Default</a></li>
								<li><a href="#" class="button small">Small</a></li>
							</ul>
							<ul class="actions fit">
								<li><a href="#" class="button special fit">Fit</a></li>
								<li><a href="#" class="button fit">Fit</a></li>
							</ul>
							<ul class="actions fit small">
								<li><a href="#" class="button special fit small">Fit + Small</a></li>
								<li><a href="#" class="button fit small">Fit + Small</a></li>
							</ul>
							<ul class="actions">
								<li><a href="#" class="button special icon fa-download">Icon</a></li>
								<li><a href="#" class="button icon fa-download">Icon</a></li>
							</ul>
							<ul class="actions">
								<li><span class="button special disabled">Special</span></li>
								<li><span class="button disabled">Default</span></li>
							</ul>
						</section>

						<section>
							<h4>Form</h4>
							<form method="post" action="#">
								<div class="row uniform 50%">
									<div class="6u 12u$(xsmall)">
										<input type="text" name="demo-name" id="demo-name" value="" placeholder="Name" />
									</div>
									<div class="6u$ 12u$(xsmall)">
										<input type="email" name="demo-email" id="demo-email" value="" placeholder="Email" />
									</div>
									<div class="12u$">
										<div class="select-wrapper">
											<select name="demo-category" id="demo-category">
												<option value="">- Category -</option>
												<option value="1">Manufacturing</option>
												<option value="1">Shipping</option>
												<option value="1">Administration</option>
												<option value="1">Human Resources</option>
											</select>
										</div>
									</div>
									<div class="4u 12u$(small)">
										<input type="radio" id="demo-priority-low" name="demo-priority" checked>
										<label for="demo-priority-low">Low Priority</label>
									</div>
									<div class="4u 12u$(small)">
										<input type="radio" id="demo-priority-normal" name="demo-priority">
										<label for="demo-priority-normal">Normal Priority</label>
									</div>
									<div class="4u$ 12u(small)">
										<input type="radio" id="demo-priority-high" name="demo-priority">
										<label for="demo-priority-high">High Priority</label>
									</div>
									<div class="6u 12u$(small)">
										<input type="checkbox" id="demo-copy" name="demo-copy">
										<label for="demo-copy">Email me a copy of this message</label>
									</div>
									<div class="6u$ 12u$(small)">
										<input type="checkbox" id="demo-human" name="demo-human" checked>
										<label for="demo-human">I am a human and not a robot</label>
									</div>
									<div class="12u$">
										<textarea name="demo-message" id="demo-message" placeholder="Enter your message" rows="6"></textarea>
									</div>
									<div class="12u$">
										<ul class="actions">
											<li><input type="submit" value="Send Message" class="special" /></li>
											<li><input type="reset" value="Reset" /></li>
										</ul>
									</div>
								</div>
							</form>
						</section>

						<section>
							<h4>Image</h4>
							<h5>Fit</h5>
							<div class="box alt">
								<div class="row 50% uniform">
									<div class="12u$"><span class="image fit"><img src="images/fulls/05.jpg" alt="" /></span></div>
									<div class="4u"><span class="image fit"><img src="images/thumbs/01.jpg" alt="" /></span></div>
									<div class="4u"><span class="image fit"><img src="images/thumbs/02.jpg" alt="" /></span></div>
									<div class="4u$"><span class="image fit"><img src="images/thumbs/03.jpg" alt="" /></span></div>
									<div class="4u"><span class="image fit"><img src="images/thumbs/04.jpg" alt="" /></span></div>
									<div class="4u"><span class="image fit"><img src="images/thumbs/05.jpg" alt="" /></span></div>
									<div class="4u$"><span class="image fit"><img src="images/thumbs/06.jpg" alt="" /></span></div>
									<div class="4u"><span class="image fit"><img src="images/thumbs/03.jpg" alt="" /></span></div>
									<div class="4u"><span class="image fit"><img src="images/thumbs/02.jpg" alt="" /></span></div>
									<div class="4u$"><span class="image fit"><img src="images/thumbs/01.jpg" alt="" /></span></div>
								</div>
							</div>
							<h5>Left &amp; Right</h5>
							<p><span class="image left"><img src="images/avatar.jpg" alt="" /></span>Fringilla nisl. Donec accumsan interdum nisi, quis tincidunt felis sagittis eget. tempus euismod. Vestibulum ante ipsum primis in faucibus vestibulum. Blandit adipiscing eu felis iaculis volutpat ac adipiscing accumsan eu faucibus. Integer ac pellentesque praesent tincidunt felis sagittis eget. tempus euismod. Vestibulum ante ipsum primis in faucibus vestibulum. Blandit adipiscing eu felis iaculis volutpat ac adipiscing accumsan eu faucibus. Integer ac pellentesque praesent. Donec accumsan interdum nisi, quis tincidunt felis sagittis eget. tempus euismod. Vestibulum ante ipsum primis in faucibus vestibulum. Blandit adipiscing eu felis iaculis volutpat ac adipiscing accumsan eu faucibus. Integer ac pellentesque praesent tincidunt felis sagittis eget. tempus euismod. Vestibulum ante ipsum primis in faucibus vestibulum. Blandit adipiscing eu felis iaculis volutpat ac adipiscing accumsan eu faucibus. Integer ac pellentesque praesent.</p>
							<p><span class="image right"><img src="images/avatar.jpg" alt="" /></span>Fringilla nisl. Donec accumsan interdum nisi, quis tincidunt felis sagittis eget. tempus euismod. Vestibulum ante ipsum primis in faucibus vestibulum. Blandit adipiscing eu felis iaculis volutpat ac adipiscing accumsan eu faucibus. Integer ac pellentesque praesent tincidunt felis sagittis eget. tempus euismod. Vestibulum ante ipsum primis in faucibus vestibulum. Blandit adipiscing eu felis iaculis volutpat ac adipiscing accumsan eu faucibus. Integer ac pellentesque praesent. Donec accumsan interdum nisi, quis tincidunt felis sagittis eget. tempus euismod. Vestibulum ante ipsum primis in faucibus vestibulum. Blandit adipiscing eu felis iaculis volutpat ac adipiscing accumsan eu faucibus. Integer ac pellentesque praesent tincidunt felis sagittis eget. tempus euismod. Vestibulum ante ipsum primis in faucibus vestibulum. Blandit adipiscing eu felis iaculis volutpat ac adipiscing accumsan eu faucibus. Integer ac pellentesque praesent.</p>
						</section>

					</section>
				-->

	</div>

	<!-- Footer -->
	<!-- <footer id="footer">
				<div class="inner">
					<ul class="icons">
						<li><a href="#" class="icon fa-twitter"><span class="label">Twitter</span></a></li>
						<li><a href="#" class="icon fa-github"><span class="label">Github</span></a></li>
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