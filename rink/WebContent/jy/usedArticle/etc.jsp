<%@page import="ym_com.DAO.ym_FileVO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html style = "height: 0px;">
<head>

<script type="text/javascript">
function changeIframeUrl(url) { 
	document.getElementById("main_frame").src = url;
	document.getElementById("main_frame1").src = url;
	
}
</script>
<style type="text/css">
.inner{
	background-image: url(back_image/childnotice6.jpg) !important;
	color:black;
	text-align: left;
}
#header1{
	background-image: url(back_image/main2.png) !important;
}
.number{
	text-align: left;
	color : black;
	}
.poptrox-popup {
	width: 85% !important;
	height: 85% !important;
}

.poptrox-popup .caption {
	color: black !important;
	height: 40% !important;
	opacity: 0.5 !important;
}

.pic {
	height: 60% !important;
}

#top {
	background-image: url(back_image/main1.png) !important;
	font-family: 'a고래야놀자' !important;
}

#tag {
	margin-top: 40%;
}

#back {
	background-image: url(back_image/main1.png) !important;
}

tr {
	color: black;
	align-self: center;
}

#two {
	width: 115%;
}
</style>
<title>to baby from mom, message board</title>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<link rel="stylesheet"
	href="http://fonts.googleapis.com/earlyaccess/nanumpenscript.css">
<!-- <link rel="stylesheet" href="assets/css/main.css" /> -->
<link rel="stylesheet" href="assets/css/main2.css" />
</head>
<body id="top" class="homepage" style="text-align: center;">
	<div id="back">
		<!-- <header id="header1">
		<div class="inner1">

			<a href="#" class="image avatar" style="margin-right: 40px;"><img
				src="back_image/baby.jpg" alt="" /></a>
			<p align="center">??맘</p>
			<input type="button" name="write" value="글쓰기"
				onclick="location.href='ym_writing.jsp'"
				style="width: 50px; height: 50px; min-width: 6em !important; font-size: 15px; text-align: center; color: black !important; margin-right: 0px; font-family: 'a고래야놀자'">
			<input type="button" name="menu" value="목  록"
				onclick="location.href='ym_messageboard.jsp'"
				style="width: 50px; height: 50px; min-width: 6em !important; font-size: 15px; text-align: center; color: black !important; margin-right: 0px; font-family: 'a고래야놀자'">
			<h1><strong>I am Strata</strong>, a super simple<br />
					responsive site template freebie<br />
					crafted by <a href="http://html5up.net">HTML5 UP</a>.</h1>
		<input type="button" value='유모차' onclick = "changeIframeUrl('../Notice/writing.jsp')"></input>
		<input type="button" value='보행기' onclick = "changeIframeUrl('../Notice/README.txt')"></input>
		<input type="button" value='아기침대' onclick = "changeIframeUrl('../Notice/Notice1.jsp')"></input>
		<input type="button" value='기타' onclick = "changeIframeUrl('../Notice/Notice1.jsp')"></input>
		</div>
		</header>
	</div> -->
	<!-- Header -->
	<!-- Menu -->
	<div id="wrapper">

		<!-- Header -->
		<header id="header" style = "padding-top: 0px; padding-bottom: 0px;">
		<div class="inner">

			<!-- Logo -->

			<!-- Nav -->
			<!-- <nav>
			<ul>
				<li><a href="#menu">Menu</a></li>
			</ul>
			</nav> -->

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

	<div id="main"
		style="margin-left: 384px;margin-right: 100px;padding-top: 0px;padding-bottom: 0px;padding-left: 0px;padding-right: 0px;border-bottom-width: 100px;">

		<!-- One -->
		<!-- 	<section id="one">
			<header class="major">
				<h2>To Baby From Mom.</h2>
			</header>
			<p>Accumsan orci faucibus id eu lorem semper. Eu ac iaculis ac nunc nisi lorem vulputate lorem neque cubilia ac in adipiscing in curae lobortis tortor primis integer massa adipiscing id nisi accumsan pellentesque commodo blandit enim arcu non at amet id arcu magna. Accumsan orci faucibus id eu lorem semper nunc nisi lorem vulputate lorem neque cubilia.</p>
				<ul class="actions">
					<li><a href="writing.jsp" class="button">Message Writing</a></li>
					<li><a href="#" class="button">Logout</a></li>
				</ul>
		</section> -->

		 <%
         ServletContext context = getServletContext();
         String saveDir = context.getRealPath("supload");
         request.setAttribute("save", saveDir);
         System.out.print(saveDir);
      %>
      <!-- Two -->
      <section id="two"
         style="border-top-width: 0px; margin-top: 0px; padding-top: 50px;">
      <h2>중고품 판매</h2>
      <div class="row">
         <%            
            ArrayList<ym_FileVO> vo = (ArrayList<ym_FileVO>) session.getAttribute("list");
            request.setAttribute("totalPage", vo.size() % 9 == 0 ? vo.size() / 9 : vo.size() / 9 + 1);
            request.setAttribute("last", vo.size() % 9);
            request.setAttribute("vosize", vo.size());
         %>
        
         <c:choose>
   
            <c:when test="${not empty sessionScope.list}">
                     <c:set var="list" value="${sessionScope.list}" scope="request"></c:set>
               <c:choose>
               <c:when test="${(empty param.page) or param.page==0} ">
               <c:choose>
               <c:when test="${last ==  1}">
               <article class="6u 12u$(xsmall) work-item"> <a
                        href="../../supload/${list[0].filename}" class="image fit thumb"
                        style="max-width: 300px; max-height: 300px;"><img
                        src="../../supload/${list[0].filename}" alt=""
                        style="width: 300px; height: 300px;" /></a>

                     <h3 style="font-size: 0px;">${list[0].text}</h3>
                     <h2>${list[0].title}</h2>
                     <p>
                     <h3>${list[0].num}.
                        ${list[0].wdate}<a
                           href='../../ym_numService?num=${list[0].num }'> 수정</a><a
                           href='../../ym_deleteService?num=${list[0].num}'> 삭제</a>
                     </h3>
                     </p>
                     </article>
               </c:when>
               <c:otherwise>
               
               <c:forEach begin="0" end="${last-1}" var="i">
                     
                     <article class="6u 12u$(xsmall) work-item"> <a
                        href="../../supload/${list[i].filename}" class="image fit thumb"
                        style="max-width: 300px; max-height: 300px;"><img
                        src="../../supload/${list[i].filename}" alt=""
                        style="width: 300px; height: 300px;" /></a>

                     <h3 style="font-size: 0px;">${list[i].text}</h3>
                     <h2>${list[i].title}</h2>
                     <p>
                     <h3>${list[i].num}.
                        ${list[i].wdate}<a
                           href='../../ym_numService?num=${list[i].num }'> 수정</a><a
                           href='../../ym_deleteService?num=${list[i].num}'> 삭제</a>
                     </h3>
                     </p>
                     </article>
                  </c:forEach>
               </c:otherwise>
               </c:choose>
               </c:when>
               <c:otherwise>
               <c:choose>
               <c:when test="${param.page != totalPage-1}">
               
               <c:forEach begin="${param.page*9}" end="${param.page*9+8}" var="i">
                     
                     <article class="6u 12u$(xsmall) work-item"> <a
                        href="../../supload/${list[i].filename}" class="image fit thumb"
                        style="max-width: 300px; max-height: 300px;"><img
                        src="../../supload/${list[i].filename}" alt=""
                        style="width: 300px; height: 300px;" /></a>

                     <h3 style="font-size: 0px;">${list[i].text}</h3>
                     <h2>${list[i].title}</h2>
                     <p>
                     <h3>${list[i].num}.
                        ${list[i].wdate}<a
                           href='../../ym_numService?num=${list[i].num }'> 수정</a><a
                           href='../../ym_deleteService?num=${list[i].num}'> 삭제</a>
                     </h3>
                     </p>
                     </article>
                  </c:forEach>
               </c:when>
               <c:when test="${param.page == totalPage-1}">
               <c:choose>
               <c:when test="${last != 1}">
               <c:forEach begin="${param.page*9}" end="${param.page*9+last-1}" var="i">
                     
                     <article class="6u 12u$(xsmall) work-item"> <a
                        href="../../supload/${list[i].filename}" class="image fit thumb"
                        style="max-width: 300px; max-height: 300px;"><img
                        src="../../supload/${list[i].filename}" alt=""
                        style="width: 300px; height: 300px;" /></a>

                     <h3 style="font-size: 0px;">${list[i].text}</h3>
                     <h2>${list[i].title}</h2>
                     <p>
                     <h3>${list[i].num}.
                        ${list[i].wdate}<a
                           href='../../ym_numService?num=${list[i].num}'> 수정</a><a
                           href='../../ym_deleteService?num=${list[i].num}'> 삭제</a>
                     </h3>
                     </p>
                     </article>
                  </c:forEach>
                  </c:when>
                  <c:otherwise>
                  
                     
                     <article class="6u 12u$(xsmall) work-item"> <a
                        href="../../supload/${list[param.page*9].filename}" class="image fit thumb"
                        style="max-width: 300px; max-height: 300px;"><img
                        src="../../supload/${list[param.page*9].filename}" alt=""
                        style="width: 300px; height: 300px;" /></a>

                     <h3 style="font-size: 0px;">${list[param.page*9].text}</h3>
                     <h2>${list[param.page*9].title}</h2>
                     <p>
                     <h3>${list[param.page*9].num}.
                        ${list[param.page*9].wdate}<a
                           href='../../ym_numService?num=${list[param.page*9].num }'> 수정</a><a
                           href='../../ym_deleteService?num=${list[param.page*9].num}'> 삭제</a>
                     </h3>
                     </p>
                     </article>
                  <
                  </c:otherwise>
                  </c:choose>
               </c:when>
               </c:choose>
               </c:otherwise>
               </c:choose>
               </c:when>
               </c:choose>
               
         <c:choose>
         <c:when test="${vosize==0 }">
         
         </c:when>
         <c:when test="${vosize<9 and vosize != 0 }">
         <a href="ym_messageboard.jsp?page=0"> 1</a>
         </c:when>
         <c:otherwise>
         <c:forEach begin="0" end="${totalPage-1}" var="i">
            <div>
               <a href="ym_messageboard.jsp?page=${i}"> ${i+1}</a>
            </div>

         </c:forEach>
         </c:otherwise>
         </c:choose>
      

      </div>
      
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