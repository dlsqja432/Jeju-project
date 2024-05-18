<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="UTF-8">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>제주도 공공기관 안내</title>
<link rel="stylesheet" href="${path0 }/css/common.css">
<%@ include file="/head.jsp"%>
<style>
.breadcrumb {
	list-style: none;
	width: 920px;
	padding: 15px;
	margin: 0;
	border-top: 2px solid #ececec;
}

.breadcrumb li {
	display: inline;
}

.breadcrumb li:not (:last-child ):after {
	content: "/";
	margin: 0 5px;
}

.breadcrumb li a {
	text-decoration: none;
	color: #007bff;
}

.breadcrumb li a:hover {
	text-decoration: underline;
}

#contents {
	width: 100%;
}

.page {
	clear: both;
	width: 1200px;
	min-height: 100vh;
	margin: 0 auto;
	margin-top: 20px;
}

.page::after {
	content: "";
	display: block;
	width: 100%;
	clear: both;
}

.page_title {
	text-align: center;
	padding-top: 2em;
	padding-bottom: 0.5em;
}

#page1 {
	min-height: calc(100vh - 150px);
	margin-bottom: 10px;
}

#page_title1 {
	text-align: center;
	font-size: 32px;
	font-weight: bold;
	padding-top: 2rem;
	padding-bottom: 2rem;
}

#side_bar {
	width: 250px;
	min-height: 100vh;
	border: 2px solid #333;
	float: left;
	border: 1px solid #ececec;
}

#side_bar_title {
	width: 100%;
	height: 170px;
	line-height: 170px;
	text-align: center;
	font-size: 32px;
	font-weight: bold;
	background-color: #afebff;
}

#side_bar li {
	width: 240px;
	height: 50px;
	padding-left: 10px;
	font-size: 16px;
	line-height: 50px;
	border-bottom: 2px solid #ececec;
}

#search {
	width: 950px;
	height: 100px;
	text-align: center;
	line-height: 100px;
	background-color: #ccc
}

#search #inp1 {
	width: 100px;
	height: 40px;
	padding-left: 10px;
	font-size: 16px;
	border-radius: 8px;
	border-style: none;
}

#search #inp2 {
	width: 500px;
	height: 40px;
	padding-left: 10px;
	font-size: 16px;
	border-radius: 8px;
	border-style: none;
}

.tb_wrap {
	width: 850px;
	margin: 10px auto;
	padding-bottom: 20px;
	margin-bottom: 20px;
	float: left;
}

.tb_wrap:after {
	content: "";
	display: block;
	width: 100%;
	clear: both;
}

.boxBuilding {
	display: flex;
	flex-wrap: wrap;
	justify-content: space-evenly;
}

.itemBuilding {
	width: 210px;
	height: 210px;
	border: 5px solid gray;
	margin: 10px;
	position: relative;
}

.img_text {
	position: absolute;
	top: 0;
	bottom: 0;
	left: 0;
	right: 0;
	visibility: hidden;
	align-content: center;
	justify-content: center;
	text-align: center;
	opacity: 0;
	/* transition effect. not necessary */
	transition: opacity .2s, visibility .2s;
}

.itemBuilding:hover .img_text {
	visibility: visible;
	opacity: 1;
	-webkit-opacity: 1;
}

.itemBuilding:hover img {
	webkit-filter: blur(4px); /* Chrome, Safari, Opera */
	filter: blur(4px);
}
</style>
</head>
<body>
	<%@ include file="/header.jsp"%>

	<main id="contents" class="clr-fix">
		<section class="page" id="page1">
			<nav id="side_bar">
				<ul>
					<h3 id="side_bar_title">이용안내</h3>
					<li><a href="traffic.jsp">교통편 안내</a></li>
					<li><a href="building.jsp">공공기관 안내</a></li>
					<li><a href="food.jsp">음식점 안내</a></li>
					<li><a href="hotel.jsp">숙박시설 안내</a></li>
				</ul>
			</nav>
			<div class="tb_wrap">
				<h2 class="page_title" id="page_title1">공공기관 안내</h2>
				<ol class="breadcrumb">
					<li><a href="main.html">Home</a></li>
					<li><a href="#">Information</a></li>
					<li>공공기관 안내</li>
				</ol>
				<div class="boxBuilding">
					<div class="itemBuilding">
						<img src="${ipath}/images/building/building01_200.jpg" alt="">
						<span class="img_text" style=""><a
							style="background: white; display: inline; text-decoration: none;"
							href="https://jj.nec.go.kr/jj/main/main.do
						 "
							target="_blank">제주도선거관리위원 <br> 바로가기</a></span>

					</div>
					<div class="itemBuilding">
						<img src="${ipath}/images/building/building02_200.jpg" alt="">
						<span class="img_text" style=""><a
							style="background: white; display: inline; text-decoration: none;"
							href="https://ijto.or.kr/korean/
						 " target="_blank">제주관광공사 <br> 
								바로가기</a></span>

					</div>
					<div class="itemBuilding">
						<img src="${ipath}/images/building/building03_200.jpg" alt="">
						<span class="img_text" style=""><a
							style="background: white; display: inline; text-decoration: none;"
							href="https://www.jpdc.co.kr/index.htm" target="_blank">제주도개발공사<br>
								바로가기</a></span>

					</div>
					<div class="itemBuilding">
						<img src="${ipath}/images/building/building04_200.jpg" alt="">
						<span class="img_text" style=""><a
							style="background: white; display: inline; text-decoration: none;"
							href="https://www.jejusi.go.kr/index.ac " target="_blank">제주시청<br>
								바로가기</a></span>

					</div>
					<div class="itemBuilding">
						<img src="${ipath}/images/building/building05_200.jpg" alt="">
						<span class="img_text" style=""><a
							style="background: white; display: inline; text-decoration: none;"
							href="https://www.seogwipo.go.kr/   " target="_blank">서귀포시청<br>
								바로가기</a></span>
							<!-- 현재 홈페이지 접속불가 -->
					</div>
					<div class="itemBuilding">
						<img src="${ipath}/images/building/building06_200.jpg" alt="">
						<span class="img_text" style=""><a
							style="background: white; display: inline; text-decoration: none;"
							href="http://www.jfac.kr/" target="_blank">제주문화예술재단<br> 바로가기</a></span>

					</div>
					<div class="itemBuilding">
						<img src="${ipath}/images/building/building07_200.jpg" alt="">
						<span class="img_text" style=""><a
							style="background: white; display: inline; text-decoration: none;"
							href="https://www.jejutp.or.kr/" target="_blank">제주테크노파크<br>
								바로가기</a></span>

					</div>
					<div class="itemBuilding">
						<img src="${ipath}/images/building/building08_200.jpg" alt="">
						<span class="img_text" style=""><a
							style="background: white; display: inline; text-decoration: none;"
							href="https://ofjeju.kr/ " target="_blank">제주영상문화산업진흥원<br> 바로가기</a></span>

					</div>
					<div class="itemBuilding">
						<img src="${ipath}/images/building/building09_200.jpg" alt="">
						<span class="img_text" style=""><a
							style="background: white; display: inline; text-decoration: none;"
							href="http://www.visitjeju.or.kr/ " target="_blank">제주도관광협회<br>
								바로가기</a></span>

					</div>
				</div>

			</div>


		</section>

	</main>

	<%@include file="/footer.jsp"%>
</body>

</html>

