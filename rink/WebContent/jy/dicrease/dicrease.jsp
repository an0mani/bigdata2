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
	font-family: 'a���߳���' !important;
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
					<p align="center">??��</p>
						<input type = "button" name = "menu" value = "��  ��" onclick="location.href='jy_messageboard.jsp'" style="width: 50px; height: 50px; min-width: 6em !important; font-size: 15px; text-align: center; color: black !important; margin-right: 0px; font-family: 'a���߳���'">
						<input type = "button" name = "notice" value = "��������" onclick="location.href='jy_messageboard.jsp'" style="width: 50px; height: 50px; min-width: 6em !important; font-size: 15px; text-align: center; color: black !important; margin-right: 0px; font-family: 'a���߳���'">
						<input type = "button" name = "button1" value = "��ư1" onclick="location.href='jy_messageboard.jsp'" style="width: 50px; height: 50px; min-width: 6em !important; font-size: 15px; text-align: center; color: black !important; margin-right: 0px; font-family: 'a���߳���'">
						<input type = "button" name = "button2" value = "��ư2" onclick="location.href='jy_messageboard.jsp'" style="width: 50px; height: 50px; min-width: 6em !important; font-size: 15px; text-align: center; color: black !important; margin-right: 0px; font-family: 'a���߳���'">
						<input type = "button" name = "button3" value = "��ư3" onclick="location.href='jy_messageboard.jsp'" style="width: 50px; height: 50px; min-width: 6em !important; font-size: 15px; text-align: center; color: black !important; margin-right: 0px; font-family: 'a���߳���'">
						<input type = "button" name = "button4" value = "��ư4" onclick="location.href='jy_messageboard.jsp'" style="width: 50px; height: 50px; min-width: 6em !important; font-size: 15px; text-align: center; color: black !important; margin-right: 0px; font-family: 'a���߳���'">
					<p style="color: black;" >${sessionScope.month} �ֻ縦 �¾ƾ��մϴ�. �ڼ��� ������ �������� �޴��� �������ּ���</p>
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
			<li><a href="../../ym_SelectService">�Ʊ� ��ǰ ����</a></li>
			<li><a href="../../DiarySelectService">������ �����ϱ�</a></li>
			<li><a href="../../SelectService">�̾߱��ؿ�</a></li>
			<li><a href="../BabyInfo/jy_BabyInfo.jsp">���� �Ʊ�����</a></li>
			<li><a href="../MessageBoard/logout.jsp">�α׾ƿ�</a></li>
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
		<h1 align = center>�������м�</h1>
		<div class="row">
		<div style="height: 500px;width: 100%;"><iframe src="http://olapopendata.hira.or.kr/analysis/desktop/poc2.jsp#report_id=b235b0f3-24cb47fe&amp;PARAM1=" frameborder="0" width="100%" height="100%" class="olapViewFrame"></iframe></div>
		
			<h1>��������Top5</h1>
			<h1 align = "center">1.����</h1>
			<h2>����� ��� �Ӹ� �ƴ϶� ��鵵 ���� �߻�����. �� 200�� �� �̻��� ���̷����� ���� �߻��ϴ� ȣ������ ���� �����̶��ϴ�. �ַ� ���̷����� ���̾Ͼ� �ɸ��� ȣ������� ������ ���� �ڰ� ������ ���� ���� ���� ������ �ֽ��ϴ�. ������� ��Ÿ���� ���� ���� �޼� ��ȯ �� �ϳ��ε���. ��ä��, �ڸ���, �๰, ������, ��ħ, �̿�, ���� �� ������� ���� ������ ��Ÿ������ �밳�� Ư���� ġ�� ���̵� ������ ġ���˴ϴ�.</h2>
			<h2>[�����]</h2>
			<h2>�� ���� ���� �ľ� �տ� ���� ���� �� �ִ� ���� ���̷����� ���ְ�<br>�� ������ ���̳� ��, �� ���� ���ų� ������ �ʵ��� �մϴ�.<br>�� ���� ���� ���� �ϻ� ��ǰ�� �ٸ������� �Բ� ���� �ʴ°��� �����ϴ�.<br>�� ��ħ�� �Ҷ����� ������ ������ �ʰ� �Ӹ��� �Ʒ��� ������ �ٴ��� ���ϵ��� �մϴ�.<br>�� ��̴� ���ο� ���� �鿪���� ���� ���� ���̷����� ������ Ȯ���� �����Ƿ� �ο��� �ʹ� ���� ���� ���ϵ��� �մϴ�.</h2><br>
			<h1 align = "center">2.�ε� / ������</h1>
			<h2>�ε�/������ ������ ���� ������ �״� ���� ���ϴµ���. �ε�/�������� �����̳� ���̷����� ���� � ���ؼ� �ε����� �� ������ ������ ����� �Ƿ�, ����� ����, �������, �����κ񰭿��̳� ����, ���������� ���� ������ �Ͼ�ϴ�. ������ ���ڱ� ��Ÿ���µ�, �ε��� �̹����̳� ������ �ܿ� �¸��� �����ϰ� �Ŀ��� �������� �߿��� �����ϱ⵵ �մϴ�.</h2>
			<h2>[�����]</h2>
			<h2>�� ��ҿ� ���������� �����ϰ� ���� ���� �Ĵ� ������ ������ �մϴ�.<br>�� ����� ���м��� �� �޽İ� ���������� �߿��մϴ�.<br>�� ���� ����ȭ�Ҽ� �Ǵ� ������ �����Ŀ����� �Ծ��� û���� �����ϴ� �� ������ �˴ϴ�.<br>�� ���Ĺ��� ��Ű�� ���� ��� �װ� ���� �ε巯�� ������ �Խ��ϴ�.</h2><br>
			<h1 align = "center">3.���ߵ� �� �忰</h1>
			<h2>���ߵ��� ������ ���Ĺ��� ���� ���� ������ �߻��ϴ� �Ϸ��� ���ı��� ���ϴµ���. �忰�� ��� ��κ� ���� ����� ������ �ֱ� ������ ���ߵ��� ���� �����ϱ�� ��ƴ�ϴ�. ������ ���� �ẹ��� ������ ������ �ٸ��� ��Ÿ���� �Ǵµ�, �Ϲ������� ���Ĺ� ���� �� 72�ð� �̳��� ����, ����, ����, �߿� ���� ������ ��Ÿ���ϴ�.</h2>
			<h2>[�����]</h2>
			<h2>�� ���Ĺ��� �����ϰų� ���� �Ǵ� ������ �ؾ� �� ���� �ݵ�� ���� �İ� ������ �մϴ�.<br>�� ���� ������ǰ�� �߽ɺ� �µ��� 74�� �̻����� 1�� �̻� �����Ͽ� ���� �Ծ�� �մϴ�.<br>�� 4�� ���� 60���� �µ��� ���ߵ��� ����Ű�� ���� ���� ���ɼ��� ���� �µ� �����̹Ƿ� �߰ſ� ������ 60�� �̻����� �����ϰ� �� ������ 4�� ���Ϸ� ���庸���Ͽ� �����ϵ��� �մϴ�.</h2>
			<h1 align = "center">4.�Ҿ�õ��</h1>
			<h2>������� ��������� õ���� �պ����Դϴ�.�˷����Ⱑ ������ �Ǿ� ����� ������, �๰�� ��ħ�� ���� ���� �� �� �񿡼� '������'�Ÿ��� �Ҹ��� ���ϴ�. �Ҿƿ��� �� �� ������� �������� ���� ��ħ, �ٻ��Ÿ�, ���� ����� ���� ������ ��Ÿ���� ȣ��� ��ȯ���� Ư�� ��ħ�� �� �������� õ�� ġ�ῡ ������ ���� ��쿡�� õ�ľ� ��������̶�� �մϴ�.�⺻������ �Ҿ� õ���� �߻� ���� �� ���� ���� ��� ������ õ�İ� ��������� ���� ��� �� ���Ŀ� �־ ���̰� ���ϴ�. ���ο� �˷����⼺ ���� ������ �����Ѵٰ� �˷��� ������, ������ ���ΰ� ȯ���� ���� ����� ������ �޽��ϴ�.</h2>
			<h2>[�����]</h2>
			<h2>�� õ���� ���� ������ ȸ���ϰ� ��ȭ ���ο� ������ �ּ�ȭ�ϴ� ���� �ʿ��մϴ�.<br>�� ���� �˷����� ������ �˰� �ִ� ��� ������ �ּ�ȭ�� �� �ִ� ��Ȱ ȯ���� �����ϴ� ���� �����ϴ�.<br>�� �� ���� ������� ��� �������� ������ �ʼ����Դϴ�.<br>�� �ɰ��� �� Ȳ�� ���� ��ȭ ������ ���ͳ� ��� �ǽð� ȭ������ ��Ȳ�� ������ Ȯ���� ������ ���ϴ� ���� �����ϴ�.</h2><br>
			<h1 align = "center">5.�˷����⼺ ��</h1>
			<h2>�������� ��ä��, ��� �귯 ������ ���� �๰, �ڸ���, �������� ���� ������ ���̴� �� ������ ��ȯ�Դϴ�. ���������� �Ͼ�� �������� ��ä��, ���� �๰, �ڸ��� ���� �� ���� �ֿ� ������ Ư¡���� �ϸ�, �� �� ���� ���� �� �� ���� �̻��� ������ ������ ���� �� �˷����� ���� �ǽ��� �� �ֽ��ϴ�. �Ϲ������� ��Ÿ���� Ư¡���� ���� �̿ܿ��� �� ���� �������̳� ����, �İ� ���� ���� ������ ���ݵ� �� ������ �պ������� ���̿�, �κ񵿿�, ���ĵο��� ���ݵ� �� ������ �����ؾ� �մϴ�.</h2>
			<h2>[�����]</h2>
			<h2>�� �Ϲ����� ��������δ� ������ �µ��� ��ȭ, ��� ���⳪ �ſ�, ȭ��ǰ, ��Ʈ���� ���� ���ϰ� �ֺ��� û���ϰ� ���ִ� ����� �ֽ��ϴ�.<br>�� �ɰ��簡 ���� �������� â���� �ݰ� ������ ������ ����ũ�� �����մϴ�.<br>�� �� ���� ������� ��� ħ��, �̺�, ����, ��� �� ������ ���� ���ų� ����Ǵ� ������ ���۰� �޸� Ŀ���� ����ϰ�, Ŀ���� ��� �մϴ�. Ư�� ���Ͱ� ������ ����û�ұ⸦ �̿��� �ǳ� û�ҵ� ������ �˴ϴ�.</h2>
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