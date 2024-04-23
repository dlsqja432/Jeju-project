<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path0" value="<%=request.getContextPath() %>" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>${title }</title>
<%@ include file="/head.jsp" %>
<style>
* { margin: 0; padding: 0; }
body, html { width:100%; overflow-x:hidden; }
ul { list-style:none; }
a { text-decoration: none; color:#333; }
.page { clear:both; width:1280px; min-height:100vh; margin:0 auto; margin-top:113px;}
#page1 { background-color:#ececec; min-height:calc(100vh - 158px); }
#recommend { width:550px; height:500px; border:2px solid #333; padding:15px; margin:20px;
	float:left; }
</style>
</head>
<body>
<div id="header">
	<%@ include file="/header.jsp" %>
</div>

<div id="contents" >
	<section class="page" id="page1">
		<div id="carouselExampleControls" class="carousel slide" data-ride="carousel">
			<ol class="carousel-indicators">
   				<li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
			    <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
			    <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
			 </ol>
		 	<div class="carousel-inner">
			    <div class="carousel-item active">
			      	<img src="${path0 }/images/vs4.png" class="d-block w-100" alt="First slide" >
			    </div>
			    <div class="carousel-item">
			      	<img src="${path0 }/images/vs5.png" class="d-block w-100" alt="Second slide">
			    </div>
			    <div class="carousel-item">
			      	<img src="${path0 }/images/vs6.png" class="d-block w-100" alt="Third slide">
			 	</div>
		 	</div>
		 	<a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">
			    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
			    <span class="sr-only">Previous</span>
			</a>
			<a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
			    <span class="carousel-control-next-icon" aria-hidden="true"></span>
			    <span class="sr-only">Next</span>
			</a>
		</div>
		<div id="recommend">
			<h2><strong>추천 문화재</strong></h2>
		</div>
		<div id="recommend">
			<h2><strong>Top 여행코스</strong></h2>
		</div>
	</section>
</div>
<div id="footer">
	<%@ include file="/footer.jsp" %>
</div>
</body>
</html>