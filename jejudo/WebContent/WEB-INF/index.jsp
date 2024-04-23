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
.recommend { width:540px; height:600px; 
	padding:15px; margin:40px 50px; box-shadow:0px 0px 40px #666;
	float:left; border-bottom-right-radius: 80px;}
.re_wrap { width:100%; clear:both; }	
.re_wrap:after { content:""; display: block; width:100%; clear:both; }
.subtitle { text-align:center; z-index:3}
.pos_box article { width:100px; height: 100px;
        text-align: center; border-radius:50px 50px 0px 50px; position:absolute; }
article.art1 { background-color:#ffff9c; top:20px; left:170px; z-index:2; filter:opacity(70%);} 
article.art2 { background-color:#afebff; top:20px; right:380px; z-index:2; filter:opacity(70%);} 
.img_item { display:block; width:400px; height:auto; margin:30px auto;}
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
		<div class="re_wrap">	
			<div class="recommend" id="recommend1">
				<div class="pos_box">
	                <article class="art1"></article>
	                <article class="art2"></article>
	            </div>
				<h2 class="subtitle"><strong>추천 문화재</strong></h2>
				<img class="img_item" src="images/hanok.jpg" alt="한옥사진">
				<div>
					<p>제주도 한옥 생활을 체험해보세요!</p>
				</div>
			</div>
			<div class="recommend" id="recommend2">
				<h2 class="subtitle"><strong>Top 여행코스</strong></h2>
				<img class="img_item" src="images/udo1.jpg" alt="한옥사진">
				<div class="">
					<p>용암지대 특유의 지형을 갖고 있는 우도를 방문해보세요!</p>
				</div>
			</div>
		</div>	
		<div>
		
		</div>
	</section>
</div>
<div id="footer">
	<%@ include file="/footer.jsp" %>
</div>
</body>
</html>