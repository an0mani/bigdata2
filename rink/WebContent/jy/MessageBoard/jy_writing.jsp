<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style type="text/css">
#top {
	background-image: url("images/back.png");
	background-repeat: inherit;
	background-size: cover;
	font-family: 'a�����߳���';
}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<link rel="stylesheet" href="assets/css/main.css" />
<link rel="stylesheet"
	href="http://fonts.googleapis.com/earlyaccess/nanumpenscript.css">
<title>Insert title here</title>
</head>
<body id="top">
	<section id="three">
	<p></p>
	
	<h1 align="center">
		<img src="writingicon.png" width="500px" height="200px">
	</h1>
	<p align="center"></p>
	<div class="row" style="padding-left: 500px; padding-right: 0px">
		<div class="8u 12u$(small)">		
			<c:choose>
				<c:when test="${not empty sessionScope.set}">
				<c:forEach items = "${sessionScope.set}" var="set" >
					<form method="post" action="../../updateService"
						enctype="multipart/form-data">
						<div class="row uniform 50%">
							<div class="6u 12u$(xsmall)">
								<input type="text" name="title" id="title" placeholder="title"
									value="${set.title }"
									style="font-family: 'a�����߳���'; color: black; border:1px solid #A6A6A6; border-width:3px 3px 3px 3px;" />
							</div>
							<div class="6u$ 12u$(xsmall)">
								<input type="text" name="name" id="name" placeholder="name"
									value="${set.name }"
									style="font-family: 'a�����߳���'; color: black; border:1px solid #A6A6A6; border-width:3px 3px 3px 3px;" />
							</div>
							<div class="6u$ 12u$(xsmall)">
								<input type="date" name="date" id="date"
									value="${set.wdate }"
									style="font-family: 'a�����߳���'; color: black; border:1px solid #A6A6A6; border-width:3px 3px 3px 3px;" />
							</div>
							<div class="6u$ 12u$(xsmall)">
								<input type="file" name="file" id="file" placeholder="file"
									value="${set.filename }"
									style="font-family: 'a�����߳���'; color: black;" />
							</div>
							<div class="12u$">
								<textarea name="message" id="message" placeholder="Message" rows="8" 
								value="${set.text }"
									style="font-family: 'a�����߳���'; color: black; border:1px solid #A6A6A6; border-width:3px 3px 3px 3px;"></textarea>
							</div>
							<div class="12u$">
								<input type="submit" value="Send Message"
									style="font-family: 'a�����߳���'; color: black; border:1px solid #A6A6A6; border-width:3px 3px 3px 3px;" />
									<input type="button" value="Previous page"
									style="font-family: 'a�����߳���'; color: black; border:1px solid #A6A6A6; border-width:3px 3px 3px 3px;" />
							</div>
						</div>
					</form>
					</c:forEach>
				</c:when>
				<c:otherwise>
					<form method="post" action="../../messageboard"
						enctype="multipart/form-data">
						<div class="row uniform 50%">
							<div class="6u 12u$(xsmall)">
								<input type="text" name="title" id="title" placeholder="title"
									style="font-family: 'a�����߳���'; color: black; border:1px solid #A6A6A6; border-width:3px 3px 3px 3px;" />
							</div>
							<div class="6u$ 12u$(xsmall)">
								<input type="text" name="name" id="name" placeholder="name"
									style="font-family: 'a�����߳���'; color: black; border:1px solid #A6A6A6; border-width:3px 3px 3px 3px;" />
							</div>
							<div class="6u$ 12u$(xsmall)">
								<input type="date" name="date" id="date"
									style="font-family: 'a�����߳���'; color: black; border:1px solid #A6A6A6; border-width:3px 3px 3px 3px;" />
							</div>
							<div class="6u$ 12u$(xsmall)">
								<input type="file" name="file" id="file" placeholder="file"
									style="font-family: 'a�����߳���'; color: black;" />
							</div>
							<div class="12u$">
								<textarea name="message" id="message" placeholder="Message"
									rows="8" style="font-family: 'a�����߳���'; color: black; border:1px solid #A6A6A6; border-width:3px 3px 3px 3px;"></textarea>
							</div>
							<div class="12u$">
								<input type="submit" value="Send Message"
									style="font-family: 'a�����߳���'; color: black; border:1px solid #A6A6A6; border-width:3px 3px 3px 3px;" />
									<input type="button" value="Previous page"
									style="font-family: 'a�����߳���'; color: black; border:1px solid #A6A6A6; border-width:3px 3px 3px 3px;" />
							</div>
						</div>
					</form>
				</c:otherwise>
			</c:choose>
		</div>
	</div>
	</section>
</body>
</html>