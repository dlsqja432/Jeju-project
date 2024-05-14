<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="UTF-8">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>음식점 안내</title>
<!--<link rel="stylesheet" href="${path0 }/css/normalize2.css">  -->
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

.table {
	display: table;
	width: 900px;
	border-spacing: 30px;
	margin: 10px auto;
}

.table tr {
	display: table-row;
}

.table td, .table th {
	display: table-cell;
	font-size: 18px;
}

.table td:first-child {
	text-align: center;
}

.table td:last-child {
	text-align: left;
	padding-left: 50px;
	border-bottom: 3px solid #ececec;
}

.table td a {
	color: deepskyblue;
	text-decoration: underline;
}

.table th {
	padding: 15px 0px;
}

.table th img {
	width: 250px;
	height: 200px;
	padding-left: 60px;
}

.table td:nth-child(2) {
	width: 800px;
}

.btn {
	width: 102px;
	height: 40px;
	text-align: center;
	margin: 10px;
	border-radius: 15px;
	background-color: #ffff9c;
	border-style: hidden;
	cursor: pointer;
	font-size: 16px;
	font-weight: bold;
}

.btn:hover {
	background-color: #afebff;
}

.btn#btn2 {
	margin-left: 100px;
	font-weight: bold;
}

.modal {
	display: none;
	/* Hidden by default */
	position: fixed;
	/* Stay in place */
	z-index: 2;
	/* Sit on top */
	padding-top: 100px;
	/* Location of the box */
	left: 0;
	padding-left: 10%;
	top: 0;
	width: 100%;
	/* Full width */
	height: 100%;
	/* Full height */
	overflow: auto;
	/* Enable scroll if needed */
	background-color: rgb(0, 0, 0);
	/* Fallback color */
	background-color: rgba(0, 0, 0, 0.8);
	/* Black w/ opacity */
}

/* Modal Content */
.modal-content {
	position: relative;
	background-color: #fefefe;
	text-align: left;
	margin: auto;
	/*padding-right: 30%;*/
	border: 1px solid #888;
	width: 50%;
	box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0
		rgba(0, 0, 0, 0.19);
	-webkit-animation-name: animatetop;
	-webkit-animation-duration: 0.4s;
	animation-name: animatetop;
	animation-duration: 0.4s
}

/* Add Animation */
@
-webkit-keyframes animatetop {from { top:-300px;
	opacity: 0
}

to {
	top: 0;
	opacity: 1
}

}
@
keyframes animatetop {from { top:-300px;
	opacity: 0
}

to {
	top: 0;
	opacity: 1
}

}

/* The Close Button */
.close {
	color: white;
	float: right;
	font-size: 28px;
	font-weight: bold;
}

.close:hover, .close:focus {
	color: #000;
	text-decoration: none;
	cursor: pointer;
}

.modal-header {
	padding: 2px 16px;
	background-color: #5cb85c;
	color: white;
}

.modal-body {
	padding: 1% 10%;
	color: rgba(0, 0, 0, 0.6);
}

.modal-footer {
	padding: 2px 16px;
	background-color: #5cb85c;
	color: white;
}

/*버튼 */
button { -
	-color: #0077ff;
	font-family: inherit;
	display: inline-block;
	width: 6em;
	height: 2.6em;
	line-height: 2.5em;
	overflow: hidden;
	cursor: pointer;
	margin: 20px;
	font-size: 17px;
	z-index: 1;
	color: var(- -color);
	border: 2px solid var(- -color);
	border-radius: 6px;
	position: relative;
}

button::before {
	position: absolute;
	content: "";
	background: var(- -color);
	width: 150px;
	height: 200px;
	z-index: -1;
	border-radius: 50%;
}

button:hover {
	color: white;
}

button:before {
	top: 100%;
	left: 100%;
	transition: 0.3s all;
}

button:hover::before {
	top: -30px;
	left: -30px;
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
				<h2 class="page_title" id="page_title1">음식점 안내</h2>
				<ol class="breadcrumb">
					<li><a href="main.html">Home</a></li>
					<li><a href="#">Information</a></li>
					<li>음식점 안내</li>
				</ol>
				<div id="search">
					<input type="text" id="inp1" value="제목" readonly> <input
						type="text" id="inp2">
					<button type="button" class="btn" id="search_btn">검색</button>
				</div>
				<table class="table">
					<tbody>
						<tr>
							<th><img src="${ipath}/images/food/food01.jpg" alt=""></th>
							<td>
								<p>
									<strong>장소명</strong> : 돔베돈<br> <strong>주소</strong> : 제주
									제주시 관덕로15길 25<br> <strong>영업 시간</strong> : 오후 12:00 ~ 오전
									2:00 <br> <strong>전화번호</strong> : 064-753-0008
								</p> <!-- Trigger/Open The Modal -->
								<button class="modal-button" href="#myModal1">더보기</button> <!-- The Modal -->
								<div id="myModal1" class="modal"> <!-- Modal content -->
								<div class="modal-content"> <div
									class="modal-header">
								<h2>돔베돈</h2>
								<span class="close">×</span> </div> <div class="modal-body">
								<p>주소: 제주 제주시 관덕로15길 25</p>
								<iframe
									src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3326.4539512717247!2d126.52411767627474!3d33.515581245875964!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x350ce356e148ac5b%3A0xc698bcee5d6392ef!2z7KCc7KO87Yq567OE7J6Q7LmY64-EIOygnOyjvOyLnCDqtIDrjZXroZwxNeq4uCAyNQ!5e0!3m2!1sko!2skr!4v1715563463922!5m2!1sko!2skr"
									width="600" height="450" style="border: 0;" allowfullscreen=""
									loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe></div>
								<div class="modal-footer">
								<h4>찾아오시는 길:</h4>
								</div> </div> </div>
							</td>
						</tr>
						<tr>
							<th><img src="${ipath}/images/food/food02.jpg" alt=""></th>
							<td>
								<p>
									<strong>장소명</strong> : 춘심이네 본점<br> <strong>주소</strong> :
									제주특별자치도 서귀포시 안덕면 창천리 160-4 <br> <strong>영업 시간</strong> : 오전
									10:00 ~ 오후 8:00<br> <strong>전화번호</strong> : 064-794-4010
								</p> <!-- Trigger/Open The Modal -->
								<button class="modal-button" href="#myModal2">더보기</button> <!-- The Modal -->
								<div id="myModal2" class="modal"> <!-- Modal content -->
								<div class="modal-content"> <div
									class="modal-header">
								<h2>춘심이네 본점</h2>
								<span class="close">×</span> </div> <div class="modal-body">

								<p>주소: 제주특별자치도 서귀포시 안덕면 창천리 160-4</p>
								<iframe
									src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3336.0753293375014!2d126.36795217626705!3d33.26452015891209!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x350c5b474d67555f%3A0xda176d05c6907197!2z7KCc7KO87Yq567OE7J6Q7LmY64-EIOyEnOq3gO2PrOyLnCDslYjrjZXrqbQg7LC97LKc66asIDE2MC00!5e0!3m2!1sko!2skr!4v1715563496122!5m2!1sko!2skr"
									width="600" height="450" style="border: 0;" allowfullscreen=""
									loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe></div>
								<div class="modal-footer">
								<h3>찾아오시는 길:</h3>
								</div> </div> </div>
							</td>
						</tr>
						<tr>
							<th><img src="${ipath}/images/food/food03.jpg" alt=""></th>
							<td>
								<p>
									<strong>장소명</strong> : 청담집<br> <strong>주소</strong> : 제주
									제주시 월랑로 83<br> <strong>영업 시간</strong> : 평일 및 토요일 오전 07:00
									~ 오후 11:00 <br> 일요일 07:00 ~ 오후 9:00<br> <strong>전화번호</strong>
									: 064-738-7600
								</p> <!-- Trigger/Open The Modal -->
								<button class="modal-button" href="#myModal3">더보기</button> <!-- The Modal -->
								<div id="myModal3" class="modal"> <!-- Modal content -->
								<div class="modal-content"> <div
									class="modal-header">
								<h2>청담집</h2>
								<span class="close">×</span> </div> <div class="modal-body">

								<p>주소: 제주 제주시 월랑로 83</p>
								<iframe
									src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3327.357435059466!2d126.46953267627397!3d33.49207644709989!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x350cfaf912e28f21%3A0x1960ef9161bc0d3b!2z7KCc7KO87Yq567OE7J6Q7LmY64-EIOygnOyjvOyLnCDsm5TrnpHroZwgODM!5e0!3m2!1sko!2skr!4v1715563517121!5m2!1sko!2skr"
									width="600" height="450" style="border: 0;" allowfullscreen=""
									loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe></div>
								<div class="modal-footer">
								<h3>찾아오시는 길:</h3>
								</div> </div> </div>
							</td>
						</tr>
						<tr>
							<th><img src="${ipath}/images/food/food04.jpg" alt=""></th>
							<td>
								<p>
									<strong>장소명</strong> : 남또리횟집<br> <strong>주소</strong> : 제주
									제주시 애월읍 애월해안로 384<br> <strong>영업 시간</strong> : 오전 11:00 ~
									오후 10:30<br> <strong>전화번호</strong> : 064-799-1711
								</p> <!-- Trigger/Open The Modal -->
								<button class="modal-button" href="#myModal4">더보기</button> <!-- The Modal -->
								<div id="myModal4" class="modal"> <!-- Modal content -->
								<div class="modal-content"> <div
									class="modal-header">
								<h2>남또리횟집</h2>
								<span class="close">×</span> </div> <div class="modal-body">
								<p>주소: 제주 제주시 애월읍 애월해안로 384</p>
								<iframe
									src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3328.0997583111593!2d126.34673327627345!3d33.472753448105586!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x350cf41fe751e801%3A0xab63b844bca3a372!2z7KCc7KO87Yq567OE7J6Q7LmY64-EIOygnOyjvOyLnCDslaDsm5TsnY0g7JWg7JuU7ZW07JWI66GcIDM4NA!5e0!3m2!1sko!2skr!4v1715563536385!5m2!1sko!2skr"
									width="600" height="450" style="border: 0;" allowfullscreen=""
									loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe></div>
								<div class="modal-footer">
								<h3>찾아오시는 길:</h3>
								</div> </div> </div>
							</td>
						</tr>
						<tr>
							<th><img src="${ipath}/images/food/food05.jpg" alt=""></th>
							<td>
								<p>
									<strong>장소명</strong> : 하하호호 우도점<br> <strong>주소</strong> :
									제주특별자치도 제주시 우도면 우도해안길 532<br> <strong>영업 시간</strong> : 오전
									9:00 ~ 오후 6:00<br> <strong>전화번호</strong> : 010-2899-1365
								</p> <!-- Trigger/Open The Modal -->
								<button class="modal-button" href="#myModal5">더보기</button> <!-- The Modal -->
								<div id="myModal5" class="modal"> <!-- Modal content -->
								<div class="modal-content"> <div
									class="modal-header">
								<h2>하하호호 우도점</h2>
								<span class="close">×</span> </div> <div class="modal-body">
								<p>주소: 제주특별자치도 제주시 우도면 우도해안길 532</p>
								<iframe
									src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3326.2499203681323!2d126.94610547627494!3d33.52088724559947!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x350d3ffdd5cafd99%3A0x9bbb4c01955acab7!2z7KCc7KO87Yq567OE7J6Q7LmY64-EIOygnOyjvOyLnCDsmrDrj4TrqbQg7Jqw64-E7ZW07JWI6ri4IDUzMg!5e0!3m2!1sko!2skr!4v1715563555001!5m2!1sko!2skr"
									width="600" height="450" style="border: 0;" allowfullscreen=""
									loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe></div>
								<div class="modal-footer">
								<h3>찾아오시는 길:</h3>
								</div> </div> </div>
							</td>
						</tr>
						<tr>
							<th><img src="${ipath}/images/food/food06.jpg" alt=""></th>
							<td>
								<p>
									<strong>가게명</strong> : 춘심이네2호점<br> <strong>주소</strong> :
									제주 제주시 1100로 3114 <br> <strong>영업 시간</strong> : 오전 9:00 ~ 오후 9:00<br>
									<strong>전화번호</strong> : 064-711-4020
								</p> <!-- Trigger/Open The Modal -->
								<button class="modal-button" href="#myModal6">더보기</button> <!-- The Modal -->
								<div id="myModal6" class="modal"> <!-- Modal content -->
								<div class="modal-content"> <div
									class="modal-header">
								<h2>춘심이네2호점</h2>
								<span class="close">×</span> </div> <div class="modal-body">
								<p>주소: 제주 제주시 1100로 3114</p>
								<iframe
									src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3328.419144666201!2d126.48267847627318!3d33.46443664853832!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x350cfbb60028cb6d%3A0xde2346c0c0f23d1b!2z7KCc7KO87Yq567OE7J6Q7LmY64-EIOygnOyjvOyLnCAxMTAw66GcIDMxMTQ!5e0!3m2!1sko!2skr!4v1715564976827!5m2!1sko!2skr"
									width="600" height="450" style="border: 0;" allowfullscreen=""
									loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe></div>
								<div class="modal-footer">
								<h3>찾아오시는 길:</h3>
								</div> </div> </div>
							</td>
						</tr>
						<tr>
							<th><img src="${ipath}/images/food/food07.jpg" alt=""></th>
							<td>
								<p>
									<strong>가게명</strong> : 연북로해물탕<br> <strong>주소</strong> : 제주
									제주시 연북로 221<br> <strong>영업 시간</strong> : 오전 10:00 ~ 오후 10:00<br>
									<strong>전화번호</strong> : 064-742-0110
								</p> <!-- Trigger/Open The Modal -->
								<button class="modal-button" href="#myModal7">더보기</button> <!-- The Modal -->
								<div id="myModal7" class="modal"> <!-- Modal content -->
								<div class="modal-content"> <div
									class="modal-header">
								<h2>연북로해물탕</h2>
								<span class="close">×</span> </div> <div class="modal-body">
								<p>주소: 제주 제주시 연북로 221</p>
								<iframe
									src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3327.7533571617705!2d126.50262497627367!3d33.48177164763632!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x350cfb7475ac5cf5%3A0x619848dd08ba0707!2z7KCc7KO87Yq567OE7J6Q7LmY64-EIOygnOyjvOyLnCDsl7DrtoHroZwgMjIx!5e0!3m2!1sko!2skr!4v1715579329292!5m2!1sko!2skr"
									width="600" height="450" style="border: 0;" allowfullscreen=""
									loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe></div>
								<div class="modal-footer">
								<h3>찾아오시는 길:</h3>
								</div> </div> </div>
							</td>
						</tr>
						<tr>
							<th><img src="${ipath}/images/food/food08.jpg" alt=""></th>
							<td>
								<p>
									<strong>가게명</strong> : 만부정<br> <strong>주소</strong> : 제주
									제주시 사장길 38<br> <strong>영업 시간</strong> : 오전07:30 ~ 오후 9:30<br>
									<strong>전화번호</strong> : 064-743-1119
								</p> <!-- Trigger/Open The Modal -->
								<button class="modal-button" href="#myModal8">더보기</button> <!-- The Modal -->
								<div id="myModal8" class="modal"> <!-- Modal content -->
								<div class="modal-content"> <div
									class="modal-header">
								<h2>만부정</h2>
								<span class="close">×</span> </div> <div class="modal-body">
								<p>주소: 제주 제주시 사장길 38</p>
								<iframe
									src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3327.7182522787625!2d126.49196027627391!3d33.482685447588935!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x350cfb09a27f5739%3A0x779ae6609875acf!2z7KCc7KO87Yq567OE7J6Q7LmY64-EIOygnOyjvOyLnCDsgqzsnqXquLggMzg!5e0!3m2!1sko!2skr!4v1715579355134!5m2!1sko!2skr"
									width="600" height="450" style="border: 0;" allowfullscreen=""
									loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
								<h3>찾아오시는 길:</h3>
								</div> </div> </div>
							</td>
						</tr>
						<tr>
							<th><img src="${ipath}/images/food/food09.jpg" alt=""></th>
							<td>
								<p>
									<strong>가게명</strong> : 문동일셰프 녹차고을<br> <strong>주소</strong>
									: 제주 제주시 애월읍 하귀동남4길 13-1<br> <strong>영업 시간</strong> : 오전 10:30 ~ 오후
									9:00<br> <strong>전화번호</strong> : 064-712-1780
								</p> <!-- Trigger/Open The Modal -->
								<button class="modal-button" href="#myModal9">더보기</button> <!-- The Modal -->
								<div id="myModal9" class="modal"> <!-- Modal content -->
								<div class="modal-content"> <div
									class="modal-header">
								<h2>문동일셰프 녹차고을</h2>
								<span class="close">×</span> </div> <div class="modal-body">
								<p>주소: 제주 제주시 애월읍 하귀동남4길 13-1</p>
								<iframe
									src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3327.750264677619!2d126.41049517627381!3d33.48185214763227!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x350cf0c70964c10d%3A0xe74a3091c2e75d4a!2z7KCc7KO87Yq567OE7J6Q7LmY64-EIOygnOyjvOyLnCDslaDsm5TsnY0g7ZWY6reA64-Z64KoNOq4uCAxMy0x!5e0!3m2!1sko!2skr!4v1715579413399!5m2!1sko!2skr"
									width="600" height="450" style="border: 0;" allowfullscreen=""
									loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe></div>
								<div class="modal-footer">
								<h3>찾아오시는 길:</h3>
								</div> </div> </div>
							</td>
						</tr>
						<tr>
							<th><img src="${ipath}/images/food/food10.jpg" alt=""></th>
							<td>
								<p>
									<strong>가게명</strong> : 기장횟집<br> <strong>주소</strong> : 제주
									서귀포시 안덕면 화순중앙로 103<br> <strong>영업 시간</strong> : 오후 12:00 ~ 오후 11:00<br>
									<strong>전화번호</strong> : 064-711-4020
								</p> <!-- Trigger/Open The Modal -->
								<button class="modal-button" href="#myModal10">더보기</button> <!-- The Modal -->
								<div id="myModal10" class="modal"> <!-- Modal content -->
								<div class="modal-content"> <div
									class="modal-header">
								<h2>기장횟집</h2>
								<span class="close">×</span> </div> <div class="modal-body">
								<p>주소: 제주 서귀포시 안덕면 화순중앙로 103</p>
								<iframe
									src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3336.9071904435123!2d126.33354167626646!3d33.24273476003938!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x350c43427e7c819d%3A0xfd933943e52dc572!2z7KCc7KO87Yq567OE7J6Q7LmY64-EIOyEnOq3gO2PrOyLnCDslYjrjZXrqbQg7ZmU7Iic7KSR7JWZ66GcIDEwMw!5e0!3m2!1sko!2skr!4v1715579457342!5m2!1sko!2skr"
									width="600" height="450" style="border: 0;" allowfullscreen=""
									loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe></div>
								<div class="modal-footer">
								<h3>찾아오시는 길:</h3>
								</div> </div> </div>
							</td>
						</tr>
						<tr>
							<th><img src="${ipath}/images/food/food11.jpg" alt=""></th>
							<td>
								<p>
									<strong>가게명</strong> : 자매국수<br> <strong>주소</strong> : 제주
									제주시 삼성로 67 <br><strong>영업 시간</strong> : 오전 9:00 ~ 오후 9:00<br>
									<strong>전화번호</strong> : 064-746-2222
								</p> <!-- Trigger/Open The Modal -->
								<button class="modal-button" href="#myModal11">더보기</button> <!-- The Modal -->
								<div id="myModal11" class="modal"> <!-- Modal content -->
								<div class="modal-content"> <div
									class="modal-header">
								<h2>자매국수</h2>
								<span class="close">×</span> </div> <div class="modal-body">
								<p>주소: 제주 제주시 삼성로 67</p>
								<iframe
									src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3326.739162182856!2d126.52980657627447!3d33.508162846262266!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x350ce3529354a283%3A0x8c557a8b945f313f!2z7KCc7KO87Yq567OE7J6Q7LmY64-EIOygnOyjvOyLnCDsgrzshLHroZwgNjc!5e0!3m2!1sko!2skr!4v1715581765896!5m2!1sko!2skr"
									width="600" height="450" style="border: 0;" allowfullscreen=""
									loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe></div>
								<div class="modal-footer">
								<h3>찾아오시는 길:</h3>
								</div> </div> </div>
							</td>
						</tr>
						<tr>
							<th><img src="${ipath}/images/food/food12.jpg" alt=""></th>
							<td>
								<p>
									<strong>가게명</strong> : 명진전복<br> <strong>주소</strong> :
									제주특별자치도 제주시 구좌읍 해맞이해안로 1282<br> <strong>영업 시간</strong> : 오전 9:30 ~
									오후 9:00<br> <strong>전화번호</strong> : 064-782-9944
								</p> <!-- Trigger/Open The Modal -->
								<button class="modal-button" href="#myModal12">더보기</button> <!-- The Modal -->
								<div id="myModal12" class="modal"> <!-- Modal content -->
								<div class="modal-content"> <div
									class="modal-header">
								<h2>명진전복</h2>
								<span class="close">×</span> </div> <div class="modal-body">
								<p>주소: 제주특별자치도 제주시 구좌읍 해맞이해안로 1282</p>
								<iframe
									src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d106435.91342070377!2d126.61256756477638!3d33.52420589201815!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x350d166b233eb787%3A0xf3629a7a166ec442!2z66qF7KeE7KCE67O1!5e0!3m2!1sko!2skr!4v1715581794993!5m2!1sko!2skr"
									width="600" height="450" style="border: 0;" allowfullscreen=""
									loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe></div>
								<div class="modal-footer">
								<h3>찾아오시는 길:</h3>
								</div> </div> </div>
							</td>
						</tr>
						<tr>
							<th><img src="${ipath}/images/food/food13.jpg" alt=""></th>
							<td>
								<p>
									<strong>가게명</strong> : 흑돈가<br> <strong>주소</strong> :
									제주특별자치도 제주시 노형동 한라대학로 11<br> <strong>영업 시간</strong> : 오전 11:00 ~ 오후
									10:00<br> <strong>전화번호</strong> : 064-747-0088
								</p> <!-- Trigger/Open The Modal -->
								<button class="modal-button" href="#myModal13">더보기</button> <!-- The Modal -->
								<div id="myModal13" class="modal"> <!-- Modal content -->
								<div class="modal-content"> <div
									class="modal-header">
								<h2>흑돈가</h2>
								<span class="close">×</span> </div> <div class="modal-body">
								<p>주소: 제주특별자치도 제주시 노형동 한라대학로 11</p>
								<iframe
									src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3327.820345286699!2d126.47088057627364!3d33.480027847727015!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x350cfa519ad1cdbd%3A0xdabe60f0ef6b563e!2z7KCc7KO87Yq567OE7J6Q7LmY64-EIOygnOyjvOyLnCDtlZzrnbzrjIDtlZnroZwgMTE!5e0!3m2!1sko!2skr!4v1715581818450!5m2!1sko!2skr"
									width="600" height="450" style="border: 0;" allowfullscreen=""
									loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe></div>
								<div class="modal-footer">
								<h3>찾아오시는 길:</h3>
								</div> </div> </div>
							</td>
						</tr>
						<tr>
							<th><img src="${ipath}/images/food/food14.jpg" alt=""></th>
							<td>
								<p>
									<strong>가게명</strong> : 협재 해녀의집<br> <strong>주소</strong> :
									제주특별자치도 제주시 한림읍 협재리 1459-2<br> <strong>영업 시간</strong> : 오전 9:30 ~
									오후 9:00<br> <strong>전화번호</strong> : 064-796-7773
								</p> <!-- Trigger/Open The Modal -->
								<button class="modal-button" href="#myModal14">더보기</button> <!-- The Modal -->
								<div id="myModal14" class="modal"> <!-- Modal content -->
								<div class="modal-content"> <div
									class="modal-header">
								<h2>협재 해녀의집</h2>
								<span class="close">×</span> </div> <div class="modal-body">
								<p>주소: 제주특별자치도 제주시 한림읍 협재리 1459-2</p>
								<iframe
									src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3330.9340267022585!2d126.24135047627118!3d33.39888535194577!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x350c6092f50d237b%3A0x35d5579ce084cc8c!2z7KCc7KO87Yq567OE7J6Q7LmY64-EIOygnOyjvOyLnCDtlZzrprzsnY0g7ZiR7J6s66asIDE0NTktMg!5e0!3m2!1sko!2skr!4v1715581835185!5m2!1sko!2skr"
									width="600" height="450" style="border: 0;" allowfullscreen=""
									loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe></div>
								<div class="modal-footer">
								<h3>찾아오시는 길:</h3>
								</div> </div> </div>
							</td>
						</tr>
						<tr>
							<th><img src="${ipath}/images/food/food15.jpg" alt=""></th>
							<td>
								<p>
									<strong>가게명</strong> : 한성오메기떡<br> <strong>주소</strong> :
									제주특별자치도 제주시 일도1동 동문로4길 9-2<br> <strong>영업 시간</strong> : 오전 11:00 ~
									오후 10:00<br> <strong>전화번호</strong> : 064-721-5582
								</p> <!-- Trigger/Open The Modal -->
								<button class="modal-button" href="#myModal15">더보기</button> <!-- The Modal -->
								<div id="myModal15" class="modal"> <!-- Modal content -->
								<div class="modal-content"> <div
									class="modal-header">
								<h2>한성오메기떡</h2>
								<span class="close">×</span> </div> <div class="modal-body">
								<p>주소: 제주특별자치도 제주시 일도1동 동문로4길 9-2</p>
								<iframe
									src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3326.582884398272!2d126.52529497627461!3d33.51222784605065!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x350ce3540ee63d75%3A0xf5a72b1205ed9ea4!2z7KCc7KO87Yq567OE7J6Q7LmY64-EIOygnOyjvOyLnCDrj5nrrLjroZw06ri4IDktMg!5e0!3m2!1sko!2skr!4v1715581848449!5m2!1sko!2skr"
									width="600" height="450" style="border: 0;" allowfullscreen=""
									loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe></div>
								<div class="modal-footer">
								<h3>찾아오시는 길:</h3>
								</div> </div> </div>
							</td>
						</tr>
						<tr>
							<th><img src="${ipath}/images/food/food16.jpg" alt=""></th>
							<td>
								<p>
									<strong>가게명</strong> : 산방식당 본점<br> <strong>주소</strong> :
									제주특별자치도 서귀포시 대정읍 하모이삼로 62<br> <strong>영업 시간</strong> : 오전 11:00 ~
									오후 6:00<br> <strong>전화번호</strong> : 064-794-2165
								</p> <!-- Trigger/Open The Modal -->
								<button class="modal-button" href="#myModal16">더보기</button> <!-- The Modal -->
								<div id="myModal16" class="modal"> <!-- Modal content -->
								<div class="modal-content"> <div
									class="modal-header">
								<h2>산방식당 본점</h2>
								<span class="close">×</span> </div> <div class="modal-body">
								<p>주소: 제주특별자치도 서귀포시 대정읍 하모이삼로 62</p>
								<iframe
									src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3337.6426158399995!2d126.25172317626588!3d33.22346436103589!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x350c69e506042a23%3A0x987ae7e6d0b35a93!2z7KCc7KO87Yq567OE7J6Q7LmY64-EIOyEnOq3gO2PrOyLnCDrjIDsoJXsnY0g7ZWY66qo7J207IK866GcIDYy!5e0!3m2!1sko!2skr!4v1715581861377!5m2!1sko!2skr"
									width="600" height="450" style="border: 0;" allowfullscreen=""
									loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe></div>
								<div class="modal-footer">
								<h3>찾아오시는 길:</h3>
								</div> </div> </div>
							</td>
						</tr>
						<tr>
							<th><img src="${ipath}/images/food/food17.jpg" alt=""></th>
							<td>
								<p>
									<strong>가게명</strong> : 남문식당<br> <strong>주소</strong> :
									제주특별자치도 서귀포시 표선면 성읍리 987-10 <br><strong>영업 시간</strong> : 오전 9:00 ~
									오후 9:00<br> <strong>전화번호</strong> : 064-787-2432
								</p> <!-- Trigger/Open The Modal -->
								<button class="modal-button" href="#myModal17">더보기</button> <!-- The Modal -->
								<div id="myModal17" class="modal"> <!-- Modal content -->
								<div class="modal-content"> <div
									class="modal-header">
								<h2>남문식당</h2>
								<span class="close">×</span> </div> <div class="modal-body">
								<p>주소: 제주특별자치도 서귀포시 표선면 성읍리 987-10</p>
								<iframe
									src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3331.489659052921!2d126.79978587627078!3d33.38438725269859!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x350d0f98173934bb%3A0x40461740550363b9!2z7KCc7KO87Yq567OE7J6Q7LmY64-EIOyEnOq3gO2PrOyLnCDtkZzshKDrqbQg7ISx7J2N66asIDk4Ny0xMA!5e0!3m2!1sko!2skr!4v1715581874872!5m2!1sko!2skr"
									width="600" height="450" style="border: 0;" allowfullscreen=""
									loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe></div>
								<div class="modal-footer">
								<h3>찾아오시는 길:</h3>
								</div> </div> </div>
							</td>
						</tr>
						<tr>
							<th><img src="${ipath}/images/food/food18.jpg" alt=""></th>
							<td>
								<p>
									<strong>가게명</strong> : 부지깽이<br> <strong>주소</strong> :
									제주특별자치도 제주시 이도이동 1178-6<br> <strong>영업 시간</strong> : 오전 11:30 ~ 오후
									8:00<br> <strong>전화번호</strong> : 064-723-3522
								</p> <!-- Trigger/Open The Modal -->
								<button class="modal-button" href="#myModal18">더보기</button> <!-- The Modal -->
								<div id="myModal18" class="modal"> <!-- Modal content -->
								<div class="modal-content"> <div
									class="modal-header">
								<h2>부지깽이</h2>
								<span class="close">×</span> </div> <div class="modal-body">
								<p>주소: 제주특별자치도 제주시 이도이동 1178-6</p>
								<iframe
									src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3327.0798819502174!2d126.52904847627431!3d33.499298746724!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x350cfcafae749c89%3A0x4b48e25a61ccc8ed!2z7KCc7KO87Yq567OE7J6Q7LmY64-EIOygnOyjvOyLnCDsnbTrj4TsnbTrj5kgMTE3OC02!5e0!3m2!1sko!2skr!4v1715581888097!5m2!1sko!2skr"
									width="600" height="450" style="border: 0;" allowfullscreen=""
									loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe></div>
								<div class="modal-footer">
								<h3>찾아오시는 길:</h3>
								</div> </div> </div>
							</td>
						</tr>
						<tr>
							<th><img src="${ipath}/images/food/food19.jpg" alt=""></th>
							<td>
								<p>
									<strong>가게명</strong> : 앞뱅디식당<br> <strong>주소</strong> :
									제주특별자치도 제주시 연동 선덕로 32<br> <strong>영업 시간</strong> : 오전 9:00
									~ 오후 9:00<br> <strong>전화번호</strong> : 064-744-7942
								</p> <!-- Trigger/Open The Modal -->
								<button class="modal-button" href="#myModal19">더보기</button> <!-- The Modal -->
								<div id="myModal19" class="modal"> <!-- Modal content -->
								<div class="modal-content"> <div
									class="modal-header">
								<h2>앞뱅디식당</h2>
								<span class="close">×</span> </div> <div class="modal-body">
								<p>주소: 제주특별자치도 제주시 연동 선덕로 32 </p>
								<iframe
									src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3327.6141581363204!2d126.4973672762738!3d33.48539494744788!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x350cfb0cc2787e97%3A0x6a73db91e67ece5a!2z7KCc7KO87Yq567OE7J6Q7LmY64-EIOygnOyjvOyLnCDshKDrjZXroZwgMzI!5e0!3m2!1sko!2skr!4v1715581902553!5m2!1sko!2skr"
									width="600" height="450" style="border: 0;" allowfullscreen=""
									loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe></div>
								<div class="modal-footer">
								<h3>찾아오시는 길:</h3>
								</div> </div> </div>
							</td>
						</tr>
						<tr>
							<th><img src="${ipath}/images/food/food20.jpg" alt=""></th>
							<td>
								<p>
									<strong>가게명</strong> : 네거리식당<br> <strong>주소</strong> :
									제주특별자치도 서귀포시 특별자치도, 서문로29번길 20<br> <strong>영업 시간</strong> : 오전 7:00
									~ 오후 9:40<br> <strong>전화번호</strong> : 064-762-5513
								</p> <!-- Trigger/Open The Modal -->
								<button class="modal-button" href="#myModal20">더보기</button> <!-- The Modal -->
								<div id="myModal20" class="modal"> <!-- Modal content -->
								<div class="modal-content"> <div
									class="modal-header">
								<h2>네거리식당</h2>
								<span class="close">×</span> </div> <div class="modal-body">
								<p>주소: 제주특별자치도 서귀포시 특별자치도, 서문로29번길 20</p>
								<iframe
									src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3336.6857722100003!2d126.55674867626651!3d33.24853465973918!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x350c53996a92fd3d%3A0x4bc312c6807ccd90!2z7KCc7KO87Yq567OE7J6Q7LmY64-EIOyEnOq3gO2PrOyLnCDshJzrrLjroZwyOeuyiOq4uCAyMA!5e0!3m2!1sko!2skr!4v1715581916072!5m2!1sko!2skr"
									width="600" height="450" style="border: 0;" allowfullscreen=""
									loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe></div>
								<div class="modal-footer">
								<h3>찾아오시는 길:</h3>
								</div> </div> </div>
							</td>
						</tr>
					</tbody>
				</table>
			</div>
			<script>
				// Get the button that opens the modal
				var btn = document.querySelectorAll("button.modal-button");

				// All page modals
				var modals = document.querySelectorAll('.modal');

				// Get the <span> element that closes the modal
				var spans = document.getElementsByClassName("close");

				// When the user clicks the button, open the modal
				for (var i = 0; i < btn.length; i++) {
					btn[i].onclick = function(e) {
						e.preventDefault();
						modal = document.querySelector(e.target
								.getAttribute("href"));
						modal.style.display = "block";
					}
				}

				// When the user clicks on <span> (x), close the modal
				for (var i = 0; i < spans.length; i++) {
					spans[i].onclick = function() {
						for ( var index in modals) {
							if (typeof modals[index].style !== 'undefined')
								modals[index].style.display = "none";
						}
					}
				}

				// When the user clicks anywhere outside of the modal, close it
				window.onclick = function(event) {
					if (event.target.classList.contains('modal')) {
						for ( var index in modals) {
							if (typeof modals[index].style !== 'undefined')
								modals[index].style.display = "none";
						}
					}
				}
			</script>
		</section>
	</main>

	<footer id="ft" class="clr-fix">
		<div class="ft_wrap">
			<nav id="fnb">
				<ul>
					<li><a href="${hpath }/member/terms.jsp">회원약관</a></li>
					<li><a href="${hpath }/member/policy.jsp">개인정보처리방침</a></li>
				</ul>
			</nav>
			<div id="loc">
				<select name="sel" id="sel" onchange="locate()">
					<option value="">해당 관공서</option>
					<option
						value="https://jejumaeul.or.kr/list4/?q=YToxOntzOjEyOiJrZXl3b3JkX3R5cGUiO3M6MzoiYWxsIjt9&bmode=view&idx=9281354&t=board">
						부평주민센터</option>
					<option
						value="https://www.jjpolice.go.kr/dongbu/info/police/police8">부평파출소</option>
					<option value="https://ijto.or.kr/korean/">부평관광공사</option>
				</select>
			</div>
			<script>
				function locate() {
					var sel = document.getElementById("sel");
					if (sel.value != "") {
						window.open(sel.value);
					}
				}
			</script>
			<br> <br>
			<div id="copyright">
				<p class="addr">[21354] 인천광역시 부평구 부평대로 168 (대표전화) ☎032-504-2114
				</p>
				<p class="copy">COPYRIGHT(C) INCHEON BUPYEONG INTRO. ALL RIGHTS
					RESERVED.</p>
			</div>
		</div>
	</footer>

</body>

</html>