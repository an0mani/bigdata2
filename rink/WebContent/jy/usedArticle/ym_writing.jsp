<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style type="text/css">
	#top {
		background-image: url("sunflower4.jpg");
		background-repeat: inherit;
		background-size:cover;
		font-family: 'a고래야놀자';
	}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<link rel="stylesheet" href="assets/css/main.css" />
<link rel="stylesheet" href="http://fonts.googleapis.com/earlyaccess/nanumpenscript.css">
<title>Insert title here</title>
</head>
<body id="top">
	<section id="three">
	<p></p>
	<h1 align="center"><img src="writingicon.png" width="500px" height="200px"></h1>
	<p align="center"></p>
	<div class="row" style="padding-left: 500px; padding-right: 0px">
		<div class="8u 12u$(small)">
			<c:choose>
				<c:when test="${not empty sessionScope.set}">
				<c:forEach items = "${sessionScope.set}" var="set" >
				<form method="post" action="../../ym_updateService" enctype="multipart/form-data">
				<div class="row uniform 50%">
				
					<div class="6u 12u$(xsmall)">
						<input type="text" name="title" id="title" value="${set.title }" placeholder="title" style="font-family: 'a고래야놀자';color:black;"/>
					</div>
					<div class="6u$ 12u$(xsmall)">
						<input type="file" name="file" id="file" value="${set.filename }" placeholder="file"  style="font-family: 'a고래야놀자';color:black;"/>
					</div>					
					<div class="12u$">
						<textarea name="text" id="text" placeholder="text" value="${set.text }" rows="8" style="font-family: 'a고래야놀자';color:black;" ></textarea>
					</div>
					<div class="12u$">
						<input type="submit" value="Send Message" style="font-family: 'a고래야놀자';color:black;" />
						<input type="button" value="Previous page" style="font-family: 'a고래야놀자';color:black;" />
					</div>
				</div>
				
			</form>
					</c:forEach>
				</c:when>
				<c:otherwise>
					<form method="post" action="../../ym_UploadService" enctype="multipart/form-data">
				<div class="row uniform 50%">
				
					<div class="6u 12u$(xsmall)">
						<input type="text" name="title" id="title" placeholder="title" style="font-family: 'a고래야놀자';color:black;"/>
					</div>
					<div class="6u$ 12u$(xsmall)">
						<input type="file" name="file" id="file" placeholder="file"  style="font-family: 'a고래야놀자';color:black;"/>
					</div>					
					<div class="12u$">
						<textarea name="text" id="text" placeholder="text" rows="8" style="font-family: 'a고래야놀자';color:black;" ></textarea>
					</div>
					<div class="12u$">
						<input type="submit" value="Send Message" style="font-family: 'a고래야놀자';color:black;" />
						<input type="button" value="Previous page" style="font-family: 'a고래야놀자';color:black;" />
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